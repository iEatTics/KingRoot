package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.p027b.C4208ac;
import oicq.wlogin_sdk.p027b.C4212ag;
import oicq.wlogin_sdk.p027b.C4217al;
import oicq.wlogin_sdk.p027b.C4218am;
import oicq.wlogin_sdk.p027b.C4220ao;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4223ar;
import oicq.wlogin_sdk.p027b.C4224as;
import oicq.wlogin_sdk.p027b.C4227av;
import oicq.wlogin_sdk.p027b.C4236bd;
import oicq.wlogin_sdk.p027b.C4238bf;
import oicq.wlogin_sdk.p027b.C4240bh;
import oicq.wlogin_sdk.p027b.C4243bk;
import oicq.wlogin_sdk.p027b.C4251bs;
import oicq.wlogin_sdk.p027b.C4257by;
import oicq.wlogin_sdk.p027b.C4258bz;
import oicq.wlogin_sdk.p027b.C4263cd;
import oicq.wlogin_sdk.p027b.C4269cj;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4283i;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4286l;
import oicq.wlogin_sdk.p027b.C4292r;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.m */
/* loaded from: classes.dex */
public class C4371m extends oicq_request {
    public C4371m(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 13;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m166a(long j, long j2, long j3, int i, int i2, byte[] bArr, byte[] bArr2, int i3, int i4, long[] jArr, byte[] bArr3, long j4, long j5, long j6, byte[] bArr4, byte[] bArr5, WUserSigInfo wUserSigInfo) {
        int i5 = C4379u.f5291w;
        byte[] c = m116c(bArr);
        if (c == null) {
            return C4393util.E_A1_DECRYPT;
        }
        int i6 = 0;
        while (true) {
            int i7 = i6;
            m157a(this.f5226i, this.f5237t, this.f5227j, j, this.f5230m, this.f5231n, i5, this.f5233p, m165a(j, j2, j3, i5, i2, c, bArr2, i3, i4, jArr, C4379u.f5272aa, bArr3, j4, j5, j6, bArr4, bArr5));
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i7 + " ret:" + b, "" + j);
            if (b != 180) {
                return b;
            }
            i6 = i7 + 1;
            if (i7 >= 1) {
                return b;
            }
        }
    }

