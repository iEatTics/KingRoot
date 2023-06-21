package oicq.wlogin_sdk.request;

import java.util.List;
import oicq.wlogin_sdk.p027b.C4208ac;
import oicq.wlogin_sdk.p027b.C4212ag;
import oicq.wlogin_sdk.p027b.C4217al;
import oicq.wlogin_sdk.p027b.C4218am;
import oicq.wlogin_sdk.p027b.C4219an;
import oicq.wlogin_sdk.p027b.C4220ao;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4223ar;
import oicq.wlogin_sdk.p027b.C4228aw;
import oicq.wlogin_sdk.p027b.C4238bf;
import oicq.wlogin_sdk.p027b.C4240bh;
import oicq.wlogin_sdk.p027b.C4243bk;
import oicq.wlogin_sdk.p027b.C4251bs;
import oicq.wlogin_sdk.p027b.C4257by;
import oicq.wlogin_sdk.p027b.C4258bz;
import oicq.wlogin_sdk.p027b.C4263cd;
import oicq.wlogin_sdk.p027b.C4268ci;
import oicq.wlogin_sdk.p027b.C4269cj;
import oicq.wlogin_sdk.p027b.C4276cq;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4286l;
import oicq.wlogin_sdk.p027b.C4287m;
import oicq.wlogin_sdk.p027b.C4292r;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.n */
/* loaded from: classes.dex */
public class C4372n extends oicq_request {
    public C4372n(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 10;
        this.f5239v = "wtlogin.exchange_emp";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m164a(long j, long j2, long j3, int i, int i2, byte[] bArr, int i3, int i4, long[] jArr, byte[] bArr2, WUserSigInfo wUserSigInfo) {
        int i5;
        C4393util.LOGI("start request_change_sig", "" + j);
        int i6 = C4379u.f5291w;
        int i7 = i2 & (-33554433);
        C4379u.m85b(this.f5241x.f5303h)._main_sigmap = i7;
        int i8 = 0;
        while (true) {
            m157a(this.f5226i, this.f5237t, this.f5227j, j, this.f5230m, this.f5231n, i6, this.f5233p, m163a(j, j2, j3, i6, i7, bArr, i3, i4, jArr, C4379u.f5272aa, bArr2, wUserSigInfo._domains));
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                i5 = a;
                break;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i8 + " ret:" + b, "" + j);
            if (b != 180) {
                i5 = b;
                break;
            }
            int i9 = i8 + 1;
            if (i8 >= 1) {
                i5 = b;
                break;
            }
            i8 = i9;
        }
        C4393util.LOGI("end request_change_sig for user ret " + i5, "" + j);
        return i5;
    }

