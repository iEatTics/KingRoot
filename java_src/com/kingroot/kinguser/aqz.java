package com.kingroot.kinguser;

import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqz extends aqy<arm> {
    public aqz() {
        this.aLz = (arm) arq.m9524a(arm.class, true);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nb */
    public String mo9534Nb() {
        return C3953zi.m1311pr().getString(R.string.examination_unit_normal_showing_clean_sys_cache);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nc */
    public String mo9533Nc() {
        return String.format(C3953zi.m1311pr().getString(R.string.examination_unit_abnormal_showing_clean_sys_cache), act.m12654b(((arm) this.aLz).m9528Nm(), false));
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nd */
    public String mo9532Nd() {
        return C3953zi.m1311pr().getString(R.string.examination_unit_normal_result_optimal_state);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nf */
    public String mo9531Nf() {
        return C3953zi.m1311pr().getString(R.string.examination_unit_abnormal_result_optimized);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: MK */
    public int mo9535MK() {
        return m9545Ng() ? 0 : 2;
    }
}
