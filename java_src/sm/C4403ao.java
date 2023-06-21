package sm;

import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: sm.ao */
/* loaded from: classes.dex */
public final class C4403ao extends AbstractC4399ag {
    static byte[] bMX;
    static ArrayList<Integer> bXl;

    /* renamed from: t */
    static byte[] f5372t = new byte[1];

    /* renamed from: w */
    static ArrayList<byte[]> f5373w;

    /* renamed from: a */
    public int f5374a = 0;

    /* renamed from: b */
    public byte[] f5375b = null;

    /* renamed from: c */
    public String f5376c = "";

    /* renamed from: d */
    public byte[] f5377d = null;

    /* renamed from: e */
    public long f5378e = 0;

    /* renamed from: f */
    public String f5379f = "";

    /* renamed from: g */
    public int f5380g = 0;

    /* renamed from: h */
    public String f5381h = "";

    /* renamed from: i */
    public int f5382i = 0;

    /* renamed from: j */
    public String f5383j = "";

    /* renamed from: k */
    public int f5384k = 0;

    /* renamed from: l */
    public int f5385l = 0;

    /* renamed from: m */
    public int f5386m = 0;

    /* renamed from: n */
    public ArrayList<Integer> f5387n = null;

    /* renamed from: o */
    public int f5388o = 0;

    /* renamed from: p */
    public boolean f5389p = false;

    /* renamed from: q */
    public int f5390q = 0;

    /* renamed from: r */
    public int f5391r = 0;

    /* renamed from: s */
    public ArrayList<byte[]> f5392s = null;

    static {
        f5372t[0] = 0;
        bMX = new byte[1];
        bMX[0] = 0;
        bXl = new ArrayList<>();
        bXl.add(0);
        f5373w = new ArrayList<>();
        f5373w.add(new byte[]{0});
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        this.f5374a = ccrVar.m4947a(this.f5374a, 0, true);
        this.f5375b = ccrVar.m4934a(f5372t, 1, false);
        this.f5376c = ccrVar.m4946a(2, false);
        this.f5377d = ccrVar.m4934a(bMX, 3, false);
        this.f5378e = ccrVar.m4945a(this.f5378e, 4, false);
        this.f5379f = ccrVar.m4946a(5, false);
        this.f5380g = ccrVar.m4947a(this.f5380g, 6, false);
        this.f5381h = ccrVar.m4946a(7, false);
        this.f5382i = ccrVar.m4947a(this.f5382i, 8, false);
        this.f5383j = ccrVar.m4946a(9, false);
        this.f5384k = ccrVar.m4947a(this.f5384k, 10, false);
        this.f5385l = ccrVar.m4947a(this.f5385l, 11, false);
        this.f5386m = ccrVar.m4947a(this.f5386m, 12, false);
        this.f5387n = (ArrayList) ccrVar.m4942a((ccr) bXl, 13, false);
        this.f5388o = ccrVar.m4947a(this.f5388o, 14, false);
        this.f5389p = ccrVar.m4936a(this.f5389p, 15, false);
        this.f5390q = ccrVar.m4947a(this.f5390q, 16, false);
        this.f5391r = ccrVar.m4947a(this.f5391r, 17, false);
        this.f5392s = (ArrayList) ccrVar.m4942a((ccr) f5373w, 18, false);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4916a(this.f5374a, 0);
        if (this.f5375b != null) {
            ccsVar.m4906a(this.f5375b, 1);
        }
        if (this.f5376c != null) {
            ccsVar.m4912a(this.f5376c, 2);
        }
        if (this.f5377d != null) {
            ccsVar.m4906a(this.f5377d, 3);
        }
        if (this.f5378e != 0) {
            ccsVar.m4915a(this.f5378e, 4);
        }
        if (this.f5379f != null) {
            ccsVar.m4912a(this.f5379f, 5);
        }
        if (this.f5380g != 0) {
            ccsVar.m4916a(this.f5380g, 6);
        }
        if (this.f5381h != null) {
            ccsVar.m4912a(this.f5381h, 7);
        }
        if (this.f5382i != 0) {
            ccsVar.m4916a(this.f5382i, 8);
        }
        if (this.f5383j != null) {
            ccsVar.m4912a(this.f5383j, 9);
        }
        ccsVar.m4916a(this.f5384k, 10);
        if (this.f5385l != 0) {
            ccsVar.m4916a(this.f5385l, 11);
        }
        if (this.f5386m != 0) {
            ccsVar.m4916a(this.f5386m, 12);
        }
        if (this.f5387n != null) {
            ccsVar.m4911a((Collection) this.f5387n, 13);
        }
        if (this.f5388o != 0) {
            ccsVar.m4916a(this.f5388o, 14);
        }
        ccsVar.m4907a(this.f5389p, 15);
        if (this.f5390q != 0) {
            ccsVar.m4916a(this.f5390q, 16);
        }
        ccsVar.m4916a(this.f5391r, 17);
        if (this.f5392s != null) {
            ccsVar.m4911a((Collection) this.f5392s, 18);
        }
    }
}
