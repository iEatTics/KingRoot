package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.kingroot.kinguser.bvn;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* loaded from: classes.dex */
public final class AndroidCategoryExpand extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f4896lo;
    public int createtime = 0;
    public int agree = 0;
    public int disagree = 0;
    public int ispush = bvn.bQb.value();
    public int updatetime = 0;

    static {
        f4896lo = !AndroidCategoryExpand.class.desiredAssertionStatus();
    }

    /* renamed from: kw */
    public void m440kw(int i) {
        this.createtime = i;
    }

    /* renamed from: kx */
    public void m439kx(int i) {
        this.agree = i;
    }

    /* renamed from: ky */
    public void m438ky(int i) {
        this.disagree = i;
    }

    /* renamed from: kz */
    public void m437kz(int i) {
        this.ispush = i;
    }

    /* renamed from: kA */
    public void m441kA(int i) {
        this.updatetime = i;
    }

    public AndroidCategoryExpand() {
        m440kw(this.createtime);
        m439kx(this.agree);
        m438ky(this.disagree);
        m437kz(this.ispush);
        m441kA(this.updatetime);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        AndroidCategoryExpand androidCategoryExpand = (AndroidCategoryExpand) obj;
        return JceUtil.equals(this.createtime, androidCategoryExpand.createtime) && JceUtil.equals(this.agree, androidCategoryExpand.agree) && JceUtil.equals(this.disagree, androidCategoryExpand.disagree) && JceUtil.equals(this.ispush, androidCategoryExpand.ispush) && JceUtil.equals(this.updatetime, androidCategoryExpand.updatetime);
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
            if (f4896lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.createtime, 0);
        jceOutputStream.write(this.agree, 1);
        jceOutputStream.write(this.disagree, 2);
        jceOutputStream.write(this.ispush, 3);
        jceOutputStream.write(this.updatetime, 4);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m440kw(jceInputStream.read(this.createtime, 0, false));
        m439kx(jceInputStream.read(this.agree, 1, false));
        m438ky(jceInputStream.read(this.disagree, 2, false));
        m437kz(jceInputStream.read(this.ispush, 3, false));
        m441kA(jceInputStream.read(this.updatetime, 4, false));
    }
}
