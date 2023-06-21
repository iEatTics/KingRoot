package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.p027b.C4208ac;
import oicq.wlogin_sdk.p027b.C4212ag;
import oicq.wlogin_sdk.p027b.C4228aw;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4260ca;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4284j;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4292r;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.t */
/* loaded from: classes.dex */
public class C4378t extends oicq_request {
    public C4378t(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 4;
        this.f5239v = "wtlogin.name2uin";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m99a(long j, long j2, int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6, int i7, int i8, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i9 = C4379u.f5291w;
        this.f5241x.f5302g = new String(bArr);
        int i10 = 0;
        while (true) {
            m157a(this.f5226i, this.f5237t, this.f5227j, 0L, this.f5230m, this.f5231n, i9, this.f5233p, m98a(j, j2, i9, i2, bArr, i3, i4, i5, i6, i7, i8, jArr, C4379u.f5272aa, C4379u.f5245A));
            String valueOf = String.valueOf(this.f5241x.f5301f);
            int a = m146a(valueOf, false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i10 + " ret:" + b + " uin: " + valueOf, this.f5241x.f5302g);
            if (b != 180) {
                return b;
            }
            int i11 = i10 + 1;
            if (i10 >= 1) {
                return b;
            }
            i10 = i11;
        }
    }

    /* renamed from: a */
    public byte[] m98a(long j, long j2, int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6, int i7, int i8, long[] jArr, byte[] bArr2, byte[] bArr3) {
        C4278d c4278d = new C4278d();
        C4292r c4292r = new C4292r();
        C4284j c4284j = new C4284j();
        C4285k c4285k = new C4285k();
        C4208ac c4208ac = new C4208ac();
        C4212ag c4212ag = new C4212ag();
        C4295u c4295u = new C4295u();
        C4228aw c4228aw = new C4228aw();
        C4277cr c4277cr = new C4277cr();
        C4232b c4232b = new C4232b(283);
        C4260ca c4260ca = new C4260ca();
        byte[] bArr4 = new byte[0];
        byte[] bArr5 = new byte[0];
        byte[] m260a = c4278d.m260a(j, j2, i, i2);
        byte[] m251a = c4292r.m251a(bArr);
        byte[] m255a = c4284j.m255a(i3, i4, i5, i6);
        byte[] m254a = c4285k.m254a(bArr2);
        byte[] m249a = c4295u.m249a(i7, i8, jArr);
        byte[] m327a = c4228aw.m327a(this.f5241x.f5304i);
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m278a = c4260ca.m278a(C4370l.f5205I);
        c4232b.m320b(new byte[]{2}, 1);
        byte[] m364a = c4208ac.m364a(C4393util.get_os_type(), C4393util.get_os_version(), C4379u.f5248D, C4379u.f5247C, new byte[0], C4379u.f5250F);
        byte[] m359a = c4212ag.m359a(C4379u.f5264T, C4379u.f5265U, C4379u.f5266V, C4379u.f5269Y, C4379u.f5253I, C4379u.f5245A, C4379u.f5260P);
        byte[] bArr6 = new byte[m260a.length + m251a.length + m255a.length + m254a.length + m364a.length + m359a.length + m249a.length + m327a.length + m261a.length + m278a.length + c4232b.m322b().length];
        System.arraycopy(m260a, 0, bArr6, 0, m260a.length);
        int length = 0 + m260a.length;
        System.arraycopy(m251a, 0, bArr6, length, m251a.length);
        int length2 = length + m251a.length;
        System.arraycopy(m255a, 0, bArr6, length2, m255a.length);
        int length3 = length2 + m255a.length;
        System.arraycopy(m327a, 0, bArr6, length3, m327a.length);
        int length4 = length3 + m327a.length;
        System.arraycopy(m261a, 0, bArr6, length4, m261a.length);
        int length5 = length4 + m261a.length;
        int i9 = 5;
        if (bArr2 != null && bArr2.length > 0) {
            System.arraycopy(m254a, 0, bArr6, length5, m254a.length);
            length5 += m254a.length;
            i9 = 6;
        }
        System.arraycopy(m364a, 0, bArr6, length5, m364a.length);
        int length6 = length5 + m364a.length;
        System.arraycopy(m359a, 0, bArr6, length6, m359a.length);
        int length7 = length6 + m359a.length;
        System.arraycopy(m249a, 0, bArr6, length7, m249a.length);
        int length8 = length7 + m249a.length;
        System.arraycopy(m278a, 0, bArr6, length8, m278a.length);
        int length9 = length8 + m278a.length;
        System.arraycopy(c4232b.m322b(), 0, bArr6, length9, c4232b.m322b().length);
        int length10 = length9 + c4232b.m322b().length;
        return m121b(bArr6, this.f5238u, i9 + 3 + 1 + 1);
    }
}
