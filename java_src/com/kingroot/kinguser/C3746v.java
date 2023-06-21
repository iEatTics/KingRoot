package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.v */
/* loaded from: classes.dex */
public final class C3746v extends JceStruct {

    /* renamed from: gt */
    public long f3687gt = 0;

    /* renamed from: gu */
    public long f3688gu = 0;
    public int conchSeqno = 0;

    /* renamed from: gh */
    public int f3686gh = 0;

    /* renamed from: gv */
    public int f3689gv = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3687gt != 0) {
            jceOutputStream.write(this.f3687gt, 0);
        }
        if (this.f3688gu != 0) {
            jceOutputStream.write(this.f3688gu, 1);
        }
        if (this.conchSeqno != 0) {
            jceOutputStream.write(this.conchSeqno, 2);
        }
        jceOutputStream.write(this.f3686gh, 3);
        if (this.f3689gv != 0) {
            jceOutputStream.write(this.f3689gv, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3687gt = jceInputStream.read(this.f3687gt, 0, false);
        this.f3688gu = jceInputStream.read(this.f3688gu, 1, false);
        this.conchSeqno = jceInputStream.read(this.conchSeqno, 2, false);
        this.f3686gh = jceInputStream.read(this.f3686gh, 3, false);
        this.f3689gv = jceInputStream.read(this.f3689gv, 4, false);
    }
}
