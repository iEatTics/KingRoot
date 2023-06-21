package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.l */
/* loaded from: classes.dex */
public final class C3267l extends JceStruct {

    /* renamed from: ez */
    static Map<Integer, String> f2987ez;

    /* renamed from: ey */
    public Map<Integer, String> f2988ey = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Map) this.f2988ey, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2987ez == null) {
            f2987ez = new HashMap();
            f2987ez.put(0, "");
        }
        this.f2988ey = (Map) jceInputStream.read((JceInputStream) f2987ez, 0, true);
    }
}
