package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class caw implements cat {
    final /* synthetic */ cav bWC;

    /* JADX INFO: Access modifiers changed from: package-private */
    public caw(cav cavVar) {
        this.bWC = cavVar;
    }

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        cas m2700gd;
        if (jceStruct instanceof C2817ck) {
            C2817ck c2817ck = (C2817ck) jceStruct;
            if (c2817ck.f2341lJ == 4 && (m2700gd = C3383ol.m2703fZ().m2700gd()) != null) {
                if (c2817ck.f2342lT == 1) {
                    m2700gd.mo5038dm(true);
                    C2802cg mo5044Tk = m2700gd.mo5044Tk();
                    if (mo5044Tk != null) {
                        new cax(this, mo5044Tk).m5104ny();
                    }
                } else if (c2817ck.f2342lT == 2) {
                    m2700gd.mo5038dm(false);
                }
            }
        }
    }
}
