package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.eb */
/* loaded from: classes.dex */
public final class C3014eb extends JceStruct {

    /* renamed from: ob */
    static ArrayList<String> f2531ob;

    /* renamed from: oe */
    static ArrayList<String> f2532oe;

    /* renamed from: nZ */
    public ArrayList<String> f2533nZ = null;

    /* renamed from: od */
    public ArrayList<String> f2534od = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2533nZ != null) {
            jceOutputStream.write((Collection) this.f2533nZ, 0);
        }
        if (this.f2534od != null) {
            jceOutputStream.write((Collection) this.f2534od, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2531ob == null) {
            f2531ob = new ArrayList<>();
            f2531ob.add("");
        }
        this.f2533nZ = (ArrayList) jceInputStream.read((JceInputStream) f2531ob, 0, false);
        if (f2532oe == null) {
            f2532oe = new ArrayList<>();
            f2532oe.add("");
        }
        this.f2534od = (ArrayList) jceInputStream.read((JceInputStream) f2532oe, 1, false);
    }
}
