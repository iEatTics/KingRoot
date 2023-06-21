package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.em */
/* loaded from: classes.dex */
public final class C3025em extends JceStruct {

    /* renamed from: pq */
    public int f2610pq = 0;

    /* renamed from: pr */
    public int f2611pr = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2610pq != 0) {
            jceOutputStream.write(this.f2610pq, 0);
        }
        if (this.f2611pr != 0) {
            jceOutputStream.write(this.f2611pr, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2610pq = jceInputStream.read(this.f2610pq, 0, false);
        this.f2611pr = jceInputStream.read(this.f2611pr, 1, false);
    }
}
