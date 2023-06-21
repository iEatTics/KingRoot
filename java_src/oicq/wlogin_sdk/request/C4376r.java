package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.p027b.C4229ax;
import oicq.wlogin_sdk.p027b.C4231az;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4282h;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.ErrMsg;
/* renamed from: oicq.wlogin_sdk.request.r */
/* loaded from: classes.dex */
public class C4376r extends oicq_request {
    public C4376r(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 3;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m104a(int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        C4281g c4281g = C4379u.m85b(this.f5241x.f5303h)._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m103a(c4281g2.m318c(), i, i2, jArr));
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i5 + " ret:" + b, "" + this.f5241x.f5301f);
            if (b != 180) {
                return b;
            }
            i4 = i5 + 1;
            if (i5 >= 1) {
                return b;
            }
        }
    }

    /* renamed from: a */
    public byte[] m103a(byte[] bArr, int i, int i2, long[] jArr) {
        C4277cr c4277cr = new C4277cr();
        C4281g c4281g = new C4281g();
        C4295u c4295u = new C4295u();
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m259a = c4281g.m259a(bArr);
        byte[] m249a = c4295u.m249a(i, i2, jArr);
        byte[] bArr2 = new byte[m261a.length + m259a.length + m249a.length];
        System.arraycopy(m261a, 0, bArr2, 0, m261a.length);
        int length = m261a.length + 0;
        System.arraycopy(m259a, 0, bArr2, length, m259a.length);
        int length2 = length + m259a.length;
        System.arraycopy(m249a, 0, bArr2, length2, m249a.length);
        int length3 = length2 + m249a.length;
        return m121b(bArr2, this.f5238u, 3);
    }

    @Override // oicq.wlogin_sdk.request.oicq_request
    /* renamed from: d */
    public int mo100d(byte[] bArr, int i, int i2) {
        C4281g c4281g = new C4281g();
        C4282h c4282h = new C4282h();
        C4231az c4231az = new C4231az();
        C4229ax c4229ax = new C4229ax();
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        int c = m115c(bArr, i + 2);
        C4393util.LOGD(getClass().getName(), "type=" + c);
        int i3 = i + 5;
        switch (c) {
            case 2:
                int c2 = c4281g.m316c(bArr, i3, this.f5220c - i3);
                if (c2 >= 0) {
                    m85b._t104 = c4281g;
                    int c3 = c4282h.m316c(bArr, i3, this.f5220c - i3);
                    if (c3 >= 0) {
                        m85b._t105 = c4282h;
                        if (c4231az.m316c(bArr, i3, this.f5220c - i3) >= 0) {
                            m85b._t165 = c4231az;
                        } else {
                            m85b._t165 = new C4231az();
                        }
                        m139a((ErrMsg) null);
                        return c;
                    }
                    return c3;
                }
                return c2;
            case C4393util.S_ROLL_BACK /* 180 */:
                int c4 = c4229ax.m316c(bArr, i3, (this.f5220c - i3) - 1);
                if (c4 >= 0) {
                    m143a(c4229ax);
                    m114c(bArr, i3, (this.f5220c - i3) - 1);
                    return c;
                }
                return c4;
            default:
                m114c(bArr, i3, (this.f5220c - i3) - 1);
                return c;
        }
    }
}
