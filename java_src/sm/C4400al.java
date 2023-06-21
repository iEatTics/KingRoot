package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: sm.al */
/* loaded from: classes.dex */
public final class C4400al extends AbstractC4399ag {

    /* renamed from: g */
    static ArrayList<String> f5359g = new ArrayList<>();

    /* renamed from: xt */
    static ArrayList<String> f5360xt;

    /* renamed from: a */
    public int f5361a = 0;

    /* renamed from: b */
    public int f5362b = 0;

    /* renamed from: c */
    public int f5363c = 0;

    /* renamed from: d */
    public ArrayList<String> f5364d = null;

    /* renamed from: e */
    public ArrayList<String> f5365e = null;

    /* renamed from: f */
    public String f5366f = "";

    static {
        f5359g.add("");
        f5360xt = new ArrayList<>();
        f5360xt.add("");
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5361a = ccrVar.m4947a(this.f5361a, 0, false);
        this.f5362b = ccrVar.m4947a(this.f5362b, 1, false);
        this.f5363c = ccrVar.m4947a(this.f5363c, 2, false);
        this.f5364d = (ArrayList) ccrVar.m4942a((ccr) f5359g, 3, false);
        this.f5365e = (ArrayList) ccrVar.m4942a((ccr) f5360xt, 4, false);
        this.f5366f = ccrVar.m4946a(5, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4916a(this.f5361a, 0);
        if (this.f5362b != 0) {
            ccsVar.m4916a(this.f5362b, 1);
        }
        if (this.f5363c != 0) {
            ccsVar.m4916a(this.f5363c, 2);
        }
        if (this.f5364d != null) {
            ccsVar.m4911a((Collection) this.f5364d, 3);
        }
        if (this.f5365e != null) {
            ccsVar.m4911a((Collection) this.f5365e, 4);
        }
        if (this.f5366f != null) {
            ccsVar.m4912a(this.f5366f, 5);
        }
    }
}
