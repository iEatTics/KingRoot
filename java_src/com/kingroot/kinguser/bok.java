package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.net.URLEncoder;
/* loaded from: classes.dex */
public final class bok {

    /* renamed from: a */
    private static String f1838a = "";

    /* renamed from: b */
    private static String f1839b = "";

    /* renamed from: J */
    public static String m6072J(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (z) {
            try {
                if (str.length() > 30) {
                    str = str.substring(0, 30);
                }
            } catch (Throwable th) {
                return "";
            }
        }
        return URLEncoder.encode(str);
    }

    /* renamed from: a */
    public static int m6071a() {
        return (int) (Math.random() * 2.147483647E9d);
    }

    /* renamed from: a */
    private static String m6070a(Context context) {
        Context agA;
        TelephonyManager telephonyManager;
        boolean z = true;
        try {
            String str = f1838a;
            if (str != null && str.trim().length() != 0) {
                z = false;
            }
            if (z && (agA = boi.agA()) != null && (telephonyManager = (TelephonyManager) agA.getSystemService("phone")) != null) {
                String deviceId = telephonyManager.getDeviceId();
                if (deviceId == null) {
                    deviceId = "";
                }
                f1838a = deviceId;
            }
        } catch (Throwable th) {
        }
        return f1838a;
    }

    /* renamed from: a */
    public static boolean m6069a(String str) {
        return str == null || str.trim().length() == 0;
    }

    /* renamed from: b */
    public static String m6068b() {
        return m6070a((Context) null);
    }

    /* renamed from: b */
    private static String m6067b(Context context) {
        Context agA;
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        boolean z = true;
        try {
            String str = f1839b;
            if (str != null && str.trim().length() != 0) {
                z = false;
            }
            if (z && (agA = boi.agA()) != null && (wifiManager = (WifiManager) agA.getSystemService("wifi")) != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                String macAddress = connectionInfo.getMacAddress();
                if (macAddress == null) {
                    macAddress = "";
                }
                f1839b = macAddress;
            }
        } catch (Throwable th) {
        }
        return f1839b;
    }

    /* renamed from: b */
    public static String m6066b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str);
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: c */
    public static String m6065c() {
        return m6067b((Context) null);
    }

    /* renamed from: d */
    public static String m6064d() {
        Context agA = boi.agA();
        if (agA == null) {
            return null;
        }
        return agA.getPackageName();
    }

    /* renamed from: e */
    public static String m6063e() {
        Context agA = boi.agA();
        if (agA == null) {
            return null;
        }
        Context agA2 = boi.agA();
        try {
            return agA.getPackageManager().getPackageInfo(agA2 == null ? null : agA2.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public static int m6062f() {
        Context agA = boi.agA();
        if (agA == null) {
            return 0;
        }
        Context agA2 = boi.agA();
        try {
            return agA.getPackageManager().getPackageInfo(agA2 == null ? null : agA2.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: j */
    public static int m6061j(int i, int i2, int i3) {
        return Math.min(Math.max(i, 1), i3);
    }
}
