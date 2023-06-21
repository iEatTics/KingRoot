package com.kingroot.kinguser;

import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class arf extends aqy<arp> {
    public arf() {
        this.aLz = (arp) arq.m9524a(arp.class, true);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nb */
    public String mo9534Nb() {
        return C3953zi.m1311pr().getString(R.string.examination_unit_normal_showing_memory_free);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nc */
    public String mo9533Nc() {
        return String.format(C3953zi.m1311pr().getString(R.string.examination_unit_abnormal_showing_memory_free), act.m12654b(((arp) this.aLz).m9525No(), false));
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
        if (m9545Ng()) {
            return 0;
        }
        int m9525No = (int) (((((float) ((arp) this.aLz).m9525No()) * 1.0f) / ((float) aav.m12902qo())) * 100.0f);
        if (m9525No <= 10) {
            return 2;
        }
        if (m9525No <= 30) {
            return 4;
        }
        if (m9525No > 100) {
            return 2;
        }
        return 8;
    }
}
