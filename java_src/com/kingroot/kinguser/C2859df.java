package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.df */
/* loaded from: classes.dex */
public final class C2859df extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2441lo;
    public String uid = "";
    public String softname = "";
    public String version = "";
    public String producttime = "";
    public String cert = "";
    public int versioncode = 0;
    public String name = "";
    public int isbuildin = 0;
    public String newest_version = "";
    public int old_versioncode = 0;
    public int categorytype = 0;
    public int category = 0;
    public int break_flag = 0;
    public int source = 0;
    public int sdk_version = 0;
    public int appid = 0;
    public int filesize = 0;
    public String apkFileMd5 = "";
    public int partnerId = 0;

    static {
        f2441lo = !C2859df.class.desiredAssertionStatus();
    }

    /* renamed from: H */
    public void m4220H(String str) {
        this.uid = str;
    }

    /* renamed from: I */
    public void m4219I(String str) {
        this.softname = str;
    }

    /* renamed from: J */
    public void m4218J(String str) {
        this.version = str;
    }

    /* renamed from: K */
    public void m4217K(String str) {
        this.producttime = str;
    }

    /* renamed from: L */
    public void m4216L(String str) {
        this.cert = str;
    }

    /* renamed from: f */
    public void m4213f(int i) {
        this.versioncode = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    /* renamed from: p */
    public void m4212p(int i) {
        this.isbuildin = i;
    }

    /* renamed from: M */
    public void m4215M(String str) {
        this.newest_version = str;
    }

    /* renamed from: q */
    public void m4211q(int i) {
        this.old_versioncode = i;
    }

    /* renamed from: r */
    public void m4210r(int i) {
        this.categorytype = i;
    }

    /* renamed from: s */
    public void m4209s(int i) {
        this.category = i;
    }

    /* renamed from: t */
    public void m4208t(int i) {
        this.break_flag = i;
    }

    public void setSource(int i) {
        this.source = i;
    }

    /* renamed from: u */
    public void m4207u(int i) {
        this.sdk_version = i;
    }

    /* renamed from: v */
    public void m4206v(int i) {
        this.appid = i;
    }

    /* renamed from: w */
    public void m4205w(int i) {
        this.filesize = i;
    }

    /* renamed from: N */
    public void m4214N(String str) {
        this.apkFileMd5 = str;
    }

    /* renamed from: x */
    public void m4204x(int i) {
        this.partnerId = i;
    }

    public C2859df() {
        m4220H(this.uid);
        m4219I(this.softname);
        m4218J(this.version);
        m4217K(this.producttime);
        m4216L(this.cert);
        m4213f(this.versioncode);
        setName(this.name);
        m4212p(this.isbuildin);
        m4215M(this.newest_version);
        m4211q(this.old_versioncode);
        m4210r(this.categorytype);
        m4209s(this.category);
        m4208t(this.break_flag);
        setSource(this.source);
        m4207u(this.sdk_version);
        m4206v(this.appid);
        m4205w(this.filesize);
        m4214N(this.apkFileMd5);
        m4204x(this.partnerId);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2859df c2859df = (C2859df) obj;
        return JceUtil.equals(this.uid, c2859df.uid) && JceUtil.equals(this.softname, c2859df.softname) && JceUtil.equals(this.version, c2859df.version) && JceUtil.equals(this.producttime, c2859df.producttime) && JceUtil.equals(this.cert, c2859df.cert) && JceUtil.equals(this.versioncode, c2859df.versioncode) && JceUtil.equals(this.name, c2859df.name) && JceUtil.equals(this.isbuildin, c2859df.isbuildin) && JceUtil.equals(this.newest_version, c2859df.newest_version) && JceUtil.equals(this.old_versioncode, c2859df.old_versioncode) && JceUtil.equals(this.categorytype, c2859df.categorytype) && JceUtil.equals(this.category, c2859df.category) && JceUtil.equals(this.break_flag, c2859df.break_flag) && JceUtil.equals(this.source, c2859df.source) && JceUtil.equals(this.sdk_version, c2859df.sdk_version) && JceUtil.equals(this.appid, c2859df.appid) && JceUtil.equals(this.filesize, c2859df.filesize) && JceUtil.equals(this.apkFileMd5, c2859df.apkFileMd5) && JceUtil.equals(this.partnerId, c2859df.partnerId);
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
            if (f2441lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uid, 0);
        jceOutputStream.write(this.softname, 1);
        jceOutputStream.write(this.version, 2);
        if (this.producttime != null) {
            jceOutputStream.write(this.producttime, 3);
        }
        if (this.cert != null) {
            jceOutputStream.write(this.cert, 4);
        }
        jceOutputStream.write(this.versioncode, 5);
        if (this.name != null) {
            jceOutputStream.write(this.name, 6);
        }
        jceOutputStream.write(this.isbuildin, 7);
        if (this.newest_version != null) {
            jceOutputStream.write(this.newest_version, 8);
        }
        jceOutputStream.write(this.old_versioncode, 9);
        jceOutputStream.write(this.categorytype, 10);
        jceOutputStream.write(this.category, 11);
        jceOutputStream.write(this.break_flag, 12);
        jceOutputStream.write(this.source, 13);
        jceOutputStream.write(this.sdk_version, 14);
        jceOutputStream.write(this.appid, 15);
        jceOutputStream.write(this.filesize, 16);
        if (this.apkFileMd5 != null) {
            jceOutputStream.write(this.apkFileMd5, 17);
        }
        jceOutputStream.write(this.partnerId, 18);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m4220H(jceInputStream.readString(0, true));
        m4219I(jceInputStream.readString(1, true));
        m4218J(jceInputStream.readString(2, true));
        m4217K(jceInputStream.readString(3, false));
        m4216L(jceInputStream.readString(4, false));
        m4213f(jceInputStream.read(this.versioncode, 5, false));
        setName(jceInputStream.readString(6, false));
        m4212p(jceInputStream.read(this.isbuildin, 7, false));
        m4215M(jceInputStream.readString(8, false));
        m4211q(jceInputStream.read(this.old_versioncode, 9, false));
        m4210r(jceInputStream.read(this.categorytype, 10, false));
        m4209s(jceInputStream.read(this.category, 11, false));
        m4208t(jceInputStream.read(this.break_flag, 12, false));
        setSource(jceInputStream.read(this.source, 13, false));
        m4207u(jceInputStream.read(this.sdk_version, 14, false));
        m4206v(jceInputStream.read(this.appid, 15, false));
        m4205w(jceInputStream.read(this.filesize, 16, false));
        m4214N(jceInputStream.readString(17, false));
        m4204x(jceInputStream.read(this.partnerId, 18, false));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.uid, "uid");
        jceDisplayer.display(this.softname, "softname");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.producttime, "producttime");
        jceDisplayer.display(this.cert, "cert");
        jceDisplayer.display(this.versioncode, "versioncode");
        jceDisplayer.display(this.name, "name");
        jceDisplayer.display(this.isbuildin, "isbuildin");
        jceDisplayer.display(this.newest_version, "newest_version");
        jceDisplayer.display(this.old_versioncode, "old_versioncode");
        jceDisplayer.display(this.categorytype, "categorytype");
        jceDisplayer.display(this.category, "category");
        jceDisplayer.display(this.break_flag, "break_flag");
        jceDisplayer.display(this.source, "source");
        jceDisplayer.display(this.sdk_version, "sdk_version");
        jceDisplayer.display(this.appid, "appid");
        jceDisplayer.display(this.filesize, "filesize");
        jceDisplayer.display(this.apkFileMd5, "apkFileMd5");
        jceDisplayer.display(this.partnerId, "partnerId");
    }
}
