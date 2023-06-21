package com.kingroot.kinguser;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.provider.Telephony;
import com.android.internal.p009os.PowerProfile;
/* loaded from: classes.dex */
public class bqd {
    protected static final Uri bIm = Uri.parse("content://telephony/carriers/preferapn");

    /* renamed from: a */
    public static String m5827a(Context context) {
        int m5825bK = m5825bK(context);
        if (m5825bK == 2) {
            return "wifi";
        }
        if (m5825bK == 1) {
            return "cmwap";
        }
        if (m5825bK == 4) {
            return "cmnet";
        }
        if (m5825bK == 16) {
            return "uniwap";
        }
        if (m5825bK == 8) {
            return "uninet";
        }
        if (m5825bK == 64) {
            return "wap";
        }
        if (m5825bK == 32) {
            return "net";
        }
        if (m5825bK == 512) {
            return "ctwap";
        }
        if (m5825bK == 256) {
            return "ctnet";
        }
        if (m5825bK == 2048) {
            return "3gnet";
        }
        if (m5825bK == 1024) {
            return "3gwap";
        }
        String m5826b = m5826b(context);
        if (m5826b == null || m5826b.length() == 0) {
            return PowerProfile.POWER_NONE;
        }
        return m5826b;
    }

    /* renamed from: b */
    public static String m5826b(Context context) {
        try {
            Cursor query = context.getContentResolver().query(bIm, null, null, null, null);
            if (query == null) {
                return null;
            }
            query.moveToFirst();
            if (query.isAfterLast()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            String string = query.getString(query.getColumnIndex(Telephony.Carriers.APN));
            if (query != null) {
                query.close();
                return string;
            }
            return string;
        } catch (SecurityException e) {
            bpy.m5840e("openSDK_LOG.APNUtil", "getApn has exception: " + e.getMessage());
            return "";
        } catch (Exception e2) {
            bpy.m5840e("openSDK_LOG.APNUtil", "getApn has exception: " + e2.getMessage());
            return "";
        }
    }

    /* renamed from: c */
    public static String m5824c(Context context) {
        try {
            Cursor query = context.getContentResolver().query(bIm, null, null, null, null);
            if (query == null) {
                return null;
            }
            query.moveToFirst();
            if (query.isAfterLast()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            String string = query.getString(query.getColumnIndex("proxy"));
            if (query != null) {
                query.close();
                return string;
            }
            return string;
        } catch (SecurityException e) {
            bpy.m5840e("openSDK_LOG.APNUtil", "getApnProxy has exception: " + e.getMessage());
            return "";
        }
    }

    /* renamed from: bK */
    public static int m5825bK(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e) {
            bpy.m5840e("openSDK_LOG.APNUtil", "getMProxyType has exception: " + e.getMessage());
        }
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            if (activeNetworkInfo.getTypeName().toUpperCase().equals("WIFI")) {
                return 2;
            }
            String lowerCase = activeNetworkInfo.getExtraInfo().toLowerCase();
            if (lowerCase.startsWith("cmwap")) {
                return 1;
            }
            if (lowerCase.startsWith("cmnet") || lowerCase.startsWith("epc.tmobile.com")) {
                return 4;
            }
            if (lowerCase.startsWith("uniwap")) {
                return 16;
            }
            if (lowerCase.startsWith("uninet")) {
                return 8;
            }
            if (lowerCase.startsWith("wap")) {
                return 64;
            }
            if (lowerCase.startsWith("net")) {
                return 32;
            }
            if (lowerCase.startsWith("ctwap")) {
                return 512;
            }
            if (lowerCase.startsWith("ctnet")) {
                return 256;
            }
            if (lowerCase.startsWith("3gwap")) {
                return 1024;
            }
            if (lowerCase.startsWith("3gnet")) {
                return 2048;
            }
            if (lowerCase.startsWith("#777")) {
                String m5824c = m5824c(context);
                if (m5824c != null) {
                    if (m5824c.length() > 0) {
                        return 512;
                    }
                }
                return 256;
            }
            return 128;
        }
        return 128;
    }

    /* renamed from: e */
    public static String m5823e(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            return activeNetworkInfo.getTypeName();
        }
        return "MOBILE";
    }
}
