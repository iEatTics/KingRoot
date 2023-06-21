package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.cn */
/* loaded from: classes.dex */
public final class C2820cn extends JceStruct {

    /* renamed from: a */
    static ArrayList<C2668by> f2346a = new ArrayList<>();

    /* renamed from: b */
    static ArrayList<C2668by> f2347b;

    /* renamed from: c */
    static ArrayList<C2820cn> f2348c;

    /* renamed from: id */
    public int f2349id = 0;

    /* renamed from: kd */
    public int f2350kd = 0;

    /* renamed from: lV */
    public ArrayList<C2668by> f2351lV = null;
    public int type = 0;

    /* renamed from: lW */
    public String f2352lW = "";

    /* renamed from: lX */
    public String f2353lX = "";

    /* renamed from: lY */
    public String f2354lY = "";
    public String name = "";

    /* renamed from: lZ */
    public ArrayList<C2668by> f2355lZ = null;

    /* renamed from: ma */
    public int f2356ma = 0;

    /* renamed from: mb */
    public int f2357mb = 0;

    /* renamed from: mc */
    public int f2358mc = 0;

    /* renamed from: md */
    public int f2359md = 0;

    /* renamed from: me */
    public String f2360me = "";

    /* renamed from: mf */
    public String f2361mf = "";

    /* renamed from: mg */
    public int f2362mg = 0;

    /* renamed from: mh */
    public int f2363mh = 0;

    /* renamed from: mi */
    public int f2364mi = 0;

    /* renamed from: mj */
    public int f2365mj = 0;

    /* renamed from: mk */
    public int f2366mk = 0;

    /* renamed from: ml */
    public long f2367ml = 0;

    /* renamed from: mm */
    public long f2368mm = 0;

    /* renamed from: mn */
    public int f2369mn = 0;

    /* renamed from: mo */
    public ArrayList<C2820cn> f2370mo = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2349id, 0);
        jceOutputStream.write(this.f2350kd, 1);
        jceOutputStream.write((Collection) this.f2351lV, 2);
        jceOutputStream.write(this.type, 3);
        if (this.f2352lW != null) {
            jceOutputStream.write(this.f2352lW, 4);
        }
        if (this.f2353lX != null) {
            jceOutputStream.write(this.f2353lX, 5);
        }
        if (this.f2354lY != null) {
            jceOutputStream.write(this.f2354lY, 6);
        }
        if (this.name != null) {
            jceOutputStream.write(this.name, 7);
        }
        if (this.f2355lZ != null) {
            jceOutputStream.write((Collection) this.f2355lZ, 8);
        }
        if (this.f2356ma != 0) {
            jceOutputStream.write(this.f2356ma, 9);
        }
        if (this.f2357mb != 0) {
            jceOutputStream.write(this.f2357mb, 10);
        }
        if (this.f2358mc != 0) {
            jceOutputStream.write(this.f2358mc, 11);
        }
        if (this.f2359md != 0) {
            jceOutputStream.write(this.f2359md, 12);
        }
        if (this.f2360me != null) {
            jceOutputStream.write(this.f2360me, 13);
        }
        if (this.f2361mf != null) {
            jceOutputStream.write(this.f2361mf, 14);
        }
        if (this.f2362mg != 0) {
            jceOutputStream.write(this.f2362mg, 15);
        }
        if (this.f2363mh != 0) {
            jceOutputStream.write(this.f2363mh, 16);
        }
        if (this.f2364mi != 0) {
            jceOutputStream.write(this.f2364mi, 17);
        }
        if (this.f2365mj != 0) {
            jceOutputStream.write(this.f2365mj, 18);
        }
        if (this.f2366mk != 0) {
            jceOutputStream.write(this.f2366mk, 19);
        }
        if (this.f2367ml != 0) {
            jceOutputStream.write(this.f2367ml, 20);
        }
        if (this.f2368mm != 0) {
            jceOutputStream.write(this.f2368mm, 21);
        }
        if (this.f2369mn != 0) {
            jceOutputStream.write(this.f2369mn, 22);
        }
        if (this.f2370mo != null) {
            jceOutputStream.write((Collection) this.f2370mo, 23);
        }
    }

    static {
        f2346a.add(new C2668by());
        f2347b = new ArrayList<>();
        f2347b.add(new C2668by());
        f2348c = new ArrayList<>();
        f2348c.add(new C2820cn());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2349id = jceInputStream.read(this.f2349id, 0, true);
        this.f2350kd = jceInputStream.read(this.f2350kd, 1, true);
        this.f2351lV = (ArrayList) jceInputStream.read((JceInputStream) f2346a, 2, true);
        this.type = jceInputStream.read(this.type, 3, true);
        this.f2352lW = jceInputStream.readString(4, false);
        this.f2353lX = jceInputStream.readString(5, false);
        this.f2354lY = jceInputStream.readString(6, false);
        this.name = jceInputStream.readString(7, false);
        this.f2355lZ = (ArrayList) jceInputStream.read((JceInputStream) f2347b, 8, false);
        this.f2356ma = jceInputStream.read(this.f2356ma, 9, false);
        this.f2357mb = jceInputStream.read(this.f2357mb, 10, false);
        this.f2358mc = jceInputStream.read(this.f2358mc, 11, false);
        this.f2359md = jceInputStream.read(this.f2359md, 12, false);
        this.f2360me = jceInputStream.readString(13, false);
        this.f2361mf = jceInputStream.readString(14, false);
        this.f2362mg = jceInputStream.read(this.f2362mg, 15, false);
        this.f2363mh = jceInputStream.read(this.f2363mh, 16, false);
        this.f2364mi = jceInputStream.read(this.f2364mi, 17, false);
        this.f2365mj = jceInputStream.read(this.f2365mj, 18, false);
        this.f2366mk = jceInputStream.read(this.f2366mk, 19, false);
        this.f2367ml = jceInputStream.read(this.f2367ml, 20, false);
        this.f2368mm = jceInputStream.read(this.f2368mm, 21, false);
        this.f2369mn = jceInputStream.read(this.f2369mn, 22, false);
        this.f2370mo = (ArrayList) jceInputStream.read((JceInputStream) f2348c, 23, false);
    }
}
