package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class Category extends JceStruct {
    static ArrayList<String> bPQ = new ArrayList<>();
    static CircleInfo bPR;

    /* renamed from: nj */
    static byte[] f4901nj;

    /* renamed from: id */
    public int f4902id = 0;
    public String name = "";
    public String icon = "";
    public int count = 0;
    public String welcome = "";
    public int autoalert = 0;
    public int endtime = 0;
    public int categorytype = 0;
    public int source = 1;
    public ArrayList<String> vecSubtitle = null;
    public String description = "";
    public int sign = 0;
    public int state = 0;
    public int viewtimes = 0;
    public byte[] expand = null;
    public int rank = 0;
    public int update_num = 0;
    public int showType = 0;
    public CircleInfo groupCircleInfo = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new Category();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f4902id, 0);
        jceOutputStream.write(this.name, 1);
        jceOutputStream.write(this.icon, 2);
        jceOutputStream.write(this.count, 3);
        if (this.welcome != null) {
            jceOutputStream.write(this.welcome, 4);
        }
        if (this.autoalert != 0) {
            jceOutputStream.write(this.autoalert, 5);
        }
        if (this.endtime != 0) {
            jceOutputStream.write(this.endtime, 6);
        }
        if (this.categorytype != 0) {
            jceOutputStream.write(this.categorytype, 7);
        }
        if (this.source != 1) {
            jceOutputStream.write(this.source, 8);
        }
        if (this.vecSubtitle != null) {
            jceOutputStream.write((Collection) this.vecSubtitle, 9);
        }
        if (this.description != null) {
            jceOutputStream.write(this.description, 10);
        }
        if (this.sign != 0) {
            jceOutputStream.write(this.sign, 11);
        }
        if (this.state != 0) {
            jceOutputStream.write(this.state, 12);
        }
        if (this.viewtimes != 0) {
            jceOutputStream.write(this.viewtimes, 13);
        }
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 14);
        }
        if (this.rank != 0) {
            jceOutputStream.write(this.rank, 15);
        }
        if (this.update_num != 0) {
            jceOutputStream.write(this.update_num, 16);
        }
        jceOutputStream.write(this.showType, 17);
        if (this.groupCircleInfo != null) {
            jceOutputStream.write((JceStruct) this.groupCircleInfo, 18);
        }
    }

    static {
        bPQ.add("");
        f4901nj = new byte[1];
        f4901nj[0] = 0;
        bPR = new CircleInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f4902id = jceInputStream.read(this.f4902id, 0, true);
        this.name = jceInputStream.readString(1, true);
        this.icon = jceInputStream.readString(2, true);
        this.count = jceInputStream.read(this.count, 3, true);
        this.welcome = jceInputStream.readString(4, false);
        this.autoalert = jceInputStream.read(this.autoalert, 5, false);
        this.endtime = jceInputStream.read(this.endtime, 6, false);
        this.categorytype = jceInputStream.read(this.categorytype, 7, false);
        this.source = jceInputStream.read(this.source, 8, false);
        this.vecSubtitle = (ArrayList) jceInputStream.read((JceInputStream) bPQ, 9, false);
        this.description = jceInputStream.readString(10, false);
        this.sign = jceInputStream.read(this.sign, 11, false);
        this.state = jceInputStream.read(this.state, 12, false);
        this.viewtimes = jceInputStream.read(this.viewtimes, 13, false);
        this.expand = jceInputStream.read(f4901nj, 14, false);
        this.rank = jceInputStream.read(this.rank, 15, false);
        this.update_num = jceInputStream.read(this.update_num, 16, false);
        this.showType = jceInputStream.read(this.showType, 17, false);
        this.groupCircleInfo = (CircleInfo) jceInputStream.read((JceStruct) bPR, 18, false);
    }
}
