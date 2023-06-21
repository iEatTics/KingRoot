package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: sm.aq */
/* loaded from: classes.dex */
public final class C4405aq extends AbstractC4399ag {
    static ArrayList<Integer> bXm = new ArrayList<>();

    /* renamed from: a */
    public int f5401a = 0;

    /* renamed from: b */
    public int f5402b = 0;

    /* renamed from: c */
    public int f5403c = 0;

    /* renamed from: d */
    public int f5404d = 0;

    /* renamed from: e */
    public ArrayList<Integer> f5405e = null;

    /* renamed from: f */
    public int f5406f = 0;

    /* renamed from: g */
    public boolean f5407g = false;

    /* renamed from: h */
    public int f5408h = 0;

    /* renamed from: i */
    public int f5409i = 0;

    /* renamed from: j */
    public String f5410j = "";

    /* renamed from: k */
    public String f5411k = "";

    /* renamed from: l */
    public int f5412l = 0;

    /* renamed from: m */
    public String f5413m = "";

    /* renamed from: n */
    public String f5414n = "";

    /* renamed from: o */
    public String f5415o = "";

    /* renamed from: p */
    public int f5416p = 0;

    static {
        bXm.add(0);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5401a = ccrVar.m4947a(this.f5401a, 0, true);
        this.f5402b = ccrVar.m4947a(this.f5402b, 1, false);
        this.f5403c = ccrVar.m4947a(this.f5403c, 2, false);
        this.f5404d = ccrVar.m4947a(this.f5404d, 3, false);
        this.f5405e = (ArrayList) ccrVar.m4942a((ccr) bXm, 4, false);
        this.f5406f = ccrVar.m4947a(this.f5406f, 5, false);
        this.f5407g = ccrVar.m4936a(this.f5407g, 6, false);
        this.f5408h = ccrVar.m4947a(this.f5408h, 7, false);
        this.f5409i = ccrVar.m4947a(this.f5409i, 8, false);
        this.f5410j = ccrVar.m4946a(9, false);
        this.f5411k = ccrVar.m4946a(10, false);
        this.f5412l = ccrVar.m4947a(this.f5412l, 11, false);
        this.f5413m = ccrVar.m4946a(12, false);
        this.f5414n = ccrVar.m4946a(13, false);
        this.f5415o = ccrVar.m4946a(14, false);
        this.f5416p = ccrVar.m4947a(this.f5416p, 15, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4916a(this.f5401a, 0);
        ccsVar.m4916a(this.f5402b, 1);
        if (this.f5403c != 0) {
            ccsVar.m4916a(this.f5403c, 2);
        }
        if (this.f5404d != 0) {
            ccsVar.m4916a(this.f5404d, 3);
        }
        if (this.f5405e != null) {
            ccsVar.m4911a((Collection) this.f5405e, 4);
        }
        if (this.f5406f != 0) {
            ccsVar.m4916a(this.f5406f, 5);
        }
        ccsVar.m4907a(this.f5407g, 6);
        if (this.f5408h != 0) {
            ccsVar.m4916a(this.f5408h, 7);
        }
        ccsVar.m4916a(this.f5409i, 8);
        if (this.f5410j != null) {
            ccsVar.m4912a(this.f5410j, 9);
        }
        if (this.f5411k != null) {
            ccsVar.m4912a(this.f5411k, 10);
        }
        ccsVar.m4916a(this.f5412l, 11);
        if (this.f5413m != null) {
            ccsVar.m4912a(this.f5413m, 12);
        }
        if (this.f5414n != null) {
            ccsVar.m4912a(this.f5414n, 13);
        }
        if (this.f5415o != null) {
            ccsVar.m4912a(this.f5415o, 14);
        }
        ccsVar.m4916a(this.f5416p, 15);
    }
}
