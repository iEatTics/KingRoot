package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bh */
/* loaded from: classes.dex */
public final class C2273bh extends JceStruct {

    /* renamed from: kn */
    static ArrayList<C2235bg> f1674kn = new ArrayList<>();
    public int seqNo = 0;

    /* renamed from: jX */
    public int f1675jX = 0;

    /* renamed from: km */
    public ArrayList<C2235bg> f1676km = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2273bh();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.seqNo != 0) {
            jceOutputStream.write(this.seqNo, 0);
        }
        if (this.f1675jX != 0) {
            jceOutputStream.write(this.f1675jX, 1);
        }
        if (this.f1676km != null) {
            jceOutputStream.write((Collection) this.f1676km, 2);
        }
    }

    static {
        f1674kn.add(new C2235bg());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.seqNo = jceInputStream.read(this.seqNo, 0, false);
        this.f1675jX = jceInputStream.read(this.f1675jX, 1, false);
        this.f1676km = (ArrayList) jceInputStream.read((JceInputStream) f1674kn, 2, false);
    }
}
