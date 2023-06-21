package com.kingroot.kinguser;

import android.content.Context;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import shark.C4395a;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class cgr {
    public static C4395a anb() {
        NetworkInfo networkInfo = null;
        try {
            networkInfo = ceb.akU().getActiveNetworkInfo();
        } catch (NullPointerException e) {
        }
        if (networkInfo == null) {
            return C4395a.bXc;
        }
        if (networkInfo.getType() == 1) {
            return C4395a.bXd;
        }
        if (networkInfo.getType() == 0) {
            String aip = aip();
            if (aip != null && aip.length() > 0 && aiq() > 0) {
                return C4395a.bXe;
            }
            return C4395a.bXf;
        }
        return C4395a.bXf;
    }

    public static boolean aio() {
        return Build.VERSION.SDK_INT >= 14;
    }

    public static String aip() {
        if (aio()) {
            return System.getProperty("http.proxyHost");
        }
        return Proxy.getHost(TMSDKContext.akS());
    }

    public static int aiq() {
        if (aio()) {
            try {
                return Integer.parseInt(System.getProperty("http.proxyPort"));
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        return Proxy.getPort(TMSDKContext.akS());
    }

    public static boolean amN() {
        NetworkInfo networkInfo = getNetworkInfo();
        if (networkInfo == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    public static NetworkInfo getNetworkInfo() {
        try {
            return ceb.akU().getActiveNetworkInfo();
        } catch (NullPointerException e) {
            return null;
        }
    }

    /* renamed from: cw */
    public static int m4319cw(Context context) {
        if (!cef.bYc) {
            cef.bYc = false;
            cef.m4783cr(context);
        }
        switch (cef.bYg) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 13;
            case 14:
                return 14;
            case 15:
                return 15;
            case 16:
                return 16;
            case 17:
            default:
                return 0;
        }
    }
}
