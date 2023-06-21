package com.kingroot.kinguser;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.ConnectType;
/* loaded from: classes.dex */
public class buv {
    public static ConnectType ain() {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) bty.aie().getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (NullPointerException e) {
            networkInfo = null;
        }
        if (networkInfo == null) {
            return ConnectType.bPT;
        }
        if (networkInfo.getType() == 1) {
            return ConnectType.bPV;
        }
        if (networkInfo.getType() == 0) {
            String aip = aip();
            if (aip != null && aip.length() > 0 && aiq() > 0) {
                return ConnectType.bPW;
            }
            return ConnectType.bPX;
        }
        return ConnectType.bPX;
    }

    public static String getNetworkName() {
        NetworkInfo networkInfo;
        String extraInfo;
        try {
            networkInfo = ((ConnectivityManager) bty.aie().getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (NullPointerException e) {
            networkInfo = null;
        }
        if (networkInfo == null) {
            return "";
        }
        if (networkInfo.getType() == 1) {
            extraInfo = bvb.getSSID();
        } else {
            extraInfo = networkInfo.getExtraInfo();
        }
        if (extraInfo == null) {
            return "";
        }
        return extraInfo;
    }

    public static boolean aio() {
        return Build.VERSION.SDK_INT >= 14;
    }

    public static String aip() {
        if (aio()) {
            return System.getProperty("http.proxyHost");
        }
        return Proxy.getHost(bty.aie().getContext());
    }

    public static int aiq() {
        if (aio()) {
            try {
                return Integer.parseInt(System.getProperty("http.proxyPort"));
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        return Proxy.getPort(bty.aie().getContext());
    }
}
