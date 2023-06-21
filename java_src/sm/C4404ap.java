package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
/* renamed from: sm.ap */
/* loaded from: classes.dex */
public final class C4404ap extends AbstractC4399ag {

    /* renamed from: h */
    static byte[] f5393h = new byte[1];

    /* renamed from: a */
    public int f5394a = 5;

    /* renamed from: b */
    public int f5395b = 0;

    /* renamed from: c */
    public int f5396c = 0;

    /* renamed from: d */
    public int f5397d = 0;

    /* renamed from: e */
    public int f5398e = 0;

    /* renamed from: f */
    public byte[] f5399f = null;

    /* renamed from: g */
    public int f5400g = 0;

    static {
        f5393h[0] = 0;
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5394a = ccrVar.m4947a(this.f5394a, 0, false);
        this.f5395b = ccrVar.m4947a(this.f5395b, 1, false);
        this.f5396c = ccrVar.m4947a(this.f5396c, 2, false);
        this.f5397d = ccrVar.m4947a(this.f5397d, 3, false);
        this.f5398e = ccrVar.m4947a(this.f5398e, 4, false);
        this.f5399f = ccrVar.m4934a(f5393h, 5, false);
        this.f5400g = ccrVar.m4947a(this.f5400g, 6, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        if (this.f5394a != 5) {
            ccsVar.m4916a(this.f5394a, 0);
        }
        ccsVar.m4916a(this.f5395b, 1);
        ccsVar.m4916a(this.f5396c, 2);
        if (this.f5397d != 0) {
            ccsVar.m4916a(this.f5397d, 3);
        }
        if (this.f5398e != 0) {
            ccsVar.m4916a(this.f5398e, 4);
        }
        if (this.f5399f != null) {
            ccsVar.m4906a(this.f5399f, 5);
        }
        if (this.f5400g != 0) {
            ccsVar.m4916a(this.f5400g, 6);
        }
    }
}
