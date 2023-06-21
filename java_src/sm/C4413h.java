package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
/* renamed from: sm.h */
/* loaded from: classes.dex */
public final class C4413h extends AbstractC4399ag {
    static C4411f bXt;

    /* renamed from: a */
    public String f5465a = "";

    /* renamed from: b */
    public String f5466b = "";

    /* renamed from: c */
    public String f5467c = "";

    /* renamed from: d */
    public String f5468d = "";

    /* renamed from: e */
    public String f5469e = "";

    /* renamed from: f */
    public String f5470f = "";

    /* renamed from: g */
    public String f5471g = "";

    /* renamed from: h */
    public int f5472h = 0;

    /* renamed from: i */
    public int f5473i = 0;

    /* renamed from: j */
    public C4411f f5474j = null;

    /* renamed from: k */
    public String f5475k = "";

    /* renamed from: l */
    public String f5476l = "";

    /* renamed from: m */
    public int f5477m = 0;

    /* renamed from: n */
    public int f5478n = 0;

    /* renamed from: o */
    public int f5479o = 0;

    /* renamed from: p */
    public int f5480p = 0;

    /* renamed from: q */
    public String f5481q = "";

    /* renamed from: r */
    public short f5482r = 0;

    /* renamed from: s */
    public double f5483s = 0.0d;

    /* renamed from: t */
    public double f5484t = 0.0d;

    /* renamed from: u */
    public String f5485u = "";

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5465a = ccrVar.m4946a(0, true);
        this.f5466b = ccrVar.m4946a(1, false);
        this.f5467c = ccrVar.m4946a(2, false);
        this.f5468d = ccrVar.m4946a(3, false);
        this.f5469e = ccrVar.m4946a(4, false);
        this.f5470f = ccrVar.m4946a(5, false);
        this.f5471g = ccrVar.m4946a(6, false);
        this.f5472h = ccrVar.m4947a(this.f5472h, 7, false);
        this.f5473i = ccrVar.m4947a(this.f5473i, 8, false);
        if (bXt == null) {
            bXt = new C4411f();
        }
        this.f5474j = (C4411f) ccrVar.m4938a((AbstractC4399ag) bXt, 9, false);
        this.f5475k = ccrVar.m4946a(10, false);
        this.f5476l = ccrVar.m4946a(11, false);
        this.f5477m = ccrVar.m4947a(this.f5477m, 12, false);
        this.f5478n = ccrVar.m4947a(this.f5478n, 13, false);
        this.f5479o = ccrVar.m4947a(this.f5479o, 14, false);
        this.f5480p = ccrVar.m4947a(this.f5480p, 15, false);
        this.f5481q = ccrVar.m4946a(16, false);
        this.f5482r = ccrVar.m4937a(this.f5482r, 17, false);
        this.f5483s = ccrVar.m4950a(this.f5483s, 18, false);
        this.f5484t = ccrVar.m4950a(this.f5484t, 19, false);
        this.f5485u = ccrVar.m4946a(20, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4912a(this.f5465a, 0);
        if (this.f5466b != null) {
            ccsVar.m4912a(this.f5466b, 1);
        }
        if (this.f5467c != null) {
            ccsVar.m4912a(this.f5467c, 2);
        }
        if (this.f5468d != null) {
            ccsVar.m4912a(this.f5468d, 3);
        }
        if (this.f5469e != null) {
            ccsVar.m4912a(this.f5469e, 4);
        }
        if (this.f5470f != null) {
            ccsVar.m4912a(this.f5470f, 5);
        }
        if (this.f5471g != null) {
            ccsVar.m4912a(this.f5471g, 6);
        }
        if (this.f5472h != 0) {
            ccsVar.m4916a(this.f5472h, 7);
        }
        if (this.f5473i != 0) {
            ccsVar.m4916a(this.f5473i, 8);
        }
        if (this.f5474j != null) {
            ccsVar.m4909a((AbstractC4399ag) this.f5474j, 9);
        }
        if (this.f5475k != null) {
            ccsVar.m4912a(this.f5475k, 10);
        }
        if (this.f5476l != null) {
            ccsVar.m4912a(this.f5476l, 11);
        }
        if (this.f5477m != 0) {
            ccsVar.m4916a(this.f5477m, 12);
        }
        if (this.f5478n != 0) {
            ccsVar.m4916a(this.f5478n, 13);
        }
        if (this.f5479o != 0) {
            ccsVar.m4916a(this.f5479o, 14);
        }
        if (this.f5480p != 0) {
            ccsVar.m4916a(this.f5480p, 15);
        }
        if (this.f5481q != null) {
            ccsVar.m4912a(this.f5481q, 16);
        }
        if (this.f5482r != 0) {
            ccsVar.m4908a(this.f5482r, 17);
        }
        if (this.f5483s != 0.0d) {
            ccsVar.m4919a(this.f5483s, 18);
        }
        if (this.f5484t != 0.0d) {
            ccsVar.m4919a(this.f5484t, 19);
        }
        if (this.f5485u != null) {
            ccsVar.m4912a(this.f5485u, 20);
        }
    }
}
