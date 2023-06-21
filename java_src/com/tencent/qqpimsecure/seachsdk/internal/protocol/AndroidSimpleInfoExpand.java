package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class AndroidSimpleInfoExpand extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f4897lo;

    /* renamed from: nf */
    static ArrayList<String> f4898nf;
    public String recommend = "";
    public int sign = 0;
    public String signature = "";
    public ArrayList<String> picurls = null;

    static {
        f4897lo = !AndroidSimpleInfoExpand.class.desiredAssertionStatus();
    }

    /* renamed from: nn */
    public void m434nn(String str) {
        this.recommend = str;
    }

    /* renamed from: kB */
    public void m435kB(int i) {
        this.sign = i;
    }

    /* renamed from: no */
    public void m433no(String str) {
        this.signature = str;
    }

    /* renamed from: E */
    public void m436E(ArrayList<String> arrayList) {
        this.picurls = arrayList;
    }

    public AndroidSimpleInfoExpand() {
        m434nn(this.recommend);
        m435kB(this.sign);
        m433no(this.signature);
        m436E(this.picurls);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        AndroidSimpleInfoExpand androidSimpleInfoExpand = (AndroidSimpleInfoExpand) obj;
        return JceUtil.equals(this.recommend, androidSimpleInfoExpand.recommend) && JceUtil.equals(this.sign, androidSimpleInfoExpand.sign) && JceUtil.equals(this.signature, androidSimpleInfoExpand.signature) && JceUtil.equals(this.picurls, androidSimpleInfoExpand.picurls);
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
            if (f4897lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.recommend != null) {
            jceOutputStream.write(this.recommend, 0);
        }
        jceOutputStream.write(this.sign, 1);
        if (this.signature != null) {
            jceOutputStream.write(this.signature, 2);
        }
        if (this.picurls != null) {
            jceOutputStream.write((Collection) this.picurls, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m434nn(jceInputStream.readString(0, false));
        m435kB(jceInputStream.read(this.sign, 1, false));
        m433no(jceInputStream.readString(2, false));
        if (f4898nf == null) {
            f4898nf = new ArrayList<>();
            f4898nf.add("");
        }
        m436E((ArrayList) jceInputStream.read((JceInputStream) f4898nf, 3, false));
    }
}
