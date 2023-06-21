package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.p027b.C4272cm;
import oicq.wlogin_sdk.p027b.C4273cn;
import oicq.wlogin_sdk.p027b.C4274co;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.q */
/* loaded from: classes.dex */
public class C4375q extends oicq_request {
    public C4375q(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 20;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m106a(int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        C4281g c4281g = m85b._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        C4273cn c4273cn = m85b._t402;
        if (c4273cn == null) {
            c4273cn = new C4273cn();
        }
        C4274co c4274co = m85b._t403;
        if (c4274co == null) {
            c4274co = new C4274co();
        }
        m85b._dpwd = C4393util.get_mpasswd().getBytes();
        m85b.f5179_G = m113c(C4379u.f5245A, m85b._dpwd, c4273cn.m318c());
        if (c4273cn.m315d() > 0 && c4274co.m315d() > 0) {
            m85b._sec_guid_flag = true;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m105a(c4281g2.m318c(), i, i2, jArr, m85b.f5179_G));
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
    public byte[] m105a(byte[] bArr, int i, int i2, long[] jArr, byte[] bArr2) {
        C4277cr c4277cr = new C4277cr();
        C4281g c4281g = new C4281g();
        C4295u c4295u = new C4295u();
        C4272cm c4272cm = new C4272cm();
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m259a = c4281g.m259a(bArr);
        byte[] m249a = c4295u.m249a(i, i2, jArr);
        byte[] m263a = c4272cm.m263a(bArr2);
        byte[] bArr3 = new byte[m261a.length + m259a.length + m249a.length + m263a.length];
        System.arraycopy(m261a, 0, bArr3, 0, m261a.length);
        int length = m261a.length + 0;
        System.arraycopy(m259a, 0, bArr3, length, m259a.length);
        int length2 = length + m259a.length;
        System.arraycopy(m249a, 0, bArr3, length2, m249a.length);
        int length3 = length2 + m249a.length;
        System.arraycopy(m263a, 0, bArr3, length3, m263a.length);
        int length4 = length3 + m263a.length;
        return m121b(bArr3, this.f5238u, 4);
    }
}
