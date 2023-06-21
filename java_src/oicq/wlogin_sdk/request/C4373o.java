package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.p027b.C4262cc;
import oicq.wlogin_sdk.p027b.C4266cg;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4282h;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.o */
/* loaded from: classes.dex */
public class C4373o extends oicq_request {

    /* renamed from: I */
    public static boolean f5209I = false;

    public C4373o(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 2;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m162a(byte[] bArr, int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        C4281g c4281g = m85b._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        C4282h c4282h = m85b._t105;
        C4282h c4282h2 = c4282h == null ? new C4282h() : c4282h;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m161a(c4281g2.m318c(), bArr, c4282h2.m257g(), i, i2, jArr));
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
    public byte[] m161a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, long[] jArr) {
        C4266cg c4266cg = new C4266cg();
        C4277cr c4277cr = new C4277cr();
        C4281g c4281g = new C4281g();
        C4295u c4295u = new C4295u();
        C4262cc c4262cc = new C4262cc();
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m259a = c4281g.m259a(bArr);
        byte[] m249a = c4295u.m249a(i, i2, jArr);
        byte[] bArr4 = new byte[0];
        byte[] m276a = f5209I ? c4262cc.m276a(bArr2) : c4266cg.m269a(bArr2, bArr3);
        byte[] bArr5 = new byte[m276a.length + m261a.length + m259a.length + m249a.length];
        System.arraycopy(m276a, 0, bArr5, 0, m276a.length);
        int length = m276a.length + 0;
        System.arraycopy(m261a, 0, bArr5, length, m261a.length);
        int length2 = length + m261a.length;
        System.arraycopy(m259a, 0, bArr5, length2, m259a.length);
        int length3 = length2 + m259a.length;
        System.arraycopy(m249a, 0, bArr5, length3, m249a.length);
        int length4 = length3 + m249a.length;
        return m121b(bArr5, this.f5238u, 4);
    }
}
