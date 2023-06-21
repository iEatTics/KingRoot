package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* loaded from: classes.dex */
public final class HotwordInfo extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f4910lo;
    public String hotword = "";

    static {
        f4910lo = !HotwordInfo.class.desiredAssertionStatus();
    }

    /* renamed from: nr */
    public void m427nr(String str) {
        this.hotword = str;
    }

    public HotwordInfo() {
        m427nr(this.hotword);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.hotword, ((HotwordInfo) obj).hotword);
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
            if (f4910lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.hotword, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m427nr(jceInputStream.readString(0, true));
    }
}
