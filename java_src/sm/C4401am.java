package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: sm.am */
/* loaded from: classes.dex */
public final class C4401am extends AbstractC4399ag {
    static C4404ap bXk = new C4404ap();

    /* renamed from: d */
    static ArrayList<C4403ao> f5367d = new ArrayList<>();

    /* renamed from: a */
    public C4404ap f5368a = null;

    /* renamed from: b */
    public ArrayList<C4403ao> f5369b = null;

    static {
        f5367d.add(new C4403ao());
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5368a = (C4404ap) ccrVar.m4938a((AbstractC4399ag) bXk, 0, false);
        this.f5369b = (ArrayList) ccrVar.m4942a((ccr) f5367d, 1, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        if (this.f5368a != null) {
            ccsVar.m4909a((AbstractC4399ag) this.f5368a, 0);
        }
        if (this.f5369b != null) {
            ccsVar.m4911a((Collection) this.f5369b, 1);
        }
    }
}
