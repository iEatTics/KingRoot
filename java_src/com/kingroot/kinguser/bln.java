package com.kingroot.kinguser;

import android.content.SharedPreferences;
import cloudsdk.CloudSdk;
/* loaded from: classes.dex */
public class bln {
    private static volatile bln bzZ;
    private SharedPreferences bAa = CloudSdk.getInstance().getContext().getSharedPreferences("ManagerSetting", 0);
    private SharedPreferences.Editor bAb = this.bAa.edit();

    private bln() {
    }

    public static bln afn() {
        if (bzZ == null) {
            synchronized (bln.class) {
                if (bzZ == null) {
                    bzZ = new bln();
                }
            }
        }
        return bzZ;
    }

    /* renamed from: b */
    public final void m6475b(long j) {
        this.bAb.putLong("PullPOrderTime", j).apply();
    }

    public final long afo() {
        return this.bAa.getLong("PullPOrderTime", 0L);
    }

    /* renamed from: c */
    public final void m6474c(long j) {
        this.bAb.putLong("LatestPluginGOFID", j).apply();
    }

    public final long afp() {
        return this.bAa.getLong("LatestPluginGOFID", 0L);
    }
}
