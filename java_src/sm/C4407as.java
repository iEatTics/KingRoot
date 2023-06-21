package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
/* renamed from: sm.as */
/* loaded from: classes.dex */
public final class C4407as extends AbstractC4399ag {

    /* renamed from: a */
    public String f5426a = "";

    /* renamed from: b */
    public String f5427b = "";

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5426a = ccrVar.m4946a(0, false);
        this.f5427b = ccrVar.m4946a(1, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        if (this.f5426a != null) {
            ccsVar.m4912a(this.f5426a, 0);
        }
        if (this.f5427b != null) {
            ccsVar.m4912a(this.f5427b, 1);
        }
    }
}
