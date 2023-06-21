package com.kingroot.loader.host;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.bkd;
import com.kingroot.kinguser.bke;
import com.kingroot.kinguser.bko;
import com.kingroot.kinguser.bkq;
import com.kingroot.kinguser.bkv;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.AbsKlApplication;
import com.kingroot.loader.sdk.KlFragment;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class KlNotifyActivity extends Activity {

    /* renamed from: a */
    private static final String f4118a = KlNotifyActivity.class.getName();
    private static final C3992a byU = new C3992a();

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            bkq.m6545i(f4118a, "onCreate enter");
            byU.m1220o(intent);
            byU.m6519ny();
        }
        finish();
    }

    /* renamed from: a */
    public static Intent m1222a(int i, @NonNull Intent intent, int i2) {
        Context aeG = bkd.aeG();
        Intent intent2 = new Intent(intent);
        intent2.setClass(aeG, KlNotifyActivity.class);
        ComponentName component = intent.getComponent();
        if (!"android.intent.action.MAIN".equals(intent.getAction())) {
            if (component != null && !TextUtils.isEmpty(component.getClassName())) {
                intent2.putExtra(KlConst.KlBundleKey.FRAGMENT_NAME, component.getClassName());
            } else {
                return null;
            }
        }
        intent2.putExtra(KlConst.KlBundleKey.PLUGIN_ID, i);
        intent2.putExtra("com.kingroot.loader.fragment_start_flag", i2);
        intent2.putExtra(KlConst.KlBundleKey.ARGV, intent.getExtras());
        return intent2;
    }

    /* renamed from: b */
    public static boolean m1221b(int i, @NonNull Intent intent, int i2) {
        Intent m1222a = m1222a(i, intent, i2);
        if (m1222a == null) {
            return false;
        }
        try {
            Context aeG = bkd.aeG();
            m1222a.setClass(aeG, KlNotifyActivity.class);
            m1222a.setFlags(268435456);
            aeG.startActivity(m1222a);
            return true;
        } catch (Exception e) {
            bkq.m6550d(e);
            return false;
        }
    }

    /* renamed from: com.kingroot.loader.host.KlNotifyActivity$a */
    /* loaded from: classes.dex */
    static class C3992a extends bkv {
        private LinkedBlockingQueue<Intent> byV;

        private C3992a() {
            this.byV = new LinkedBlockingQueue<>();
        }

        @Override // com.kingroot.kinguser.bkv, java.lang.Runnable
        public void run() {
            Intent take;
            AbsKlApplication absKlApplication;
            String str;
            while (true) {
                try {
                    take = this.byV.take();
                } catch (Throwable th) {
                    bkq.m6550d(th);
                }
                if (take != null) {
                    bkq.m6545i(KlNotifyActivity.f4118a, "Process intent");
                    int intExtra = take.getIntExtra(KlConst.KlBundleKey.PLUGIN_ID, -1);
                    if (intExtra == -1) {
                        bkq.m6544w(KlNotifyActivity.f4118a, "Must specify plugin id!");
                    } else {
                        bkq.m6545i(KlNotifyActivity.f4118a, "Plugin id = " + intExtra);
                        int intExtra2 = take.getIntExtra("com.kingroot.loader.fragment_start_flag", 0);
                        bkq.m6545i(KlNotifyActivity.f4118a, "Flag = " + intExtra);
                        IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
                        AbsKlApplication runningPluginApplication = iKlApplicationManager.getRunningPluginApplication(intExtra);
                        if (runningPluginApplication != null) {
                            absKlApplication = runningPluginApplication;
                        } else if (!iKlApplicationManager.launchPlugin(intExtra)) {
                            bkq.m6544w(KlNotifyActivity.f4118a, "Try launch plugin fail!");
                        } else {
                            AbsKlApplication runningPluginApplication2 = iKlApplicationManager.getRunningPluginApplication(intExtra);
                            if (runningPluginApplication2 != null) {
                                absKlApplication = runningPluginApplication2;
                            }
                        }
                        if ("android.intent.action.MAIN".equals(take.getAction())) {
                            Class<? extends KlFragment> mainKlFragmentClass = absKlApplication.getMainKlFragmentClass();
                            if (mainKlFragmentClass == null) {
                                bkq.m6544w(KlNotifyActivity.f4118a, "No main fragment!");
                            } else {
                                String name = mainKlFragmentClass.getName();
                                take.putExtra(KlConst.KlBundleKey.FRAGMENT_NAME, name);
                                bkq.m6545i(KlNotifyActivity.f4118a, "Fragment class = " + mainKlFragmentClass.getName());
                                str = name;
                            }
                        } else {
                            String stringExtra = take.getStringExtra(KlConst.KlBundleKey.FRAGMENT_NAME);
                            if (TextUtils.isEmpty(stringExtra)) {
                                bkq.m6544w(KlNotifyActivity.f4118a, " Must specify fragment entry!");
                            } else {
                                bkq.m6545i(KlNotifyActivity.f4118a, "Fragment class = " + stringExtra);
                                str = stringExtra;
                            }
                        }
                        Context context = null;
                        if (bko.m6559B(intExtra2, 1)) {
                            context = bkd.m6572vt();
                        }
                        if (context == null) {
                            bkq.m6545i(KlNotifyActivity.f4118a, "use application context and add FLAG_ACTIVITY_NEW_TASK");
                            context = bkd.aeG();
                            take.setFlags(268435456);
                        }
                        Bundle bundleExtra = take.getBundleExtra(KlConst.KlBundleKey.ARGV);
                        if (bundleExtra != null) {
                            take.removeExtra(KlConst.KlBundleKey.ARGV);
                            take.putExtras(bundleExtra);
                        }
                        take.setClass(context, bke.m6570f(intExtra, str, absKlApplication.getLaunchMode(str)));
                        context.startActivity(take);
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: o */
        boolean m1220o(Intent intent) {
            if (intent == null) {
                return false;
            }
            try {
                this.byV.put(intent);
                return true;
            } catch (InterruptedException e) {
                bkq.m6550d(e);
                return false;
            }
        }
    }
}