    /* renamed from: a */
    public byte[] m163a(long j, long j2, long j3, int i, int i2, byte[] bArr, int i3, int i4, long[] jArr, byte[] bArr2, byte[] bArr3, List<String> list) {
        byte[] bArr4;
        int i5;
        byte[] bArr5;
        int i6;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        byte[] bArr10;
        byte[] bArr11;
        int i7;
        byte[] bArr12;
        byte[] bArr13;
        int i8;
        int i9;
        int i10 = this.f5238u;
        C4278d c4278d = new C4278d();
        C4287m c4287m = new C4287m();
        C4295u c4295u = new C4295u();
        C4285k c4285k = new C4285k();
        C4286l c4286l = new C4286l();
        C4208ac c4208ac = new C4208ac();
        C4212ag c4212ag = new C4212ag();
        C4219an c4219an = new C4219an();
        C4292r c4292r = new C4292r();
        C4220ao c4220ao = new C4220ao();
        C4221ap c4221ap = new C4221ap();
        C4223ar c4223ar = new C4223ar();
        C4218am c4218am = new C4218am();
        C4228aw c4228aw = new C4228aw();
        C4251bs c4251bs = new C4251bs();
        C4217al c4217al = new C4217al();
        C4277cr c4277cr = new C4277cr();
        C4276cq c4276cq = new C4276cq();
        C4238bf c4238bf = new C4238bf();
        C4240bh c4240bh = new C4240bh();
        C4243bk c4243bk = new C4243bk();
        C4257by c4257by = new C4257by();
        C4258bz c4258bz = new C4258bz();
        C4263cd c4263cd = new C4263cd();
        C4268ci c4268ci = new C4268ci();
        C4269cj c4269cj = new C4269cj();
        byte[] m260a = c4278d.m260a(j2, j3, i, i2);
        byte[] m252a = c4287m.m252a(bArr);
        byte[] m249a = c4295u.m249a(i3, i4, jArr);
        byte[] m341a = c4221ap.m341a(C4379u.f5245A);
        byte[] m345a = c4218am.m345a(C4379u.f5249E);
        byte[] m327a = c4228aw.m327a(this.f5241x.f5304i);
        byte[] m289a = c4251bs.m289a(j2, i, j, 0);
        byte[] m346b = c4217al.m346b(C4379u.f5247C, C4379u.f5248D, C4379u.f5250F);
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m336a = c4223ar.m336a(j2, C4379u.f5251G, C4379u.f5252H);
        byte[] m304a = c4243bk.m304a(C4393util.BUILD_TIME, C4393util.SDK_VERSION);
        byte[] bArr14 = new byte[0];
        byte[] bArr15 = new byte[0];
        byte[] bArr16 = new byte[0];
        byte[] bArr17 = new byte[0];
        byte[] bArr18 = new byte[0];
        byte[] bArr19 = new byte[0];
        byte[] bArr20 = new byte[0];
        byte[] bArr21 = new byte[0];
        byte[] bArr22 = new byte[0];
        byte[] bArr23 = new byte[0];
        byte[] bArr24 = new byte[0];
        byte[] bArr25 = new byte[0];
        byte[] bArr26 = new byte[0];
        byte[] bArr27 = new byte[0];
        byte[] bArr28 = new byte[0];
        if (bArr2 == null || bArr2.length <= 0) {
            bArr4 = bArr14;
            i5 = 10;
        } else {
            bArr4 = c4285k.m254a(bArr2);
            i5 = 11;
        }
        if (list == null || list.size() <= 0) {
            bArr5 = bArr21;
            i6 = i5;
        } else {
            bArr5 = c4276cq.m262a(list);
            i6 = i5 + 1;
        }
        if (this.f5241x.f5313r == null || this.f5241x.f5313r.length <= 0) {
            bArr6 = bArr23;
        } else {
            i6++;
            bArr6 = c4240bh.m306a(this.f5241x.f5313r);
        }
        if (C4379u.f5258N == null || C4379u.f5258N.length <= 0) {
            bArr7 = bArr24;
        } else {
            i6++;
            bArr7 = c4257by.m281a(C4379u.f5258N);
        }
        if (C4379u.f5259O == null || C4379u.f5259O.length <= 0) {
            bArr8 = bArr25;
        } else {
            i6++;
            bArr8 = c4258bz.m280a(C4379u.f5259O);
        }
        if (C4379u.f5256L == null || C4379u.f5256L.length <= 0) {
            bArr9 = bArr26;
        } else {
            i6++;
            bArr9 = c4263cd.m275a(C4379u.f5256L);
        }
        if (C4370l.f5206J == null || C4370l.f5206J.length <= 0) {
            bArr10 = bArr27;
        } else {
            i6++;
            bArr10 = c4268ci.m266a(C4370l.f5206J, C4370l.f5207K, "qq".getBytes(), C4370l.f5208L);
        }
        if (C4379u.f5262R == null || C4379u.f5262R.length <= 0) {
            bArr11 = bArr28;
            i7 = i6;
        } else {
            bArr11 = c4269cj.m265a(C4379u.f5262R, C4379u.f5263S);
            i7 = i6 + 1;
        }
        byte[] m343a = c4220ao.m343a(c4286l.m253a(C4379u.f5257M), c4208ac.m364a(C4393util.get_os_type(), C4393util.get_os_version(), C4379u.f5248D, C4379u.f5247C, new byte[0], C4379u.f5250F), c4212ag.m359a(C4379u.f5264T, C4379u.f5265U, C4379u.f5266V, C4379u.f5269Y, C4379u.f5253I, C4379u.f5245A, C4379u.f5260P), c4238bf.m307a(C4379u.f5253I), this.f5241x.f5298b);
        if (bArr3 == null || bArr3.length <= 0) {
            int i11 = i7 + 2;
            if (this.f5241x.f5302g == null || C4393util.check_uin_account(this.f5241x.f5302g).booleanValue()) {
                bArr12 = bArr19;
            } else {
                bArr12 = c4292r.m251a(this.f5241x.f5302g.getBytes());
                i11++;
            }
            byte[] bArr29 = new byte[m260a.length + m252a.length + m249a.length + bArr4.length + m343a.length + bArr18.length + bArr12.length + m341a.length + m345a.length + m327a.length + m289a.length + m346b.length + m261a.length + bArr5.length + m336a.length + bArr6.length + m304a.length + bArr7.length + bArr8.length + bArr9.length + bArr10.length + bArr11.length];
            System.arraycopy(m260a, 0, bArr29, 0, m260a.length);
            int length = 0 + m260a.length;
            System.arraycopy(m252a, 0, bArr29, length, m252a.length);
            int length2 = length + m252a.length;
            System.arraycopy(m249a, 0, bArr29, length2, m249a.length);
            int length3 = length2 + m249a.length;
            System.arraycopy(bArr4, 0, bArr29, length3, bArr4.length);
            int length4 = length3 + bArr4.length;
            System.arraycopy(m343a, 0, bArr29, length4, m343a.length);
            int length5 = m343a.length + length4;
            System.arraycopy(bArr18, 0, bArr29, length5, bArr18.length);
            int length6 = length5 + bArr18.length;
            System.arraycopy(bArr12, 0, bArr29, length6, bArr12.length);
            int length7 = bArr12.length + length6;
            System.arraycopy(m341a, 0, bArr29, length7, m341a.length);
            int length8 = length7 + m341a.length;
            System.arraycopy(m345a, 0, bArr29, length8, m345a.length);
            int length9 = length8 + m345a.length;
            System.arraycopy(m327a, 0, bArr29, length9, m327a.length);
            int length10 = length9 + m327a.length;
            System.arraycopy(m289a, 0, bArr29, length10, m289a.length);
            int length11 = length10 + m289a.length;
            System.arraycopy(m346b, 0, bArr29, length11, m346b.length);
            int length12 = length11 + m346b.length;
            System.arraycopy(m261a, 0, bArr29, length12, m261a.length);
            int length13 = length12 + m261a.length;
            System.arraycopy(bArr5, 0, bArr29, length13, bArr5.length);
            int length14 = length13 + bArr5.length;
            System.arraycopy(m336a, 0, bArr29, length14, m336a.length);
            int length15 = length14 + m336a.length;
            System.arraycopy(bArr6, 0, bArr29, length15, bArr6.length);
            int length16 = length15 + bArr6.length;
            System.arraycopy(m304a, 0, bArr29, length16, m304a.length);
            int length17 = length16 + m304a.length;
            System.arraycopy(bArr7, 0, bArr29, length17, bArr7.length);
            int length18 = length17 + bArr7.length;
            System.arraycopy(bArr8, 0, bArr29, length18, bArr8.length);
            int length19 = length18 + bArr8.length;
            System.arraycopy(bArr9, 0, bArr29, length19, bArr9.length);
            int length20 = length19 + bArr9.length;
            System.arraycopy(bArr10, 0, bArr29, length20, bArr10.length);
            int length21 = length20 + bArr10.length;
            System.arraycopy(bArr11, 0, bArr29, length21, bArr11.length);
            int length22 = length21 + bArr11.length;
            bArr13 = bArr29;
            i8 = i11;
            i9 = i10;
        } else {
            byte[] m344a = c4219an.m344a(bArr3);
            i8 = i7 + 1 + 1;
            i9 = 11;
            bArr13 = new byte[m260a.length + m252a.length + m249a.length + bArr4.length + m343a.length + m344a.length + m345a.length + m327a.length + m289a.length + m346b.length + m261a.length + bArr5.length + m336a.length + bArr6.length + m304a.length + bArr7.length + bArr8.length + bArr9.length + bArr10.length + bArr11.length];
            System.arraycopy(m260a, 0, bArr13, 0, m260a.length);
            int length23 = 0 + m260a.length;
            System.arraycopy(m252a, 0, bArr13, length23, m252a.length);
            int length24 = length23 + m252a.length;
            System.arraycopy(m249a, 0, bArr13, length24, m249a.length);
            int length25 = length24 + m249a.length;
            System.arraycopy(bArr4, 0, bArr13, length25, bArr4.length);
            int length26 = length25 + bArr4.length;
            System.arraycopy(m343a, 0, bArr13, length26, m343a.length);
            int length27 = m343a.length + length26;
            System.arraycopy(m344a, 0, bArr13, length27, m344a.length);
            int length28 = length27 + m344a.length;
            System.arraycopy(m345a, 0, bArr13, length28, m345a.length);
            int length29 = length28 + m345a.length;
            System.arraycopy(m327a, 0, bArr13, length29, m327a.length);
            int length30 = length29 + m327a.length;
            System.arraycopy(m289a, 0, bArr13, length30, m289a.length);
            int length31 = length30 + m289a.length;
            System.arraycopy(m346b, 0, bArr13, length31, m346b.length);
            int length32 = length31 + m346b.length;
            System.arraycopy(m261a, 0, bArr13, length32, m261a.length);
            int length33 = length32 + m261a.length;
            System.arraycopy(bArr5, 0, bArr13, length33, bArr5.length);
            int length34 = length33 + bArr5.length;
            System.arraycopy(m336a, 0, bArr13, length34, m336a.length);
            int length35 = length34 + m336a.length;
            System.arraycopy(bArr6, 0, bArr13, length35, bArr6.length);
            int length36 = length35 + bArr6.length;
            System.arraycopy(m304a, 0, bArr13, length36, m304a.length);
            int length37 = length36 + m304a.length;
            System.arraycopy(bArr7, 0, bArr13, length37, bArr7.length);
            int length38 = length37 + bArr7.length;
            System.arraycopy(bArr8, 0, bArr13, length38, bArr8.length);
            int length39 = length38 + bArr8.length;
            System.arraycopy(bArr9, 0, bArr13, length39, bArr9.length);
            int length40 = length39 + bArr9.length;
            System.arraycopy(bArr10, 0, bArr13, length40, bArr10.length);
            int length41 = length40 + bArr10.length;
            System.arraycopy(bArr11, 0, bArr13, length41, bArr11.length);
            int length42 = length41 + bArr11.length;
        }
        return m121b(bArr13, i9, i8);
    }
}
