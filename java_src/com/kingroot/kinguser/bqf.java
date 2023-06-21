package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.p003os.Environmenu;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.util.Locale;
/* loaded from: classes.dex */
public class bqf {

    /* renamed from: d */
    private static String f2016d;

    /* renamed from: a */
    static String f2013a = null;

    /* renamed from: b */
    static String f2014b = null;

    /* renamed from: c */
    static String f2015c = null;

    /* renamed from: e */
    private static String f2017e = null;

    /* renamed from: a */
    public static String m5822a() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        try {
            Context agA = bqo.agA();
            if (agA != null && (wifiManager = (WifiManager) agA.getSystemService("wifi")) != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                return connectionInfo.getMacAddress();
            }
            return "";
        } catch (SecurityException e) {
            bpy.m5843b("openSDK_LOG.MobileInfoUtil", "getLocalMacAddress>>>", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m5821a(Context context) {
        if (!TextUtils.isEmpty(f2016d)) {
            return f2016d;
        }
        if (context == null) {
            return "";
        }
        f2016d = "";
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int width = windowManager.getDefaultDisplay().getWidth();
            f2016d = width + "x" + windowManager.getDefaultDisplay().getHeight();
        }
        return f2016d;
    }

    /* renamed from: b */
    public static String m5820b() {
        return Locale.getDefault().getLanguage();
    }

    /* renamed from: b */
    public static String m5819b(Context context) {
        if (f2013a != null && f2013a.length() > 0) {
            return f2013a;
        }
        if (context == null) {
            return "";
        }
        try {
            f2013a = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            return f2013a;
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: c */
    public static String m5818c(Context context) {
        if (f2014b != null && f2014b.length() > 0) {
            return f2014b;
        }
        if (context == null) {
            return "";
        }
        try {
            f2014b = ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
            return f2014b;
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: d */
    public static String m5817d(Context context) {
        if (f2015c != null && f2015c.length() > 0) {
            return f2015c;
        }
        if (context == null) {
            return "";
        }
        try {
            f2015c = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return f2015c;
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: e */
    public static String m5816e(Context context) {
        try {
            if (f2017e == null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                StringBuilder sb = new StringBuilder();
                sb.append("imei=").append(m5819b(context)).append('&');
                sb.append("model=").append(Build.MODEL).append('&');
                sb.append("os=").append(Build.VERSION.RELEASE).append('&');
                sb.append("apilevel=").append(Build.VERSION.SDK_INT).append('&');
                String m5826b = bqd.m5826b(context);
                if (m5826b == null) {
                    m5826b = "";
                }
                sb.append("network=").append(m5826b).append('&');
                sb.append("sdcard=").append(Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED) ? 1 : 0).append('&');
                sb.append("display=").append(displayMetrics.widthPixels).append('*').append(displayMetrics.heightPixels).append('&');
                sb.append("manu=").append(Build.MANUFACTURER).append("&");
                sb.append("wifi=").append(bqd.m5823e(context));
                f2017e = sb.toString();
            }
            return f2017e;
        } catch (Exception e) {
            return null;
        }
    }
}
