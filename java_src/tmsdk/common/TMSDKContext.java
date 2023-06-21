package tmsdk.common;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.kinguser.bwg;
import com.kingroot.kinguser.bze;
import com.kingroot.kinguser.cdy;
import com.kingroot.kinguser.cea;
import com.kingroot.kinguser.ceb;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import tmsdk.common.module.software.AppEntity;
/* loaded from: classes.dex */
public final class TMSDKContext {
    private static int bVU;
    private static Context bXM;
    private static Class bXN;
    private static Map<String, String> bXO;

    private static native int doRegisterNatives(int i, Class<?> cls);

    static {
        HashMap hashMap = new HashMap();
        bXO = hashMap;
        hashMap.put("boa_libname", "boa-1.0.3");
        bXO.put("virus_scan_libname", "Tms2-Ams-Jni-1.4.2");
        bXO.put("sdk_libname", "Tmsdk-2.1.1");
        bXO.put("spirit_libname", "libspirit-1.0.1");
        bXO.put("pre_lib_path", null);
        bXO.put("login_host_url", "sync.3g.qq.com");
        bXO.put("su_cmd", "su");
        bXO.put("softversion", "2.1.1");
        bXO.put("build", "100");
        bXO.put("host_url", "http://pmir.3g.qq.com");
        bXO.put("is_t", "false");
        bXO.put("lc", "0CD0AD809CBCBF41");
        bXO.put("channel", "null");
        bXO.put("platform", "default");
        bXO.put("pversion", "1");
        bXO.put("cversion", "0");
        bXO.put("hotfix", "0");
        bXO.put("auto_report", "true");
        bXO.put("sub_platform", "201");
        bXO.put("product", "13");
        if (Build.VERSION.SDK_INT >= 21) {
            bXO.put("athena_name", "athena_v5.dat");
        } else {
            bXO.put("athena_name", "athena_v4.dat");
        }
        bXO.put("pkgkey", "null");
        bXO.put("app_build_type", Integer.toString(0));
    }

    /* renamed from: nF */
    public static int m14nF(String str) {
        int intValue;
        synchronized (TMSDKContext.class) {
            String str2 = bXO.get(str);
            intValue = !TextUtils.isEmpty(str2) ? Integer.valueOf(str2).intValue() : 0;
        }
        return intValue;
    }

    /* renamed from: nG */
    public static String m13nG(String str) {
        String str2;
        synchronized (TMSDKContext.class) {
            str2 = bXO.get(str);
            if (str.equals("softversion") && (str2 == null || str2.contains("0.0.0"))) {
                AppEntity mo4352Y = ceb.akU().mo4352Y(akS().getPackageName(), 8);
                if (mo4352Y != null) {
                    str2 = mo4352Y.getVersion();
                }
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static void m15a(Context context, Class cls, int i, cdy cdyVar, cea ceaVar) {
        bXM = context.getApplicationContext();
        bXN = cls;
        bVU = i;
        boolean z = true;
        if (ceaVar != null) {
            z = ceaVar.bXL;
        }
        if (z) {
            try {
                bwg.aiJ().m5336bT(context.getApplicationContext());
            } catch (Throwable th) {
            }
        }
        synchronized (TMSDKContext.class) {
            bXO.put("channel", "null");
            bXO.put("root_got_action", context.getPackageName() + "ACTION_ROOT_GOT");
            bXO.put("root_daemon_start_action", context.getPackageName() + "ACTION_ROOT_DAEMON_START");
            if (cdyVar != null) {
                bXO = cdyVar.mo2694d(new HashMap(bXO));
            }
        }
        try {
            bze.ajX();
        } catch (IOException e) {
        }
    }

    public static Context akS() {
        return bXM.getApplicationContext();
    }

    public static int akT() {
        return bVU;
    }

    public static boolean checkLisence() {
        return true;
    }

    /* renamed from: a */
    public static void m16a(int i, Class<?> cls) {
        bze.ajY();
        int doRegisterNatives = doRegisterNatives(i, cls);
        if (doRegisterNatives != 0) {
            throw new UnsatisfiedLinkError("Failed to register " + cls.toString() + "(err=" + doRegisterNatives + ")");
        }
    }
}
