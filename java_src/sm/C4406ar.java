package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* renamed from: sm.ar */
/* loaded from: classes.dex */
public final class C4406ar extends AbstractC4399ag {

    /* renamed from: f */
    static ArrayList<C4405aq> f5417f = new ArrayList<>();

    /* renamed from: g */
    static Map<Integer, C4407as> f5418g;

    /* renamed from: h */
    static Map<Integer, C4400al> f5419h;

    /* renamed from: i */
    static Map<Integer, C4402an> f5420i;

    /* renamed from: a */
    public ArrayList<C4405aq> f5421a = null;

    /* renamed from: b */
    public Map<Integer, C4407as> f5422b = null;

    /* renamed from: c */
    public Map<Integer, C4400al> f5423c = null;

    /* renamed from: d */
    public int f5424d = 0;

    /* renamed from: e */
    public Map<Integer, C4402an> f5425e = null;

    static {
        f5417f.add(new C4405aq());
        f5418g = new HashMap();
        f5418g.put(0, new C4407as());
        f5419h = new HashMap();
        f5419h.put(0, new C4400al());
        f5420i = new HashMap();
        f5420i.put(0, new C4402an());
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5421a = (ArrayList) ccrVar.m4942a((ccr) f5417f, 0, false);
        this.f5422b = (Map) ccrVar.m4942a((ccr) f5418g, 1, false);
        this.f5423c = (Map) ccrVar.m4942a((ccr) f5419h, 2, false);
        this.f5424d = ccrVar.m4947a(this.f5424d, 3, false);
        this.f5425e = (Map) ccrVar.m4942a((ccr) f5420i, 4, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        if (this.f5421a != null) {
            ccsVar.m4911a((Collection) this.f5421a, 0);
        }
        if (this.f5422b != null) {
            ccsVar.m4910a((Map) this.f5422b, 1);
        }
        if (this.f5423c != null) {
            ccsVar.m4910a((Map) this.f5423c, 2);
        }
        if (this.f5424d != 0) {
            ccsVar.m4916a(this.f5424d, 3);
        }
        if (this.f5425e != null) {
            ccsVar.m4910a((Map) this.f5425e, 4);
        }
    }
}
