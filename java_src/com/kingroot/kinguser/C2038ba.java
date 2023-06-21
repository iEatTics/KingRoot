package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ba */
/* loaded from: classes.dex */
public final class C2038ba extends JceStruct {

    /* renamed from: kg */
    static C1459aq f1646kg = new C1459aq();

    /* renamed from: kh */
    static ArrayList<C2036az> f1647kh = new ArrayList<>();
    public int seqNo = 0;

    /* renamed from: jX */
    public int f1648jX = 0;

    /* renamed from: kd */
    public int f1649kd = 1;

    /* renamed from: ke */
    public C1459aq f1650ke = null;

    /* renamed from: kf */
    public ArrayList<C2036az> f1651kf = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2038ba();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.seqNo != 0) {
            jceOutputStream.write(this.seqNo, 0);
        }
        if (this.f1648jX != 0) {
            jceOutputStream.write(this.f1648jX, 1);
        }
        if (this.f1649kd != 1) {
            jceOutputStream.write(this.f1649kd, 2);
        }
        if (this.f1650ke != null) {
            jceOutputStream.write((JceStruct) this.f1650ke, 3);
        }
        if (this.f1651kf != null) {
            jceOutputStream.write((Collection) this.f1651kf, 4);
        }
    }

    static {
        f1647kh.add(new C2036az());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.seqNo = jceInputStream.read(this.seqNo, 0, false);
        this.f1648jX = jceInputStream.read(this.f1648jX, 1, false);
        this.f1649kd = jceInputStream.read(this.f1649kd, 2, false);
        this.f1650ke = (C1459aq) jceInputStream.read((JceStruct) f1646kg, 3, false);
        this.f1651kf = (ArrayList) jceInputStream.read((JceInputStream) f1647kh, 4, false);
    }
}
