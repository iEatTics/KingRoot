package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
/* renamed from: com.kingroot.kinguser.kb */
/* loaded from: classes.dex */
public class C3237kb {
    /* renamed from: l */
    public static byte m3311l(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
        }
        if (activeNetworkInfo == null || !(activeNetworkInfo.getState() == NetworkInfo.State.CONNECTING || activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED)) {
            return (byte) -1;
        }
        if (activeNetworkInfo.getType() == 1) {
            return (byte) 0;
        }
        if (activeNetworkInfo.getType() == 0) {
            if (Proxy.getDefaultHost() == null) {
                if (Proxy.getHost(context) == null) {
                    return (byte) 1;
                }
            }
            return (byte) 2;
        }
        return (byte) -1;
    }

    /* renamed from: b */
    public static String m3313b(Context context) {
        String host = Proxy.getHost(context);
        if (host == null || host.length() == 0) {
            return Proxy.getDefaultHost();
        }
        return host;
    }

    /* renamed from: m */
    public static int m3310m(Context context) {
        int port = Proxy.getPort(context);
        if (port <= 0) {
            return Proxy.getDefaultPort();
        }
        return port;
    }

    /* renamed from: k */
    public static boolean m3312k(Context context) {
        boolean z;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } catch (Exception e) {
            return false;
        }
    }
}
