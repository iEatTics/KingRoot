package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* loaded from: classes.dex */
public final class MySoftSimpleInfo extends JceStruct implements Cloneable {
    static SoftSimpleInfo bQf;

    /* renamed from: lo */
    static final /* synthetic */ boolean f4911lo;
    public SoftSimpleInfo softSimpleInfo = null;
    public int reportFeature = 0;
    public int official = 0;
    public int update = 0;
    public String function = "";

    static {
        f4911lo = !MySoftSimpleInfo.class.desiredAssertionStatus();
    }

    public SoftSimpleInfo aiA() {
        return this.softSimpleInfo;
    }

    /* renamed from: a */
    public void m426a(SoftSimpleInfo softSimpleInfo) {
        this.softSimpleInfo = softSimpleInfo;
    }

    /* renamed from: kD */
    public void m425kD(int i) {
        this.reportFeature = i;
    }

    /* renamed from: kE */
    public void m424kE(int i) {
        this.official = i;
    }

    public int aiB() {
        return this.update;
    }

    /* renamed from: kF */
    public void m423kF(int i) {
        this.update = i;
    }

    public String aiC() {
        return this.function;
    }

    /* renamed from: ns */
    public void m422ns(String str) {
        this.function = str;
    }

    public MySoftSimpleInfo() {
        m426a(this.softSimpleInfo);
        m425kD(this.reportFeature);
        m424kE(this.official);
        m423kF(this.update);
        m422ns(this.function);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        MySoftSimpleInfo mySoftSimpleInfo = (MySoftSimpleInfo) obj;
        return JceUtil.equals(this.softSimpleInfo, mySoftSimpleInfo.softSimpleInfo) && JceUtil.equals(this.reportFeature, mySoftSimpleInfo.reportFeature) && JceUtil.equals(this.official, mySoftSimpleInfo.official) && JceUtil.equals(this.update, mySoftSimpleInfo.update) && JceUtil.equals(this.function, mySoftSimpleInfo.function);
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
            if (f4911lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softSimpleInfo, 0);
        jceOutputStream.write(this.reportFeature, 1);
        jceOutputStream.write(this.official, 2);
        jceOutputStream.write(this.update, 3);
        if (this.function != null) {
            jceOutputStream.write(this.function, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (bQf == null) {
            bQf = new SoftSimpleInfo();
        }
        m426a((SoftSimpleInfo) jceInputStream.read((JceStruct) bQf, 0, true));
        m425kD(jceInputStream.read(this.reportFeature, 1, false));
        m424kE(jceInputStream.read(this.official, 2, false));
        m423kF(jceInputStream.read(this.update, 3, false));
        m422ns(jceInputStream.readString(4, false));
    }
}
