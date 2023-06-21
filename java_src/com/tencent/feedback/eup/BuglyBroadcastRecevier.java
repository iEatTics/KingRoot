package com.tencent.feedback.eup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.tencent.feedback.common.C4068a;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.proguard.C4119a;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes.dex */
public class BuglyBroadcastRecevier extends BroadcastReceiver {
    public static final String ACTION_ENCRY_KEY = "feedback";
    public static final int ACTION_ENCRY_TYPE = 1;
    public static final String ACTION_PROCESS_CRASHED = "com.tencent.feedback.A02";
    public static final String ACTION_PROCESS_LAUNCHED = "com.tencent.feedback.A01";
    public static final String BUNDLE_APPINFO = "com.tencent.feedback.B01";
    public static final String BUNDLE_CRASHINFO = "com.tencent.feedback.B02";
    public static final String PARAM_AVAIL_RAM = "com.tencent.feedback.P07";
    public static final String PARAM_AVAIL_ROM = "com.tencent.feedback.P13";
    public static final String PARAM_AVAIL_SDCARD = "com.tencent.feedback.P06";
    public static final String PARAM_CRASH_TYPE = "com.tencent.feedback.P05";
    public static final String PARAM_ENCRY_PKG_NAME = "com.tencent.feedback.P12";
    public static final String PARAM_EXP_MESSAGE = "com.tencent.feedback.P09";
    public static final String PARAM_EXP_STACK = "com.tencent.feedback.P010";
    public static final String PARAM_EXP_TYPE_NAME = "com.tencent.feedback.P08";
    public static final String PARAM_IS_FRONT_PROCESS = "com.tencent.feedback.P03";
    public static final String PARAM_PKG_NAME = "com.tencent.feedback.P01";
    public static final String PARAM_PROCESS_NAME = "com.tencent.feedback.P02";
    public static final String PARAM_SERVER_KEY_VALUE = "com.tencent.feedback.P17";
    public static final String PARAM_SERVER_SCENE_TAG = "com.tencent.feedback.P15";
    public static final String PARAM_SURVIVAL_TIME = "com.tencent.feedback.P011";
    public static final String PARAM_THREAD_NAME = "com.tencent.feedback.P04";
    public static final String PARAM_USER_KEY_VALUE = "com.tencent.feedback.P16";
    public static final String PARAM_USER_SCENE_TAG = "com.tencent.feedback.P14";
    public static final long UPLOADLIMITED = 60000;
    private static BuglyBroadcastRecevier instance = null;
    private String lastAPN;
    private Context mContext;
    private IntentFilter mFilter;
    private final ProcessMoniterHandler monierHandler;

    public static synchronized BuglyBroadcastRecevier getInstance() {
        BuglyBroadcastRecevier buglyBroadcastRecevier;
        synchronized (BuglyBroadcastRecevier.class) {
            if (instance == null) {
                instance = new BuglyBroadcastRecevier();
            }
            buglyBroadcastRecevier = instance;
        }
        return buglyBroadcastRecevier;
    }

    public BuglyBroadcastRecevier() {
        this.mFilter = new IntentFilter();
        this.monierHandler = null;
    }

    public BuglyBroadcastRecevier(ProcessMoniterHandler processMoniterHandler) {
        this.mFilter = new IntentFilter();
        this.monierHandler = processMoniterHandler;
    }

    protected void finalize() {
        super.finalize();
        if (this.mContext != null) {
            this.mContext.unregisterReceiver(this);
        }
    }

    public synchronized void addFilter(String str) {
        if (!this.mFilter.hasAction(str)) {
            this.mFilter.addAction(str);
        }
        C4073e.m1015b("add action %s", str);
    }

    public synchronized void regist(Context context) {
        C4073e.m1017a("regis BC", new Object[0]);
        context.registerReceiver(this, this.mFilter);
        this.mContext = context;
    }

    public synchronized void unregist(Context context) {
        C4073e.m1017a("unregis BC", new Object[0]);
        context.unregisterReceiver(this);
        this.mContext = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (!processConnectedBroadCast(context, intent)) {
            CrashStrategyBean crashRuntimeStrategy = CrashReport.getCrashRuntimeStrategy();
            if (crashRuntimeStrategy == null) {
                C4073e.m1012d("magic! no crash stategy,no notify return ?", new Object[0]);
            } else if (!crashRuntimeStrategy.isReceiveBroadcast()) {
                C4073e.m1017a("close proc receiver!", new Object[0]);
            } else {
                if (processOtherProcessLaunched(context, intent) || processOtherProcessCrashed(context, intent)) {
                }
            }
        }
    }

