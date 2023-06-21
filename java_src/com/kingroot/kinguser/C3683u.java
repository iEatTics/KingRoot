package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.u */
/* loaded from: classes.dex */
public final class C3683u extends JceStruct {

    /* renamed from: gq */
    static byte[] f3605gq;

    /* renamed from: gr */
    static C0951ai f3606gr;

    /* renamed from: gs */
    static C1007aj f3607gs;

    /* renamed from: gh */
    public int f3608gh = 0;

    /* renamed from: gn */
    public byte[] f3609gn = null;
    public int conchSeqno = 0;

    /* renamed from: go */
    public C0951ai f3610go = null;

    /* renamed from: gp */
    public C1007aj f3611gp = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f3608gh, 0);
        if (this.f3609gn != null) {
            jceOutputStream.write(this.f3609gn, 1);
        }
        if (this.conchSeqno != 0) {
            jceOutputStream.write(this.conchSeqno, 2);
        }
        if (this.f3610go != null) {
            jceOutputStream.write((JceStruct) this.f3610go, 3);
        }
        if (this.f3611gp != null) {
            jceOutputStream.write((JceStruct) this.f3611gp, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3608gh = jceInputStream.read(this.f3608gh, 0, false);
        if (f3605gq == null) {
            f3605gq = new byte[1];
            f3605gq[0] = 0;
        }
        this.f3609gn = jceInputStream.read(f3605gq, 1, false);
        this.conchSeqno = jceInputStream.read(this.conchSeqno, 2, false);
        if (f3606gr == null) {
            f3606gr = new C0951ai();
        }
        this.f3610go = (C0951ai) jceInputStream.read((JceStruct) f3606gr, 3, false);
        if (f3607gs == null) {
            f3607gs = new C1007aj();
        }
        this.f3611gp = (C1007aj) jceInputStream.read((JceStruct) f3607gs, 4, false);
    }
}
