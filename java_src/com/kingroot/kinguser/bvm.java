package com.kingroot.kinguser;

import android.content.SharedPreferences;
/* loaded from: classes.dex */
public class bvm {
    private final String bLs = "";
    private final String bPF = "s.i.c.t.pre_";
    private final String bPG = "cache_expiration_day";
    private final String bPH = "software_advertise_request_advertise_app_index";
    private final String bPI = "s.i.c.f.size";

    /* renamed from: Mt */
    private SharedPreferences f2120Mt = bty.aie().getContext().getSharedPreferences("", 0);

    public long aiz() {
        return this.f2120Mt.getLong("cache_expiration_day", 86400000L);
    }

    /* renamed from: kt */
    public long m5384kt(int i) {
        return this.f2120Mt.getLong("s.i.c.t.pre_" + i, 0L);
    }

    /* renamed from: l */
    public void m5381l(int i, long j) {
        SharedPreferences.Editor edit = this.f2120Mt.edit();
        edit.putLong("s.i.c.t.pre_" + i, j);
        edit.commit();
    }

    /* renamed from: ku */
    public int m5383ku(int i) {
        return this.f2120Mt.getInt("s.i.c.f.size" + i, 10);
    }

    /* renamed from: as */
    public void m5385as(int i, int i2) {
        SharedPreferences.Editor edit = this.f2120Mt.edit();
        edit.putInt("s.i.c.f.size" + i, i2);
        edit.commit();
    }

    /* renamed from: kv */
    public long m5382kv(int i) {
        return this.f2120Mt.getLong("software_advertise_last_fetch_time" + i, 0L);
    }

    /* renamed from: m */
    public void m5380m(int i, long j) {
        SharedPreferences.Editor edit = this.f2120Mt.edit();
        edit.putLong("software_advertise_last_fetch_time" + i, j);
        edit.commit();
    }
}
