package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ds */
/* loaded from: classes.dex */
public final class C3004ds extends JceStruct {

    /* renamed from: nK */
    static ArrayList<C2688ca> f2505nK;
    public String sQUA = "";
    public int nGUID = 0;
    public ArrayList<C3005dt> listDownSoftItems = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.sQUA, 0);
        jceOutputStream.write(this.nGUID, 1);
        jceOutputStream.write((Collection) this.listDownSoftItems, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.sQUA = jceInputStream.readString(0, true);
        this.nGUID = jceInputStream.read(this.nGUID, 1, true);
        if (f2505nK == null) {
            f2505nK = new ArrayList<>();
            f2505nK.add(new C2688ca());
        }
        this.listDownSoftItems = (ArrayList) jceInputStream.read((JceInputStream) f2505nK, 2, true);
    }
}
