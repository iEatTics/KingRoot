package sm;

import com.kingroot.kinguser.ccq;
import com.kingroot.kinguser.ccr;
import com.kingroot.kinguser.ccs;
import com.kingroot.kinguser.cct;
import java.util.HashMap;
import java.util.Map;
/* renamed from: sm.ab */
/* loaded from: classes.dex */
public final class C4396ab extends AbstractC4399ag {

    /* renamed from: k */
    static byte[] f5346k;

    /* renamed from: l */
    static Map<String, String> f5347l;

    /* renamed from: m */
    static final /* synthetic */ boolean f5348m;

    /* renamed from: g */
    public byte[] f5355g;

    /* renamed from: i */
    public Map<String, String> f5357i;

    /* renamed from: j */
    public Map<String, String> f5358j;

    /* renamed from: a */
    public short f5349a = 0;

    /* renamed from: b */
    public byte f5350b = 0;

    /* renamed from: c */
    public int f5351c = 0;

    /* renamed from: d */
    public int f5352d = 0;

    /* renamed from: e */
    public String f5353e = null;

    /* renamed from: f */
    public String f5354f = null;

    /* renamed from: h */
    public int f5356h = 0;

    static {
        f5348m = !C4396ab.class.desiredAssertionStatus();
        f5346k = null;
        f5347l = null;
    }

    public boolean equals(Object obj) {
        C4396ab c4396ab = (C4396ab) obj;
        return cct.m4897a(1, c4396ab.f5349a) && cct.m4897a(1, c4396ab.f5350b) && cct.m4897a(1, c4396ab.f5351c) && cct.m4897a(1, c4396ab.f5352d) && cct.m4896a((Object) 1, (Object) c4396ab.f5353e) && cct.m4896a((Object) 1, (Object) c4396ab.f5354f) && cct.m4896a((Object) 1, (Object) c4396ab.f5355g) && cct.m4897a(1, c4396ab.f5356h) && cct.m4896a((Object) 1, (Object) c4396ab.f5357i) && cct.m4896a((Object) 1, (Object) c4396ab.f5358j);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f5348m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo22a(ccs ccsVar) {
        ccsVar.m4908a(this.f5349a, 1);
        ccsVar.m4898b(this.f5350b, 2);
        ccsVar.m4916a(this.f5351c, 3);
        ccsVar.m4916a(this.f5352d, 4);
        ccsVar.m4912a(this.f5353e, 5);
        ccsVar.m4912a(this.f5354f, 6);
        ccsVar.m4906a(this.f5355g, 7);
        ccsVar.m4916a(this.f5356h, 8);
        ccsVar.m4910a((Map) this.f5357i, 9);
        ccsVar.m4910a((Map) this.f5358j, 10);
    }

    @Override // sm.AbstractC4399ag
    /* renamed from: a */
    public void mo23a(ccr ccrVar) {
        try {
            this.f5349a = ccrVar.m4937a(this.f5349a, 1, true);
            this.f5350b = ccrVar.m4951a(this.f5350b, 2, true);
            this.f5351c = ccrVar.m4947a(this.f5351c, 3, true);
            this.f5352d = ccrVar.m4947a(this.f5352d, 4, true);
            this.f5353e = ccrVar.m4946a(5, true);
            this.f5354f = ccrVar.m4946a(6, true);
            if (f5346k == null) {
                f5346k = new byte[1];
            }
            this.f5355g = ccrVar.m4934a(f5346k, 7, true);
            this.f5356h = ccrVar.m4947a(this.f5356h, 8, true);
            if (f5347l == null) {
                f5347l = new HashMap();
                f5347l.put("", "");
            }
            this.f5357i = (Map) ccrVar.m4942a((ccr) f5347l, 9, true);
            if (f5347l == null) {
                f5347l = new HashMap();
                f5347l.put("", "");
            }
            this.f5358j = (Map) ccrVar.m4942a((ccr) f5347l, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("RequestPacket decode error " + ccq.m4954a(this.f5355g));
            throw new RuntimeException(e);
        }
    }
}
