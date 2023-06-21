package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
/* loaded from: classes.dex */
public class bsl {
    /* renamed from: bN */
    public static ConnectivityManager m5557bN(Context context) {
        try {
            return (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean ahV() {
        NetworkInfo networkInfo;
        try {
            networkInfo = m5557bN(bre.ahy().getApplicationContext()).getActiveNetworkInfo();
        } catch (NullPointerException e) {
            Log.w("getActiveNetworkInfo", " getActiveNetworkInfo NullPointerException--- \n" + e.getMessage());
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.getType() == 1;
    }
}
