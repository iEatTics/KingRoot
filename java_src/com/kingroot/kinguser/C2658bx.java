package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.bx */
/* loaded from: classes.dex */
public final class C2658bx extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2140lo;
    public String checksum = "";
    public int timestamp = 0;
    public int versioncode = 0;

    static {
        f2140lo = !C2658bx.class.desiredAssertionStatus();
    }

    /* renamed from: u */
    public void m5263u(String str) {
        this.checksum = str;
    }

    /* renamed from: e */
    public void m5265e(int i) {
        this.timestamp = i;
    }

    /* renamed from: f */
    public void m5264f(int i) {
        this.versioncode = i;
    }

    public C2658bx() {
        m5263u(this.checksum);
        m5265e(this.timestamp);
        m5264f(this.versioncode);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2658bx c2658bx = (C2658bx) obj;
        return JceUtil.equals(this.checksum, c2658bx.checksum) && JceUtil.equals(this.timestamp, c2658bx.timestamp) && JceUtil.equals(this.versioncode, c2658bx.versioncode);
    }

    public int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f2140lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.checksum, 0);
        jceOutputStream.write(this.timestamp, 1);
        jceOutputStream.write(this.versioncode, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m5263u(jceInputStream.readString(0, true));
        m5265e(jceInputStream.read(this.timestamp, 1, true));
        m5264f(jceInputStream.read(this.versioncode, 2, true));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.checksum, "checksum");
        jceDisplayer.display(this.timestamp, "timestamp");
        jceDisplayer.display(this.versioncode, "versioncode");
    }
}