    /* renamed from: a */
    public byte[] m165a(long j, long j2, long j3, int i, int i2, byte[] bArr, byte[] bArr2, int i3, int i4, long[] jArr, byte[] bArr3, byte[] bArr4, long j4, long j5, long j6, byte[] bArr5, byte[] bArr6) {
        byte[] bArr7;
        int i5;
        byte[] bArr8;
        int i6;
        byte[] bArr9;
        int i7;
        byte[] bArr10;
        byte[] bArr11;
        byte[] bArr12;
        byte[] bArr13;
        byte[] bArr14;
        int i8;
        C4283i c4283i = new C4283i();
        C4220ao c4220ao = new C4220ao();
        C4278d c4278d = new C4278d();
        C4285k c4285k = new C4285k();
        C4295u c4295u = new C4295u();
        C4292r c4292r = new C4292r();
        C4218am c4218am = new C4218am();
        C4221ap c4221ap = new C4221ap();
        C4236bd c4236bd = new C4236bd();
        C4251bs c4251bs = new C4251bs();
        C4217al c4217al = new C4217al();
        C4277cr c4277cr = new C4277cr();
        C4286l c4286l = new C4286l();
        C4208ac c4208ac = new C4208ac();
        C4212ag c4212ag = new C4212ag();
        C4223ar c4223ar = new C4223ar();
        C4224as c4224as = new C4224as();
        C4227av c4227av = new C4227av();
        C4238bf c4238bf = new C4238bf();
        C4240bh c4240bh = new C4240bh();
        C4243bk c4243bk = new C4243bk();
        C4257by c4257by = new C4257by();
        C4258bz c4258bz = new C4258bz();
        C4263cd c4263cd = new C4263cd();
        C4269cj c4269cj = new C4269cj();
        c4283i.m320b(bArr, bArr.length);
        byte[] b = c4283i.m322b();
        byte[] m260a = c4278d.m260a(j5, j6, i, i2);
        byte[] m249a = c4295u.m249a(i3, i4, jArr);
        byte[] m345a = c4218am.m345a(C4379u.f5249E);
        byte[] m341a = c4221ap.m341a(C4379u.f5245A);
        byte[] m289a = c4251bs.m289a(j2, i, j, 0);
        byte[] m346b = c4217al.m346b(C4379u.f5247C, C4379u.f5248D, C4379u.f5250F);
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m336a = c4223ar.m336a(j2, C4379u.f5251G, C4379u.f5252H);
        byte[] m304a = c4243bk.m304a(C4393util.BUILD_TIME, C4393util.SDK_VERSION);
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
        byte[] bArr29 = new byte[0];
        byte[] bArr30 = new byte[0];
        if (bArr3 == null || bArr3.length <= 0) {
            bArr7 = bArr15;
            i5 = 10;
        } else {
            bArr7 = c4285k.m254a(bArr3);
            i5 = 11;
        }
        if (this.f5241x.f5302g == null || C4393util.check_uin_account(this.f5241x.f5302g).booleanValue()) {
            bArr8 = bArr16;
            i6 = i5;
        } else {
            bArr8 = c4292r.m251a(this.f5241x.f5302g.getBytes());
            i6 = i5 + 1;
        }
        if (bArr2 == null || bArr2.length <= 0) {
            bArr9 = bArr24;
            i7 = i6;
        } else {
            bArr9 = c4236bd.m308a(bArr2);
            i7 = i6 + 1;
        }
        if (this.f5241x.f5313r == null || this.f5241x.f5313r.length <= 0) {
            bArr10 = bArr26;
        } else {
            i7++;
            bArr10 = c4240bh.m306a(this.f5241x.f5313r);
        }
        if (C4379u.f5258N == null || C4379u.f5258N.length <= 0) {
            bArr11 = bArr27;
        } else {
            i7++;
            bArr11 = c4257by.m281a(C4379u.f5258N);
        }
        if (C4379u.f5259O == null || C4379u.f5259O.length <= 0) {
            bArr12 = bArr28;
        } else {
            i7++;
            bArr12 = c4258bz.m280a(C4379u.f5259O);
        }
        if (C4379u.f5256L == null || C4379u.f5256L.length <= 0) {
            bArr13 = bArr29;
        } else {
            i7++;
            bArr13 = c4263cd.m275a(C4379u.f5256L);
        }
        if (C4379u.f5262R == null || C4379u.f5262R.length <= 0) {
            bArr14 = bArr30;
            i8 = i7;
        } else {
            bArr14 = c4269cj.m265a(C4379u.f5262R, C4379u.f5263S);
            i8 = i7 + 1;
        }
        byte[] m342a = c4220ao.m342a(c4286l.m253a(C4379u.f5257M), c4208ac.m364a(C4393util.get_os_type(), C4393util.get_os_version(), C4379u.f5248D, C4379u.f5247C, new byte[0], C4379u.f5250F), c4212ag.m359a(C4379u.f5264T, C4379u.f5265U, C4379u.f5266V, 0, C4379u.f5253I, C4379u.f5245A, C4379u.f5260P), c4224as.m335a(bArr4, j4, j5, j6, bArr5, bArr6), bArr21, c4227av.m328a(C4379u.f5270Z), c4238bf.m307a(C4379u.f5253I), C4379u.m85b(this.f5241x.f5303h)._tgtgt_key);
        byte[] bArr31 = new byte[b.length + m260a.length + bArr7.length + m249a.length + bArr8.length + m345a.length + m341a.length + m342a.length + bArr9.length + m289a.length + m346b.length + m261a.length + m336a.length + bArr10.length + m304a.length + bArr11.length + bArr12.length + bArr13.length + bArr14.length];
        System.arraycopy(b, 0, bArr31, 0, b.length);
        int length = 0 + b.length;
        System.arraycopy(m260a, 0, bArr31, length, m260a.length);
        int length2 = length + m260a.length;
        System.arraycopy(bArr7, 0, bArr31, length2, bArr7.length);
        int length3 = length2 + bArr7.length;
        System.arraycopy(m249a, 0, bArr31, length3, m249a.length);
        int length4 = length3 + m249a.length;
        System.arraycopy(bArr8, 0, bArr31, length4, bArr8.length);
        int length5 = length4 + bArr8.length;
        System.arraycopy(m345a, 0, bArr31, length5, m345a.length);
        int length6 = length5 + m345a.length;
        System.arraycopy(m341a, 0, bArr31, length6, m341a.length);
        int length7 = length6 + m341a.length;
        System.arraycopy(m342a, 0, bArr31, length7, m342a.length);
        int length8 = m342a.length + length7;
        System.arraycopy(bArr9, 0, bArr31, length8, bArr9.length);
        int length9 = length8 + bArr9.length;
        System.arraycopy(m289a, 0, bArr31, length9, m289a.length);
        int length10 = length9 + m289a.length;
        System.arraycopy(m346b, 0, bArr31, length10, m346b.length);
        int length11 = length10 + m346b.length;
        System.arraycopy(m261a, 0, bArr31, length11, m261a.length);
        int length12 = length11 + m261a.length;
        System.arraycopy(m336a, 0, bArr31, length12, m336a.length);
        int length13 = length12 + m336a.length;
        System.arraycopy(bArr10, 0, bArr31, length13, bArr10.length);
        int length14 = length13 + bArr10.length;
        System.arraycopy(m304a, 0, bArr31, length14, m304a.length);
        int length15 = length14 + m304a.length;
        System.arraycopy(bArr11, 0, bArr31, length15, bArr11.length);
        int length16 = length15 + bArr11.length;
        System.arraycopy(bArr12, 0, bArr31, length16, bArr12.length);
        int length17 = length16 + bArr12.length;
        System.arraycopy(bArr13, 0, bArr31, length17, bArr13.length);
        int length18 = length17 + bArr13.length;
        System.arraycopy(bArr14, 0, bArr31, length18, bArr14.length);
        int length19 = length18 + bArr14.length;
        return m121b(bArr31, this.f5238u, i8 + 1);
    }
}
