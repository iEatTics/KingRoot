package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bw */
/* loaded from: classes.dex */
public final class C2642bw extends JceStruct {

    /* renamed from: kb */
    static byte[] f2127kb;
    public String filename = "";
    public String checksum = "";
    public int timestamp = 0;
    public String url = "";

    /* renamed from: ll */
    public int f2128ll = 0;

    /* renamed from: lm */
    public String f2129lm = "";
    public byte[] data = null;

    /* renamed from: ln */
    public int f2130ln = 0;
    public int size = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.filename, 0);
        jceOutputStream.write(this.checksum, 1);
        jceOutputStream.write(this.timestamp, 2);
        jceOutputStream.write(this.url, 3);
        if (this.f2128ll != 0) {
            jceOutputStream.write(this.f2128ll, 4);
        }
        if (this.f2129lm != null) {
            jceOutputStream.write(this.f2129lm, 5);
        }
        if (this.data != null) {
            jceOutputStream.write(this.data, 6);
        }
        if (this.f2130ln != 0) {
            jceOutputStream.write(this.f2130ln, 7);
        }
        if (this.size != 0) {
            jceOutputStream.write(this.size, 8);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.filename = jceInputStream.readString(0, true);
        this.checksum = jceInputStream.readString(1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.url = jceInputStream.readString(3, true);
        this.f2128ll = jceInputStream.read(this.f2128ll, 4, false);
        this.f2129lm = jceInputStream.readString(5, false);
        if (f2127kb == null) {
            f2127kb = new byte[1];
            f2127kb[0] = 0;
        }
        this.data = jceInputStream.read(f2127kb, 6, false);
        this.f2130ln = jceInputStream.read(this.f2130ln, 7, false);
        this.size = jceInputStream.read(this.size, 8, false);
    }
}