    protected final synchronized boolean processConnectedBroadCast(Context context, Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void brocastProcessLaunch(Context context) {
        if (context != null) {
            try {
                CrashStrategyBean crashRuntimeStrategy = CrashReport.getCrashRuntimeStrategy();
                if (crashRuntimeStrategy == null) {
                    C4073e.m1012d("magic! no crash stategy,no notify return ?", new Object[0]);
                } else if (!crashRuntimeStrategy.isBroadcast()) {
                    C4073e.m1017a("close brocast!", new Object[0]);
                } else {
                    C4073e.m1017a("notify launch !", new Object[0]);
                    String m1126b = C4068a.m1126b(context);
                    byte[] m739a = C4119a.m739a(m1126b.getBytes("utf8"), 1, ACTION_ENCRY_KEY);
                    Intent intent = new Intent(ACTION_PROCESS_LAUNCHED);
                    intent.putExtra(PARAM_ENCRY_PKG_NAME, m739a);
                    Bundle bundle = new Bundle();
                    bundle.putString(PARAM_PKG_NAME, m1126b);
                    bundle.putString(PARAM_PROCESS_NAME, C4068a.m1129a(Process.myPid()));
                    bundle.putBoolean(PARAM_IS_FRONT_PROCESS, C4068a.m1119g(context));
                    intent.putExtra(BUNDLE_APPINFO, bundle);
                    context.sendBroadcast(intent);
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    Log.w("eup", "something error " + th.getClass().getName());
                }
            }
        }
    }

    public static void brocastCrash(Context context, C4090e c4090e) {
        if (context != null && c4090e != null) {
            try {
                CrashStrategyBean crashRuntimeStrategy = CrashReport.getCrashRuntimeStrategy();
                if (crashRuntimeStrategy == null) {
                    C4073e.m1012d("magic! no crash stategy,no notify return ?", new Object[0]);
                } else if (!crashRuntimeStrategy.isBroadcast()) {
                    C4073e.m1017a("close brocast!", new Object[0]);
                } else {
                    C4073e.m1017a("notify crash !", new Object[0]);
                    String m1126b = C4068a.m1126b(context);
                    byte[] m739a = C4119a.m739a(m1126b.getBytes("utf8"), 1, ACTION_ENCRY_KEY);
                    Intent intent = new Intent(ACTION_PROCESS_CRASHED);
                    intent.putExtra(PARAM_ENCRY_PKG_NAME, m739a);
                    Bundle bundle = new Bundle();
                    bundle.putString(PARAM_PKG_NAME, m1126b);
                    bundle.putString(PARAM_PROCESS_NAME, c4090e.m828r());
                    bundle.putString(PARAM_THREAD_NAME, c4090e.m826s());
                    bundle.putByte(PARAM_CRASH_TYPE, c4090e.m895S());
                    bundle.putLong(PARAM_AVAIL_ROM, c4090e.m904J());
                    bundle.putLong(PARAM_AVAIL_SDCARD, c4090e.m903K());
                    bundle.putLong(PARAM_AVAIL_RAM, c4090e.m905I());
                    bundle.putString(PARAM_EXP_TYPE_NAME, c4090e.m861e());
                    bundle.putString(PARAM_EXP_MESSAGE, c4090e.m858f());
                    bundle.putString(PARAM_EXP_STACK, c4090e.m852h());
                    bundle.putBoolean(PARAM_IS_FRONT_PROCESS, C4068a.m1119g(context));
                    bundle.putLong(PARAM_SURVIVAL_TIME, c4090e.m894T());
                    bundle.putInt(PARAM_USER_SCENE_TAG, c4090e.m893U());
                    bundle.putInt(PARAM_SERVER_SCENE_TAG, c4090e.m892V());
                    bundle.putBundle(PARAM_USER_KEY_VALUE, getBundleFromMap(c4090e.m891W()));
                    bundle.putBundle(PARAM_SERVER_KEY_VALUE, getBundleFromMap(c4090e.m890X()));
                    intent.putExtra(BUNDLE_CRASHINFO, bundle);
                    context.sendBroadcast(intent);
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    Log.w("eup", "something error " + th.getClass().getName());
                }
            }
        }
    }

    private static Bundle getBundleFromMap(Map<String, String> map) {
        Bundle bundle = new Bundle();
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
        }
        return bundle;
    }

