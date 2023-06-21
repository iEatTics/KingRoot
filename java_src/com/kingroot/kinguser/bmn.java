package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import cloudsdk.shell.VTCommand;
/* loaded from: classes.dex */
public final class bmn {

    /* renamed from: ui */
    private static String f1753ui = "";
    private static String bBX = "";
    private static String bBY = "";
    private static String bBZ = "tms_";
    private static String TELEPHONY_SERVICE = "[com.android.internal.telephony.ITelephony]";
    private static String bCa = "[com.android.internal.telephony.ITelephonyRegistry]";
    private static Boolean bCb = null;

    /* renamed from: com.kingroot.kinguser.bmn$a */
    /* loaded from: classes.dex */
    public static class C2511a {
        public long bCc;
    }

    /* renamed from: bD */
    public static String m6375bD(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            return "00000000000001";
        }
    }

    /* renamed from: h */
    public static String m6365h(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception e) {
            Log.e("", "skipping getSubscriberId()", e);
            return "000000000000001";
        }
    }

    /* renamed from: i */
    public static String m6363i(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo == null) {
                return null;
            }
            return connectionInfo.getMacAddress();
        } catch (Exception e) {
            Log.e("", "skipping getMacAddress()", e);
            return "00:00:00:00:00:01";
        }
    }

    /* renamed from: bE */
    public static String m6374bE(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
        } catch (Exception e) {
            Log.e("", "skipping getSimSerialNumber()", e);
            return "0000001";
        }
    }

    public static String afL() {
        for (String str : new String[]{"ro.mediatek.platform", "ro.build.hidden_ver", "ro.product.model"}) {
            String str2 = blq.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
        }
        return Build.MODEL;
    }

    public static String afM() {
        return Build.MODEL;
    }

    /* renamed from: V */
    public static int m6378V() {
        return Build.VERSION.SDK_INT;
    }

    public static String getProductName() {
        return Build.PRODUCT;
    }

    /* renamed from: bF */
    public static int m6373bF(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    /* renamed from: bG */
    public static int m6372bG(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    /* renamed from: a */
    public static void m6377a(C2511a c2511a) {
        if (bmu.aga()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                long blockSize = statFs.getBlockSize();
                statFs.getAvailableBlocks();
                c2511a.bCc = statFs.getBlockCount() * blockSize;
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        c2511a.bCc = 0L;
    }

    public static String afN() {
        return Build.VERSION.INCREMENTAL;
    }

    public static String afO() {
        return Build.VERSION.RELEASE;
    }

    public static String afP() {
        return Build.BRAND;
    }

    /* renamed from: g */
    public static String m6367g() {
        if (!TextUtils.isEmpty(f1753ui)) {
            return f1753ui;
        }
        synchronized (f1753ui) {
            if (!TextUtils.isEmpty(f1753ui)) {
                return f1753ui;
            }
            String m6480g = blm.m6480g();
            if (!TextUtils.isEmpty(m6480g)) {
                f1753ui = m6480g;
            }
            return f1753ui;
        }
    }

    /* renamed from: b */
    public static void m6376b(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (f1753ui) {
                f1753ui = str;
                blm.m6486b(str);
            }
        }
    }

    /* renamed from: h */
    public static String m6366h() {
        if (!TextUtils.isEmpty(bBX)) {
            return bBX;
        }
        synchronized (bBX) {
            if (!TextUtils.isEmpty(bBX)) {
                return bBX;
            }
            String m6479h = blm.m6479h();
            if (!TextUtils.isEmpty(m6479h)) {
                bBX = m6479h;
            }
            return bBX;
        }
    }

    /* renamed from: c */
    public static void m6370c(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (bBX) {
                bBX = str;
                blm.m6483c(str);
            }
        }
    }

    /* renamed from: i */
    public static String m6364i() {
        if (!TextUtils.isEmpty(bBY)) {
            return bBY;
        }
        synchronized (bBY) {
            if (!TextUtils.isEmpty(bBY)) {
                return bBY;
            }
            String m6478i = blm.m6478i();
            if (!TextUtils.isEmpty(m6478i)) {
                bBY = m6478i;
            }
            return bBY;
        }
    }

    /* renamed from: d */
    public static void m6368d(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (bBY) {
                bBY = str;
                blm.m6482d(str);
            }
        }
    }

    public static String afQ() {
        return blm.m6481f();
    }

    /* renamed from: bH */
    public static String m6371bH(Context context) {
        return m6375bD(context);
    }

    public static String afR() {
        return Build.MODEL;
    }

    /* renamed from: ck */
    public static boolean m6369ck() {
        if (bCb == null) {
            try {
                String[] split = bmu.m6334a("sh", new VTCommand("service list", "service list", 120000L)).mStdOut.split("\n");
                if (split != null && split.length > 0) {
                    int i = 0;
                    int i2 = 0;
                    for (String str : split) {
                        if (!str.contains(bBZ)) {
                            if (str.contains(TELEPHONY_SERVICE)) {
                                i2++;
                            } else if (str.contains(bCa)) {
                                i++;
                            }
                        }
                    }
                    if (i2 > 1 || i > 1) {
                        bCb = true;
                    } else {
                        bCb = false;
                    }
                } else {
                    bCb = false;
                }
            } catch (Exception e) {
                bCb = false;
            }
        }
        if (bCb == null) {
            bCb = false;
        }
        return bCb.booleanValue();
    }

    public static String afS() {
        return Build.MANUFACTURER;
    }

    public static String afT() {
        return blq.get("ro.mediatek.platform");
    }

    public static String afU() {
        return Build.BOARD;
    }

    /* renamed from: s */
    public static String m6362s() {
        return blp.m6470s();
    }

    /* renamed from: B */
    public static String m6379B(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            return "";
        }
    }
}
