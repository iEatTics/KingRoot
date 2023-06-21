package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class btb extends JceStruct {
    static ArrayList<btc> bMA = new ArrayList<>();
    public int ret = 0;

    /* renamed from: gc */
    public String f2080gc = "";
    public int bJp = 0;
    public ArrayList<btc> bMz = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new btb();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.ret != 0) {
            jceOutputStream.write(this.ret, 0);
        }
        if (this.f2080gc != null) {
            jceOutputStream.write(this.f2080gc, 1);
        }
        if (this.bJp != 0) {
            jceOutputStream.write(this.bJp, 2);
        }
        if (this.bMz != null) {
            jceOutputStream.write((Collection) this.bMz, 3);
        }
    }

    static {
        bMA.add(new btc());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.ret = jceInputStream.read(this.ret, 0, false);
        this.f2080gc = jceInputStream.readString(1, false);
        this.bJp = jceInputStream.read(this.bJp, 2, false);
        this.bMz = (ArrayList) jceInputStream.read((JceInputStream) bMA, 3, false);
    }
}
