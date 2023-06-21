package com.kingroot.kinguser;

import android.content.SharedPreferences;
/* renamed from: com.kingroot.kinguser.wc */
/* loaded from: classes.dex */
public class C3824wc {
    private static final cce<C3824wc> sInstance = new cce<C3824wc>() { // from class: com.kingroot.kinguser.wc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: nj */
        public C3824wc create() {
            return new C3824wc();
        }
    };

    /* renamed from: Mt */
    public final SharedPreferences f3854Mt;

    /* renamed from: nh */
    public static C3824wc m1580nh() {
        return sInstance.get();
    }

    private C3824wc() {
        this.f3854Mt = C3566rv.m2313i(C3636tj.m2169ge(), "kinglib_setting");
    }

    /* renamed from: ni */
    public long m1579ni() {
        return this.f3854Mt.getLong("last_static_report_time", 0L);
    }

    /* renamed from: T */
    public void m1581T(long j) {
        this.f3854Mt.edit().putLong("last_static_report_time", j).commit();
    }
}
