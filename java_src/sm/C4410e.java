package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
/* renamed from: sm.e */
/* loaded from: classes.dex */
public final class C4410e extends AbstractC4399ag {

    /* renamed from: a */
    public int f5439a = 0;

    /* renamed from: b */
    public int f5440b = 0;

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5439a = ccrVar.m4947a(this.f5439a, 0, true);
        this.f5440b = ccrVar.m4947a(this.f5440b, 1, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4916a(this.f5439a, 0);
        ccsVar.m4916a(this.f5440b, 1);
    }
}
