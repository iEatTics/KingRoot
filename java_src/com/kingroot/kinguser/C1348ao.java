package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.ao */
/* loaded from: classes.dex */
public final class C1348ao extends JceStruct {

    /* renamed from: hV */
    static ArrayList<String> f1499hV = new ArrayList<>();

    /* renamed from: hW */
    static Map<String, String> f1500hW;

    /* renamed from: hr */
    public int f1506hr = 0;

    /* renamed from: hE */
    public ArrayList<String> f1501hE = null;

    /* renamed from: hF */
    public int f1502hF = 0;

    /* renamed from: hS */
    public boolean f1503hS = false;

    /* renamed from: hT */
    public int f1504hT = 0;

    /* renamed from: hU */
    public Map<String, String> f1505hU = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1348ao();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1506hr, 0);
        jceOutputStream.write((Collection) this.f1501hE, 1);
        jceOutputStream.write(this.f1502hF, 2);
        if (this.f1503hS) {
            jceOutputStream.write(this.f1503hS, 3);
        }
        jceOutputStream.write(this.f1504hT, 4);
        if (this.f1505hU != null) {
            jceOutputStream.write((Map) this.f1505hU, 5);
        }
    }

    static {
        f1499hV.add("");
        f1500hW = new HashMap();
        f1500hW.put("", "");
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1506hr = jceInputStream.read(this.f1506hr, 0, true);
        this.f1501hE = (ArrayList) jceInputStream.read((JceInputStream) f1499hV, 1, true);
        this.f1502hF = jceInputStream.read(this.f1502hF, 2, true);
        this.f1503hS = jceInputStream.read(this.f1503hS, 3, false);
        this.f1504hT = jceInputStream.read(this.f1504hT, 4, false);
        this.f1505hU = (Map) jceInputStream.read((JceInputStream) f1500hW, 5, false);
    }
}
