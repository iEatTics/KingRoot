package com.kingroot.kinguser;

import android.content.Context;
import cloudsdk.CloudSdk;
import java.util.Properties;
/* loaded from: classes.dex */
public final class bmt {
    private static final Object bCu = new Object();
    private String bCv;
    private Properties bCw;
    private Context mContext = CloudSdk.getInstance().getContext();

    public bmt(String str, boolean z) {
        this.bCv = str;
        this.bCw = bmu.m6313mk(this.bCv);
    }

    public final String getProperty(String str) {
        String property;
        synchronized (bCu) {
            property = this.bCw.getProperty(str);
            if (property == null) {
                property = "";
            }
        }
        return property;
    }
}
