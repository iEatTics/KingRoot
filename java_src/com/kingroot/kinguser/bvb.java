package com.kingroot.kinguser;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
/* loaded from: classes.dex */
public class bvb {
    public static String getSSID() {
        WifiInfo connectionInfo;
        try {
            WifiManager wifiManager = (WifiManager) bty.aie().getContext().getSystemService("wifi");
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                return connectionInfo.getSSID();
            }
        } catch (Exception e) {
        }
        return "";
    }
}
