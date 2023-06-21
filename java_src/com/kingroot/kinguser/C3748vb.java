package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.vb */
/* loaded from: classes.dex */
public class C3748vb {
    /* renamed from: O */
    public static byte m1921O(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) KApplication.m13453ge().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
        }
        if (activeNetworkInfo == null || !(activeNetworkInfo.getState() == NetworkInfo.State.CONNECTING || activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED)) {
            return (byte) -1;
        }
        if (activeNetworkInfo.getType() == 1) {
            return (byte) 0;
        }
        if (activeNetworkInfo.getType() == 0) {
            return (Proxy.getDefaultHost() == null && Proxy.getHost(context) == null) ? (byte) 1 : (byte) 2;
        }
        if (abd.m12839qb() >= 13 && activeNetworkInfo.getType() == 9) {
            return (byte) 0;
        }
        return (byte) -1;
    }

    /* renamed from: P */
    public static String m1920P(Context context) {
        String host = Proxy.getHost(context);
        if (host == null || host.length() == 0) {
            return Proxy.getDefaultHost();
        }
        return host == null ? "" : host;
    }

    /* renamed from: Q */
    public static int m1919Q(Context context) {
        int port = Proxy.getPort(context);
        if (port <= 0) {
            return Proxy.getDefaultPort();
        }
        return port;
    }

    /* renamed from: R */
    public static boolean m1918R(Context context) {
        return m1921O(context) == 0;
    }

    /* renamed from: S */
    public static boolean m1917S(Context context) {
        return m1921O(context) != -1;
    }
}
