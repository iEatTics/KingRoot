package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
class cbk implements cat {
    final /* synthetic */ cbi bWJ;

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        if ((jceStruct instanceof C2853d) && this.bWJ != null) {
            C2853d c2853d = (C2853d) jceStruct;
            if (i3 == 0 && i4 == 0 && c2853d.retCode == 0) {
                this.bWJ.m5007eG(true);
            } else {
                this.bWJ.m5007eG(false);
            }
        }
    }
}
