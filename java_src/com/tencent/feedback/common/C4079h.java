package com.tencent.feedback.common;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: com.tencent.feedback.common.h */
/* loaded from: classes.dex */
public final class C4079h {

    /* renamed from: a */
    private static boolean f4496a = false;

    /* renamed from: b */
    private static boolean f4497b = false;

    /* renamed from: d */
    private static NetworkInfo m974d(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m977a(Context context) {
        NetworkInfo m974d = m974d(context);
        return m974d != null && m974d.getType() == 1;
    }

    /* renamed from: b */
    public static boolean m976b(Context context) {
        NetworkInfo m974d = m974d(context);
        return m974d != null && m974d.isConnected();
    }

    /* renamed from: c */
    public static String m975c(Context context) {
        NetworkInfo m974d = m974d(context);
        if (m974d == null) {
            return "unknown";
        }
        if (m974d.getType() == 1) {
            return "wifi";
        }
        String extraInfo = m974d.getExtraInfo();
        if (extraInfo != null && extraInfo.length() > 64) {
            extraInfo = extraInfo.substring(0, 64);
        }
        return extraInfo;
    }
}
