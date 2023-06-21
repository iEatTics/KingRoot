package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.h */
/* loaded from: classes.dex */
public final class C3144h extends JceStruct implements Cloneable {

    /* renamed from: ea */
    static byte[] f2736ea;

    /* renamed from: er */
    static byte[] f2737er;

    /* renamed from: es */
    static byte[] f2738es;
    public int fileId = 0;

    /* renamed from: dX */
    public byte[] f2739dX = null;
    public int timestamp = 0;
    public String url = "";

    /* renamed from: el */
    public boolean f2740el = false;

    /* renamed from: em */
    public byte[] f2741em = null;

    /* renamed from: en */
    public byte[] f2742en = null;

    /* renamed from: eo */
    public int f2743eo = 0;
    public int fileSize = 0;

    /* renamed from: ep */
    public long f2744ep = 0;

    /* renamed from: eq */
    public int f2745eq = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.fileId, 0);
        jceOutputStream.write(this.f2739dX, 1);
        jceOutputStream.write(this.timestamp, 2);
        if (this.url != null) {
            jceOutputStream.write(this.url, 3);
        }
        if (this.f2740el) {
            jceOutputStream.write(this.f2740el, 4);
        }
        if (this.f2741em != null) {
            jceOutputStream.write(this.f2741em, 5);
        }
        if (this.f2742en != null) {
            jceOutputStream.write(this.f2742en, 6);
        }
        if (this.f2743eo != 0) {
            jceOutputStream.write(this.f2743eo, 7);
        }
        if (this.fileSize != 0) {
            jceOutputStream.write(this.fileSize, 8);
        }
        if (this.f2744ep != 0) {
            jceOutputStream.write(this.f2744ep, 9);
        }
        if (this.f2745eq != 0) {
            jceOutputStream.write(this.f2745eq, 10);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.fileId = jceInputStream.read(this.fileId, 0, true);
        if (f2736ea == null) {
            f2736ea = new byte[1];
            f2736ea[0] = 0;
        }
        this.f2739dX = jceInputStream.read(f2736ea, 1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.url = jceInputStream.readString(3, false);
        this.f2740el = jceInputStream.read(this.f2740el, 4, false);
        if (f2737er == null) {
            f2737er = new byte[1];
            f2737er[0] = 0;
        }
        this.f2741em = jceInputStream.read(f2737er, 5, false);
        if (f2738es == null) {
            f2738es = new byte[1];
            f2738es[0] = 0;
        }
        this.f2742en = jceInputStream.read(f2738es, 6, false);
        this.f2743eo = jceInputStream.read(this.f2743eo, 7, false);
        this.fileSize = jceInputStream.read(this.fileSize, 8, false);
        this.f2744ep = jceInputStream.read(this.f2744ep, 9, false);
        this.f2745eq = jceInputStream.read(this.f2745eq, 10, false);
    }

    /* renamed from: Y */
    public int m3640Y() {
        return this.fileId;
    }
}
