package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.p027b.C4229ax;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4242bj;
import oicq.wlogin_sdk.p027b.C4246bn;
import oicq.wlogin_sdk.p027b.C4247bo;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.ErrMsg;
/* renamed from: oicq.wlogin_sdk.request.s */
/* loaded from: classes.dex */
public class C4377s extends oicq_request {

    /* renamed from: I */
    static int f5244I = 0;

    public C4377s(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 8;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m102a(long j, int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        C4281g c4281g = m85b._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        C4242bj c4242bj = m85b._t174;
        C4242bj c4242bj2 = c4242bj == null ? new C4242bj() : c4242bj;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m101a(c4281g2.m318c(), j, c4242bj2.m318c(), i, i2, jArr));
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
    public byte[] m101a(byte[] bArr, long j, byte[] bArr2, int i, int i2, long[] jArr) {
        C4277cr c4277cr = new C4277cr();
        C4281g c4281g = new C4281g();
        C4295u c4295u = new C4295u();
        C4242bj c4242bj = new C4242bj();
        C4246bn c4246bn = new C4246bn();
        C4232b c4232b = new C4232b(407);
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m259a = c4281g.m259a(bArr);
        byte[] m249a = c4295u.m249a(i, i2, jArr);
        byte[] m305a = c4242bj.m305a(bArr2);
        byte[] m297a = c4246bn.m297a(j);
        c4232b.m320b(new byte[]{(byte) f5244I}, 1);
        byte[] m322b = c4232b.m322b();
        byte[] bArr3 = new byte[m261a.length + m259a.length + m249a.length + m305a.length + m297a.length + m322b.length];
        System.arraycopy(m261a, 0, bArr3, 0, m261a.length);
        int length = m261a.length + 0;
        System.arraycopy(m259a, 0, bArr3, length, m259a.length);
        int length2 = length + m259a.length;
        System.arraycopy(m249a, 0, bArr3, length2, m249a.length);
        int length3 = length2 + m249a.length;
        System.arraycopy(m305a, 0, bArr3, length3, m305a.length);
        int length4 = length3 + m305a.length;
        System.arraycopy(m297a, 0, bArr3, length4, m297a.length);
        int length5 = length4 + m297a.length;
        System.arraycopy(m322b, 0, bArr3, length5, m322b.length);
        int length6 = length5 + m322b.length;
        return m121b(bArr3, this.f5238u, 6);
    }

    @Override // oicq.wlogin_sdk.request.oicq_request
    /* renamed from: d */
    public int mo100d(byte[] bArr, int i, int i2) {
        C4281g c4281g = new C4281g();
        C4247bo c4247bo = new C4247bo();
        C4229ax c4229ax = new C4229ax();
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        int c = m115c(bArr, i + 2);
        C4393util.LOGD(getClass().getName(), "type=" + c);
        int i3 = i + 5;
        switch (c) {
            case C4393util.S_GET_SMS /* 160 */:
                int c2 = c4281g.m316c(bArr, i3, this.f5220c - i3);
                if (c2 >= 0) {
                    m85b._t104 = c4281g;
                    int c3 = c4247bo.m316c(bArr, i3, this.f5220c - i3);
                    if (c3 >= 0) {
                        m85b._t17b = c4247bo;
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
