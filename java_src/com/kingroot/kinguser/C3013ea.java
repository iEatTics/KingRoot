package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ea */
/* loaded from: classes.dex */
public final class C3013ea extends JceStruct {

    /* renamed from: ob */
    static ArrayList<String> f2525ob;

    /* renamed from: oc */
    static ArrayList<String> f2526oc;

    /* renamed from: nX */
    public String f2527nX = "";

    /* renamed from: nY */
    public String f2528nY = "";

    /* renamed from: nZ */
    public ArrayList<String> f2529nZ = null;

    /* renamed from: oa */
    public ArrayList<String> f2530oa = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2527nX != null) {
            jceOutputStream.write(this.f2527nX, 0);
        }
        if (this.f2528nY != null) {
            jceOutputStream.write(this.f2528nY, 1);
        }
        if (this.f2529nZ != null) {
            jceOutputStream.write((Collection) this.f2529nZ, 2);
        }
        if (this.f2530oa != null) {
            jceOutputStream.write((Collection) this.f2530oa, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2527nX = jceInputStream.readString(0, false);
        this.f2528nY = jceInputStream.readString(1, false);
        if (f2525ob == null) {
            f2525ob = new ArrayList<>();
            f2525ob.add("");
        }
        this.f2529nZ = (ArrayList) jceInputStream.read((JceInputStream) f2525ob, 2, false);
        if (f2526oc == null) {
            f2526oc = new ArrayList<>();
            f2526oc.add("");
        }
        this.f2530oa = (ArrayList) jceInputStream.read((JceInputStream) f2526oc, 3, false);
    }
}
