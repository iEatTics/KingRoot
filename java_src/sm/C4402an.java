package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import java.util.HashMap;
import java.util.Map;
/* renamed from: sm.an */
/* loaded from: classes.dex */
public final class C4402an extends AbstractC4399ag {

    /* renamed from: b */
    static Map<Integer, Integer> f5370b = new HashMap();

    /* renamed from: a */
    public Map<Integer, Integer> f5371a = null;

    static {
        f5370b.put(0, 0);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5371a = (Map) ccrVar.m4942a((ccr) f5370b, 0, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        if (this.f5371a != null) {
            ccsVar.m4910a((Map) this.f5371a, 0);
        }
    }
}
