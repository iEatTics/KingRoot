package com.kingroot.kinguser;

import android.content.Context;
import android.telephony.TelephonyManager;
/* loaded from: classes.dex */
public class btl {
    /* renamed from: a */
    public static String m5538a(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            String deviceId = telephonyManager.getDeviceId();
            return deviceId == null ? "" : deviceId;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
