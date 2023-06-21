package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
/* renamed from: sm.c */
/* loaded from: classes.dex */
public final class C4408c extends AbstractC4399ag {

    /* renamed from: a */
    public String f5428a = "";

    /* renamed from: b */
    public String f5429b = "";

    /* renamed from: c */
    public String f5430c = "";

    /* renamed from: d */
    public String f5431d = "";

    /* renamed from: e */
    public String f5432e = "";

    /* renamed from: f */
    public int f5433f = 0;

    /* renamed from: g */
    public String f5434g = "";

    /* renamed from: h */
    public String f5435h = "";

    /* renamed from: i */
    public String f5436i = "";

    /* renamed from: j */
    public String f5437j = "";

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5428a = ccrVar.m4946a(0, true);
        this.f5429b = ccrVar.m4946a(1, false);
        this.f5430c = ccrVar.m4946a(2, false);
        this.f5431d = ccrVar.m4946a(3, false);
        this.f5432e = ccrVar.m4946a(4, false);
        this.f5433f = ccrVar.m4947a(this.f5433f, 5, false);
        this.f5434g = ccrVar.m4946a(6, false);
        this.f5435h = ccrVar.m4946a(7, false);
        this.f5436i = ccrVar.m4946a(8, false);
        this.f5437j = ccrVar.m4946a(9, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4912a(this.f5428a, 0);
        if (this.f5429b != null) {
            ccsVar.m4912a(this.f5429b, 1);
        }
        if (this.f5430c != null) {
            ccsVar.m4912a(this.f5430c, 2);
        }
        if (this.f5431d != null) {
            ccsVar.m4912a(this.f5431d, 3);
        }
        if (this.f5432e != null) {
            ccsVar.m4912a(this.f5432e, 4);
        }
        ccsVar.m4916a(this.f5433f, 5);
        if (this.f5434g != null) {
            ccsVar.m4912a(this.f5434g, 6);
        }
        if (this.f5435h != null) {
            ccsVar.m4912a(this.f5435h, 7);
        }
        if (this.f5436i != null) {
            ccsVar.m4912a(this.f5436i, 8);
        }
        if (this.f5437j != null) {
            ccsVar.m4912a(this.f5437j, 9);
        }
    }
}
