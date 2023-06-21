package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
/* renamed from: com.kingroot.kinguser.gp */
/* loaded from: classes.dex */
public class C3130gp {
    /* renamed from: l */
    public static byte m3666l(Context context) {
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
    public static String m3667b(Context context) {
        String host = Proxy.getHost(context);
        if (host == null || host.length() == 0) {
            return Proxy.getDefaultHost();
        }
        return host == null ? "" : host;
    }

    /* renamed from: m */
    public static int m3665m(Context context) {
        int port = Proxy.getPort(context);
        if (port <= 0) {
            return Proxy.getDefaultPort();
        }
        return port;
    }
}
