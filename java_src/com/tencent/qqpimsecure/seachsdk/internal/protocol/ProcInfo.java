package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* loaded from: classes.dex */
public final class ProcInfo extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f4912lo;
    public String file = "";
    public String desc = "";
    public String uid = "";

    static {
        f4912lo = !ProcInfo.class.desiredAssertionStatus();
    }

    /* renamed from: nt */
    public void m419nt(String str) {
        this.file = str;
    }

    /* renamed from: kK */
    public void m420kK(String str) {
        this.desc = str;
    }

    /* renamed from: H */
    public void m421H(String str) {
        this.uid = str;
    }

    public ProcInfo() {
        m419nt(this.file);
        m420kK(this.desc);
        m421H(this.uid);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ProcInfo procInfo = (ProcInfo) obj;
        return JceUtil.equals(this.file, procInfo.file) && JceUtil.equals(this.desc, procInfo.desc) && JceUtil.equals(this.uid, procInfo.uid);
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
            if (f4912lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.file, 0);
        if (this.desc != null) {
            jceOutputStream.write(this.desc, 1);
        }
        if (this.uid != null) {
            jceOutputStream.write(this.uid, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m419nt(jceInputStream.readString(0, true));
        m420kK(jceInputStream.readString(1, false));
        m421H(jceInputStream.readString(2, false));
    }
}
