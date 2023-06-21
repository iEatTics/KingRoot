package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* loaded from: classes.dex */
public final class Comment extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f4903lo;
    public String title = "";
    public String comment = "";
    public String user = "";
    public int score = 0;

    static {
        f4903lo = !Comment.class.desiredAssertionStatus();
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    /* renamed from: np */
    public void m431np(String str) {
        this.user = str;
    }

    /* renamed from: gl */
    public void m432gl(int i) {
        this.score = i;
    }

    public Comment() {
        setTitle(this.title);
        setComment(this.comment);
        m431np(this.user);
        m432gl(this.score);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Comment comment = (Comment) obj;
        return JceUtil.equals(this.title, comment.title) && JceUtil.equals(this.comment, comment.comment) && JceUtil.equals(this.user, comment.user) && JceUtil.equals(this.score, comment.score);
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
            if (f4903lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.comment, 1);
        jceOutputStream.write(this.user, 2);
        jceOutputStream.write(this.score, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        setTitle(jceInputStream.readString(0, true));
        setComment(jceInputStream.readString(1, true));
        m431np(jceInputStream.readString(2, true));
        m432gl(jceInputStream.read(this.score, 3, true));
    }
}
