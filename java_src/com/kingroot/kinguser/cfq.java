package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.kinguser.cff;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class cfq {
    private cff bYN;
    private String cdv;
    private boolean cdw = false;

    public cfq(Context context, cff cffVar, boolean z) {
        this.cdv = "";
        this.bYN = cffVar;
        this.cdv = this.bYN.alL().mo2717fV();
    }

    private boolean alb() {
        if (cfd.m4645fI()) {
            return TextUtils.isEmpty(this.cdv);
        }
        return false;
    }

    public void amB() {
        if (this.bYN.alL().mo2719fT() && !this.cdw && alb()) {
            this.bYN.alL().mo2718fU();
            this.cdw = true;
            cfd.alH().mo4492a(5006, amC(), new C2109bd(), 0, new cci() { // from class: com.kingroot.kinguser.cfq.1
                @Override // com.kingroot.kinguser.cci
                /* renamed from: a */
                public void mo457a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
                    if (i3 == 0 && i4 == 0 && jceStruct != null) {
                        String str = ((C2109bd) jceStruct).f1660kj;
                        if (!TextUtils.isEmpty(str)) {
                            cfq.this.cdv = str;
                            cfq.this.bYN.alL().mo2714h(str, true);
                            cfq.this.bYN.alL().mo2712i(str, true);
                        }
                    }
                    cfq.this.cdw = false;
                }
            }, 30000L);
        }
    }

    /* renamed from: L */
    public void m4408L(int i, boolean z) {
        C1754ax m4407M;
        if (this.bYN.alL().mo2719fT() && (m4407M = m4407M(i, z)) != null) {
            cfd.alH().mo4492a(5007, m4407M, new C2114be(), 0, new cci() { // from class: com.kingroot.kinguser.cfq.2
                @Override // com.kingroot.kinguser.cci
                /* renamed from: a */
                public void mo457a(int i2, int i3, int i4, int i5, JceStruct jceStruct) {
                    if (i4 == 0 && i5 == 0 && jceStruct != null) {
                        String str = ((C2114be) jceStruct).f1662kj;
                        if (!TextUtils.isEmpty(str)) {
                            cfq.this.cdv = str;
                            cfq.this.bYN.alL().mo2714h(str, false);
                            cfq.this.bYN.alL().mo2712i(str, false);
                        } else if (cfd.alE()) {
                            throw new RuntimeException("vid is empty: " + str);
                        }
                    }
                }
            }, 30000L);
        }
    }

    private C1678av amC() {
        C1678av c1678av = new C1678av();
        String mo2716fW = this.bYN.alL().mo2716fW();
        if (mo2716fW == null) {
            mo2716fW = "";
        }
        c1678av.f1614jP = mo2716fW;
        return c1678av;
    }

    /* renamed from: M */
    private C1754ax m4407M(int i, boolean z) {
        String mo2717fV = this.bYN.alL().mo2717fV();
        String mo2716fW = this.bYN.alL().mo2716fW();
        if (mo2717fV == null) {
            mo2717fV = "";
        }
        if (mo2716fW == null) {
            mo2716fW = "";
        }
        if (z) {
            C1754ax c1754ax = new C1754ax();
            c1754ax.f1623jU = i;
            c1754ax.f1624jV = mo2717fV;
            c1754ax.f1622jP = mo2716fW;
            return c1754ax;
        } else if (alb() || TextUtils.isEmpty(mo2717fV) || TextUtils.isEmpty(mo2716fW) || mo2717fV.equals(mo2716fW)) {
            return null;
        } else {
            C1754ax c1754ax2 = new C1754ax();
            c1754ax2.f1623jU = i;
            c1754ax2.f1624jV = mo2717fV;
            c1754ax2.f1622jP = mo2716fW;
            return c1754ax2;
        }
    }

    /* renamed from: c */
    public void m4401c(cff.InterfaceC2743c interfaceC2743c) {
        interfaceC2743c.mo4544a(0L, 15020, new C2051bb(), 0, new cck() { // from class: com.kingroot.kinguser.cfq.3
            @Override // com.kingroot.kinguser.cck
            /* renamed from: a */
            public cfp<Long, Integer, JceStruct> mo2772a(int i, long j, int i2, JceStruct jceStruct) {
                if (jceStruct == null) {
                    return null;
                }
                switch (i2) {
                    case 15020:
                        return cfq.this.m4406a(j, i, (C2051bb) jceStruct);
                    default:
                        return null;
                }
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public cfp<Long, Integer, JceStruct> m4406a(long j, int i, C2051bb c2051bb) {
        if (c2051bb != null) {
            if (c2051bb.f1653ki == 0) {
                m4408L(1, true);
            } else if (c2051bb.f1653ki == 1) {
                m4408L(1, false);
            }
        }
        return null;
    }
}
