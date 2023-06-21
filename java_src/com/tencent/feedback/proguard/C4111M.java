package com.tencent.feedback.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.M */
/* loaded from: classes.dex */
public final class C4111M extends AbstractC4128j implements Cloneable {

    /* renamed from: A */
    private static Map<String, String> f4638A;

    /* renamed from: t */
    private static Map<String, String> f4639t;

    /* renamed from: u */
    private static C4109K f4640u;

    /* renamed from: v */
    private static C4108J f4641v;

    /* renamed from: w */
    private static ArrayList<C4108J> f4642w;

    /* renamed from: x */
    private static ArrayList<C4108J> f4643x;

    /* renamed from: y */
    private static ArrayList<C4110L> f4644y;

    /* renamed from: z */
    private static Map<String, String> f4645z;

    /* renamed from: a */
    public String f4646a = "";

    /* renamed from: b */
    public long f4647b = 0;

    /* renamed from: c */
    public String f4648c = "";

    /* renamed from: d */
    public String f4649d = "";

    /* renamed from: e */
    public String f4650e = "";

    /* renamed from: f */
    public String f4651f = "";

    /* renamed from: g */
    public String f4652g = "";

    /* renamed from: h */
    public Map<String, String> f4653h = null;

    /* renamed from: i */
    public String f4654i = "";

    /* renamed from: q */
    private C4109K f4662q = null;

    /* renamed from: j */
    public int f4655j = 0;

    /* renamed from: k */
    public String f4656k = "";

    /* renamed from: l */
    public String f4657l = "";

    /* renamed from: r */
    private C4108J f4663r = null;

    /* renamed from: m */
    public ArrayList<C4108J> f4658m = null;

    /* renamed from: n */
    public ArrayList<C4108J> f4659n = null;

    /* renamed from: o */
    public ArrayList<C4110L> f4660o = null;

    /* renamed from: p */
    public Map<String, String> f4661p = null;

    /* renamed from: s */
    private Map<String, String> f4664s = null;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m676a(this.f4646a, 0);
        c4127i.m680a(this.f4647b, 1);
        c4127i.m676a(this.f4648c, 2);
        if (this.f4649d != null) {
            c4127i.m676a(this.f4649d, 3);
        }
        if (this.f4650e != null) {
            c4127i.m676a(this.f4650e, 4);
        }
        if (this.f4651f != null) {
            c4127i.m676a(this.f4651f, 5);
        }
        if (this.f4652g != null) {
            c4127i.m676a(this.f4652g, 6);
        }
        if (this.f4653h != null) {
            c4127i.m674a((Map) this.f4653h, 7);
        }
        if (this.f4654i != null) {
            c4127i.m676a(this.f4654i, 8);
        }
        if (this.f4662q != null) {
            c4127i.m679a((AbstractC4128j) this.f4662q, 9);
        }
        c4127i.m681a(this.f4655j, 10);
        if (this.f4656k != null) {
            c4127i.m676a(this.f4656k, 11);
        }
        if (this.f4657l != null) {
            c4127i.m676a(this.f4657l, 12);
        }
        if (this.f4663r != null) {
            c4127i.m679a((AbstractC4128j) this.f4663r, 13);
        }
        if (this.f4658m != null) {
            c4127i.m675a((Collection) this.f4658m, 14);
        }
        if (this.f4659n != null) {
            c4127i.m675a((Collection) this.f4659n, 15);
        }
        if (this.f4660o != null) {
            c4127i.m675a((Collection) this.f4660o, 16);
        }
        if (this.f4661p != null) {
            c4127i.m674a((Map) this.f4661p, 17);
        }
        if (this.f4664s != null) {
            c4127i.m674a((Map) this.f4664s, 18);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4646a = c4126h.m693b(0, true);
        this.f4647b = c4126h.m703a(this.f4647b, 1, true);
        this.f4648c = c4126h.m693b(2, true);
        this.f4649d = c4126h.m693b(3, false);
        this.f4650e = c4126h.m693b(4, false);
        this.f4651f = c4126h.m693b(5, false);
        this.f4652g = c4126h.m693b(6, false);
        if (f4639t == null) {
            f4639t = new HashMap();
            f4639t.put("", "");
        }
        this.f4653h = (Map) c4126h.m700a((C4126h) f4639t, 7, false);
        this.f4654i = c4126h.m693b(8, false);
        if (f4640u == null) {
            f4640u = new C4109K();
        }
        this.f4662q = (C4109K) c4126h.m701a((AbstractC4128j) f4640u, 9, false);
        this.f4655j = c4126h.m705a(this.f4655j, 10, false);
        this.f4656k = c4126h.m693b(11, false);
        this.f4657l = c4126h.m693b(12, false);
        if (f4641v == null) {
            f4641v = new C4108J();
        }
        this.f4663r = (C4108J) c4126h.m701a((AbstractC4128j) f4641v, 13, false);
        if (f4642w == null) {
            f4642w = new ArrayList<>();
            f4642w.add(new C4108J());
        }
        this.f4658m = (ArrayList) c4126h.m700a((C4126h) f4642w, 14, false);
        if (f4643x == null) {
            f4643x = new ArrayList<>();
            f4643x.add(new C4108J());
        }
        this.f4659n = (ArrayList) c4126h.m700a((C4126h) f4643x, 15, false);
        if (f4644y == null) {
            f4644y = new ArrayList<>();
            f4644y.add(new C4110L());
        }
        this.f4660o = (ArrayList) c4126h.m700a((C4126h) f4644y, 16, false);
        if (f4645z == null) {
            f4645z = new HashMap();
            f4645z.put("", "");
        }
        this.f4661p = (Map) c4126h.m700a((C4126h) f4645z, 17, false);
        if (f4638A == null) {
            f4638A = new HashMap();
            f4638A.put("", "");
        }
        this.f4664s = (Map) c4126h.m700a((C4126h) f4638A, 18, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
