package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.y */
/* loaded from: classes.dex */
public final class C3909y extends JceStruct {

    /* renamed from: gA */
    public boolean f3999gA = true;

    /* renamed from: gB */
    public boolean f4000gB = true;

    /* renamed from: gC */
    public String f4001gC = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (!this.f3999gA) {
            jceOutputStream.write(this.f3999gA, 0);
        }
        if (!this.f4000gB) {
            jceOutputStream.write(this.f4000gB, 1);
        }
        if (this.f4001gC != null) {
            jceOutputStream.write(this.f4001gC, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3999gA = jceInputStream.read(this.f3999gA, 0, false);
        this.f4000gB = jceInputStream.read(this.f4000gB, 1, false);
        this.f4001gC = jceInputStream.readString(2, false);
    }
}
