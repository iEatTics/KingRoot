package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
/* loaded from: classes.dex */
public final class cdm {
    /* renamed from: a */
    public static String m4826a() {
        return Build.MODEL;
    }

    /* renamed from: a */
    public static String m4825a(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Throwable th) {
            cdo.m4818a("DeviceUtil", "getIMEI: " + th);
            return "";
        }
    }

    /* renamed from: b */
    public static String m4824b() {
        return Build.PRODUCT;
    }

    /* renamed from: b */
    public static String m4823b(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Throwable th) {
            cdo.m4818a("DeviceUtil", "getIMSI: " + th);
            return "";
        }
    }

    /* renamed from: c */
    public static int m4822c() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (Throwable th) {
            cdo.m4818a("DeviceUtil", "getSDKVersion: " + th);
            return 0;
        }
    }

    /* renamed from: c */
    public static String m4821c(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo != null) {
                return connectionInfo.getMacAddress();
            }
        } catch (Throwable th) {
            cdo.m4818a("DeviceUtil", "getMAC: " + th);
        }
        return "";
    }

    /* renamed from: d */
    public static String m4820d(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
        } catch (Throwable th) {
            cdo.m4818a("DeviceUtil", "getICCID: " + th);
            return "";
        }
    }

    /* renamed from: e */
    public static String m4819e(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            cdo.m4818a("DeviceUtil", "getAndroidId: " + th);
            return "";
        }
    }
}
