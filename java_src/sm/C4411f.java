package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
/* renamed from: sm.f */
/* loaded from: classes.dex */
public final class C4411f extends AbstractC4399ag {

    /* renamed from: a */
    public int f5441a = 0;

    /* renamed from: b */
    public int f5442b = 0;

    /* renamed from: c */
    public int f5443c = 0;

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5441a = ccrVar.m4947a(this.f5441a, 1, true);
        this.f5442b = ccrVar.m4947a(this.f5442b, 2, true);
        this.f5443c = ccrVar.m4947a(this.f5443c, 3, true);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4916a(this.f5441a, 1);
        ccsVar.m4916a(this.f5442b, 2);
        ccsVar.m4916a(this.f5443c, 3);
    }
}
