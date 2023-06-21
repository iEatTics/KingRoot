package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.w */
/* loaded from: classes.dex */
public final class C3820w extends JceStruct {

    /* renamed from: gt */
    public long f3847gt = 0;

    /* renamed from: gu */
    public long f3848gu = 0;
    public int action = 0;
    public int conchSeqno = 0;

    /* renamed from: gh */
    public int f3846gh = 0;

    /* renamed from: gw */
    public int f3850gw = 0;

    /* renamed from: gv */
    public int f3849gv = 0;

    /* renamed from: gx */
    public int f3851gx = 0;

    /* renamed from: fY */
    public int f3845fY = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3847gt != 0) {
            jceOutputStream.write(this.f3847gt, 0);
        }
        if (this.f3848gu != 0) {
            jceOutputStream.write(this.f3848gu, 1);
        }
        jceOutputStream.write(this.action, 2);
        if (this.conchSeqno != 0) {
            jceOutputStream.write(this.conchSeqno, 3);
        }
        jceOutputStream.write(this.f3846gh, 4);
        jceOutputStream.write(this.f3850gw, 5);
        jceOutputStream.write(this.f3849gv, 6);
        jceOutputStream.write(this.f3851gx, 7);
        if (this.f3845fY != 0) {
            jceOutputStream.write(this.f3845fY, 8);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3847gt = jceInputStream.read(this.f3847gt, 0, false);
        this.f3848gu = jceInputStream.read(this.f3848gu, 1, false);
        this.action = jceInputStream.read(this.action, 2, false);
        this.conchSeqno = jceInputStream.read(this.conchSeqno, 3, false);
        this.f3846gh = jceInputStream.read(this.f3846gh, 4, false);
        this.f3850gw = jceInputStream.read(this.f3850gw, 5, false);
        this.f3849gv = jceInputStream.read(this.f3849gv, 6, false);
        this.f3851gx = jceInputStream.read(this.f3851gx, 7, false);
        this.f3845fY = jceInputStream.read(this.f3845fY, 8, false);
    }
}
