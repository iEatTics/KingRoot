package com.kingroot.kinguser;

import android.content.SharedPreferences;
/* loaded from: classes.dex */
public class bsg {
    private final String bLs = "Discovery_Sp_0";
    private final String bLt = "requesttime";
    private final String bLu = "feedback_switch";
    private final String bLv = "ad_switch_slop";
    private final String bLw = "pre_ad_request_state";

    /* renamed from: Mt */
    private SharedPreferences f2065Mt = bre.ahy().getApplicationContext().getSharedPreferences("Discovery_Sp_0", 0);

    /* renamed from: j */
    public void m5578j(int i, long j) {
        SharedPreferences.Editor edit = this.f2065Mt.edit();
        edit.putLong("requesttime" + i, j);
        edit.commit();
    }

    /* renamed from: kh */
    public long m5577kh(int i) {
        return this.f2065Mt.getLong("requesttime" + i, -1L);
    }

    /* renamed from: J */
    public void m5579J(int i, boolean z) {
        SharedPreferences.Editor edit = this.f2065Mt.edit();
        edit.putBoolean("pre_ad_request_state" + i, z);
        edit.commit();
    }

    /* renamed from: ki */
    public boolean m5576ki(int i) {
        return this.f2065Mt.getBoolean("pre_ad_request_state" + i, true);
    }
}