    protected final synchronized boolean processOtherProcessLaunched(Context context, Intent intent) {
        boolean z = true;
        synchronized (this) {
            if (context != null && intent != null) {
                if (intent.getAction().equals(ACTION_PROCESS_LAUNCHED)) {
                    if (this.monierHandler == null) {
                        C4073e.m1017a("no moniter handler", new Object[0]);
                    } else {
                        try {
                            String packageName = context.getPackageName();
                            String m1101H = C4071c.m1088a(context).m1101H();
                            byte[] byteArrayExtra = intent.getByteArrayExtra(PARAM_ENCRY_PKG_NAME);
                            Bundle bundleExtra = intent.getBundleExtra(BUNDLE_APPINFO);
                            if (byteArrayExtra == null || bundleExtra == null) {
                                C4073e.m1013c("args fail other proc launch %s %s", new StringBuilder().append(byteArrayExtra).toString(), new StringBuilder().append(bundleExtra).toString());
                            } else {
                                String str = new String(C4119a.m728b(byteArrayExtra, 1, ACTION_ENCRY_KEY), "utf8");
                                if (!str.equals(bundleExtra.getString(PARAM_PKG_NAME))) {
                                    C4073e.m1013c("args fail other proc launch inner %s %s", str, bundleExtra.getString(PARAM_PKG_NAME));
                                } else if ((str + bundleExtra.getString(PARAM_PROCESS_NAME)).equals(packageName + m1101H)) {
                                    C4073e.m1017a("current proc not need to notify", new Object[0]);
                                } else {
                                    C4073e.m1017a("notify other app lau %s", str);
                                    this.monierHandler.onOtherAppProcessLaunched(str, bundleExtra.getString(PARAM_PROCESS_NAME), bundleExtra.getBoolean(PARAM_IS_FRONT_PROCESS), bundleExtra);
                                    C4073e.m1017a("notify other app lau %s end", str);
                                }
                            }
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    public final synchronized boolean processOtherProcessCrashed(Context context, Intent intent) {
        boolean z;
        String packageName;
        String m1101H;
        byte[] byteArrayExtra;
        Bundle bundleExtra;
        if (context != null && intent != null) {
            if (intent.getAction().equals(ACTION_PROCESS_CRASHED)) {
                if (this.monierHandler == null) {
                    C4073e.m1017a("no moniter handler", new Object[0]);
                    z = true;
                } else {
                    try {
                        packageName = context.getPackageName();
                        m1101H = C4071c.m1088a(context).m1101H();
                        byteArrayExtra = intent.getByteArrayExtra(PARAM_ENCRY_PKG_NAME);
                        bundleExtra = intent.getBundleExtra(BUNDLE_CRASHINFO);
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                    if (byteArrayExtra == null || bundleExtra == null) {
                        C4073e.m1013c("args fail other proc cra %s %s", new StringBuilder().append(byteArrayExtra).toString(), new StringBuilder().append(bundleExtra).toString());
                        z = true;
                    } else {
                        String str = new String(C4119a.m728b(byteArrayExtra, 1, ACTION_ENCRY_KEY), "utf8");
                        if (!str.equals(bundleExtra.getString(PARAM_PKG_NAME))) {
                            C4073e.m1013c("args fail other proc cra inner %s %s", str, bundleExtra.getString(PARAM_PKG_NAME));
                            z = true;
                        } else if ((str + bundleExtra.getString(PARAM_PROCESS_NAME)).equals(packageName + m1101H)) {
                            C4073e.m1017a("current proc not need to notify", new Object[0]);
                            z = true;
                        } else {
                            C4073e.m1017a("notify other app cra %s", str);
                            this.monierHandler.onOtherAppProcessCrash(str, bundleExtra.getString(PARAM_PROCESS_NAME), bundleExtra.getString(PARAM_THREAD_NAME), bundleExtra.getByte(PARAM_CRASH_TYPE), bundleExtra.getLong(PARAM_AVAIL_ROM), bundleExtra.getLong(PARAM_AVAIL_SDCARD), bundleExtra.getLong(PARAM_AVAIL_RAM), bundleExtra.getString(PARAM_EXP_TYPE_NAME), bundleExtra.getString(PARAM_EXP_MESSAGE), bundleExtra.getString(PARAM_EXP_STACK), bundleExtra.getBoolean(PARAM_IS_FRONT_PROCESS), bundleExtra.getLong(PARAM_SURVIVAL_TIME), bundleExtra);
                            C4073e.m1017a("notify other app cra %s end", str);
                            z = true;
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }
}
