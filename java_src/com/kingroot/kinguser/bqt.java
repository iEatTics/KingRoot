package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.util.DisplayMetrics;
import cloudsdk.ext.p008kr.RootConst;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bqt {

    /* renamed from: f */
    private static String f2051f;

    /* renamed from: a */
    private static String f2046a = "";

    /* renamed from: b */
    private static String f2047b = "";

    /* renamed from: c */
    private static String f2048c = "";

    /* renamed from: d */
    private static String f2049d = "";

    /* renamed from: e */
    private static int f2050e = -1;

    /* renamed from: g */
    private static String f2052g = "0123456789ABCDEF";

    /* renamed from: mR */
    public static Bundle m5738mR(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            try {
                for (String str2 : str.split("&")) {
                    String[] split = str2.split("=");
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0]), URLDecoder.decode(split[1]));
                    }
                }
                return bundle;
            } catch (Exception e) {
                return null;
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static JSONObject m5746a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (str != null) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                if (split.length == 2) {
                    try {
                        split[0] = URLDecoder.decode(split[0]);
                        split[1] = URLDecoder.decode(split[1]);
                    } catch (Exception e) {
                    }
                    try {
                        jSONObject.put(split[0], split[1]);
                    } catch (JSONException e2) {
                        bpy.m5840e("openSDK_LOG.Util", "decodeUrlToJson has exception: " + e2.getMessage());
                    }
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: mS */
    public static Bundle m5737mS(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            Bundle m5738mR = m5738mR(url.getQuery());
            m5738mR.putAll(m5738mR(url.getRef()));
            return m5738mR;
        } catch (MalformedURLException e) {
            return new Bundle();
        }
    }

    /* renamed from: mT */
    public static JSONObject m5736mT(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            JSONObject m5746a = m5746a(null, url.getQuery());
            m5746a(m5746a, url.getRef());
            return m5746a;
        } catch (MalformedURLException e) {
            return new JSONObject();
        }
    }

    /* renamed from: com.kingroot.kinguser.bqt$a */
    /* loaded from: classes.dex */
    public static class C2584a {

        /* renamed from: a */
        public String f2053a;

        /* renamed from: b */
        public long f2054b;

        /* renamed from: c */
        public long f2055c;

        public C2584a(String str, int i) {
            this.f2053a = str;
            this.f2054b = i;
            if (this.f2053a != null) {
                this.f2055c = this.f2053a.length();
            }
        }
    }

    /* renamed from: mU */
    public static JSONObject m5735mU(String str) {
        if (str.equals("false")) {
            str = "{value : false}";
        }
        if (str.equals("true")) {
            str = "{value : true}";
        }
        if (str.contains("allback(")) {
            str = str.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
        }
        if (str.contains("online[0]=")) {
            str = "{online:" + str.charAt(str.length() - 2) + "}";
        }
        return new JSONObject(str);
    }

    /* renamed from: a */
    public static String m5749a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces != null && networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException e) {
            bpy.m5847a("openSDK_LOG.Util", "getUserIp SocketException ", e);
        }
        return "";
    }

    /* renamed from: g */
    private static boolean m5740g(Context context) {
        Signature[] signatureArr;
        boolean z = false;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
            String str = packageInfo.versionName;
            if (bqr.m5760aV(str, "4.3") >= 0 && !str.startsWith("4.4") && (signatureArr = packageInfo.signatures) != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(signatureArr[0].toByteArray());
                    String m5745a = m5745a(messageDigest.digest());
                    messageDigest.reset();
                    if (m5745a.equals("d8391a394d4a179e6fe7bdb8a301258b")) {
                        z = true;
                    }
                } catch (NoSuchAlgorithmException e) {
                    bpy.m5840e("openSDK_LOG.Util", "isQQBrowerAvailable has exception: " + e.getMessage());
                }
            }
        } catch (PackageManager.NameNotFoundException e2) {
        }
        return z;
    }

    /* renamed from: N */
    public static boolean m5753N(Context context, String str) {
        boolean z;
        try {
            z = m5740g(context);
        } catch (Exception e) {
            z = false;
        }
        try {
            if (z) {
                m5741d(context, "com.tencent.mtt", "com.tencent.mtt.MainActivity", str);
            } else {
                m5741d(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
            }
        } catch (Exception e2) {
            if (z) {
                try {
                    m5741d(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
                } catch (Exception e3) {
                    try {
                        m5741d(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                    } catch (Exception e4) {
                        try {
                            m5741d(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                        } catch (Exception e5) {
                            return false;
                        }
                    }
                }
            } else {
                try {
                    m5741d(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                } catch (Exception e6) {
                    try {
                        m5741d(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                    } catch (Exception e7) {
                        return false;
                    }
                }
            }
            return true;
        }
        return true;
    }

    /* renamed from: d */
    private static void m5741d(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        intent.setData(Uri.parse(str3));
        context.startActivity(intent);
    }

    /* renamed from: a */
    public static String m5745a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            String num = Integer.toString(b & 255, 16);
            if (num.length() == 1) {
                num = "0" + num;
            }
            sb.append(num);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static boolean m5744b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return true;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.isConnectedOrConnecting()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public static Bundle m5743b(String str, String str2, String str3, String str4, String str5, String str6) {
        return m5747a(str, str3, str4, str2, str5, str6, "", "", "", "", "", "");
    }

    /* renamed from: a */
    public static Bundle m5747a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        Bundle bundle = new Bundle();
        bundle.putString("openid", str);
        bundle.putString("report_type", str2);
        bundle.putString("act_type", str3);
        bundle.putString("via", str4);
        bundle.putString("app_id", str5);
        bundle.putString("result", str6);
        bundle.putString("type", str7);
        bundle.putString("login_status", str8);
        bundle.putString("need_user_auth", str9);
        bundle.putString("to_uin", str10);
        bundle.putString("call_source", str11);
        bundle.putString("to_type", str12);
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m5748a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", "1");
        bundle.putString("result", str);
        bundle.putString("code", str2);
        bundle.putString("tmcost", str3);
        bundle.putString("rate", str4);
        bundle.putString(RootConst.KEY_ROOT_EXECUTE_COMMAND, str5);
        bundle.putString("uin", str6);
        bundle.putString("appid", str7);
        bundle.putString("share_type", str8);
        bundle.putString("detail", str9);
        bundle.putString("os_ver", Build.VERSION.RELEASE);
        bundle.putString("network", bqd.m5827a(bqo.agA()));
        bundle.putString(Telephony.Carriers.APN, bqd.m5826b(bqo.agA()));
        bundle.putString("model_name", Build.MODEL);
        bundle.putString("sdk_ver", "3.2.1.lite");
        bundle.putString("packagename", bqo.m5780b());
        bundle.putString("app_ver", m5751P(bqo.agA(), bqo.m5780b()));
        return bundle;
    }

    /* renamed from: c */
    public static String m5742c(Context context) {
        Location lastKnownLocation;
        if (context == null) {
            return "";
        }
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            Criteria criteria = new Criteria();
            criteria.setCostAllowed(false);
            criteria.setAccuracy(2);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider != null && (lastKnownLocation = locationManager.getLastKnownLocation(bestProvider)) != null) {
                f2051f = lastKnownLocation.getLatitude() + "*" + lastKnownLocation.getLongitude();
                return f2051f;
            }
            return "";
        } catch (Exception e) {
            bpy.m5843b("openSDK_LOG.Util", "getLocation>>>", e);
        }
        return "";
    }

    /* renamed from: I */
    public static void m5754I(Context context, String str) {
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                f2047b = packageInfo.versionName;
                f2046a = f2047b.substring(0, f2047b.lastIndexOf(46));
                f2049d = f2047b.substring(f2047b.lastIndexOf(46) + 1, f2047b.length());
                f2050e = packageInfo.versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                bpy.m5840e("openSDK_LOG.Util", "getPackageInfo has exception: " + e.getMessage());
            } catch (Exception e2) {
                bpy.m5840e("openSDK_LOG.Util", "getPackageInfo has exception: " + e2.getMessage());
            }
        }
    }

    /* renamed from: O */
    public static String m5752O(Context context, String str) {
        if (context == null) {
            return "";
        }
        m5754I(context, str);
        return f2047b;
    }

    /* renamed from: P */
    public static String m5751P(Context context, String str) {
        if (context == null) {
            return "";
        }
        m5754I(context, str);
        return f2046a;
    }

    /* renamed from: Q */
    public static String m5750Q(Context context, String str) {
        if (context == null) {
            return "";
        }
        f2048c = m5751P(context, str);
        return f2048c;
    }

    /* renamed from: mV */
    public static byte[] m5734mV(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    /* renamed from: k */
    public static boolean m5739k(Context context) {
        double d = 0.0d;
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            float f = displayMetrics.widthPixels / displayMetrics.xdpi;
            d = Math.sqrt(Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d) + Math.pow(f, 2.0d));
        } catch (Throwable th) {
        }
        return d > 6.5d;
    }
}
