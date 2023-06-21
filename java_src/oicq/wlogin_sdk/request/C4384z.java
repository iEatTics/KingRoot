package oicq.wlogin_sdk.request;

import java.util.List;
import oicq.wlogin_sdk.p027b.C4208ac;
import oicq.wlogin_sdk.p027b.C4212ag;
import oicq.wlogin_sdk.p027b.C4217al;
import oicq.wlogin_sdk.p027b.C4218am;
import oicq.wlogin_sdk.p027b.C4220ao;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4223ar;
import oicq.wlogin_sdk.p027b.C4228aw;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4233ba;
import oicq.wlogin_sdk.p027b.C4236bd;
import oicq.wlogin_sdk.p027b.C4238bf;
import oicq.wlogin_sdk.p027b.C4240bh;
import oicq.wlogin_sdk.p027b.C4243bk;
import oicq.wlogin_sdk.p027b.C4251bs;
import oicq.wlogin_sdk.p027b.C4257by;
import oicq.wlogin_sdk.p027b.C4258bz;
import oicq.wlogin_sdk.p027b.C4259c;
import oicq.wlogin_sdk.p027b.C4263cd;
import oicq.wlogin_sdk.p027b.C4268ci;
import oicq.wlogin_sdk.p027b.C4269cj;
import oicq.wlogin_sdk.p027b.C4271cl;
import oicq.wlogin_sdk.p027b.C4276cq;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4283i;
import oicq.wlogin_sdk.p027b.C4284j;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4286l;
import oicq.wlogin_sdk.p027b.C4292r;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.request.oicq_request;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.z */
/* loaded from: classes.dex */
public class C4384z extends oicq_request {
    public C4384z(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 15;
        this.f5239v = "wtlogin.exchange_emp";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
        this.f5242y = oicq_request.EncryptionMethod.EM_ST;
    }

    /* renamed from: a */
    private byte[] m52a(long j, int i, long j2, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, int i3, int i4, long[] jArr, int i5, long j3, int i6, int i7, int i8, int i9, int i10, byte[] bArr4, long j4, byte[] bArr5, List<String> list) {
        byte[] bArr6;
        int i11;
        byte[] bArr7;
        int i12;
        byte[] bArr8;
        byte[] bArr9;
        byte[] bArr10;
        byte[] bArr11;
        byte[] bArr12;
        byte[] bArr13;
        int i13;
        byte[] bArr14;
        byte[] bArr15;
        int i14;
        byte[] bArr16;
        byte[] bArr17;
        int i15;
        C4251bs c4251bs = new C4251bs();
        C4259c c4259c = new C4259c();
        C4283i c4283i = new C4283i();
        C4295u c4295u = new C4295u();
        C4278d c4278d = new C4278d();
        C4284j c4284j = new C4284j();
        C4285k c4285k = new C4285k();
        C4286l c4286l = new C4286l();
        C4208ac c4208ac = new C4208ac();
        C4212ag c4212ag = new C4212ag();
        C4218am c4218am = new C4218am();
        C4292r c4292r = new C4292r();
        C4220ao c4220ao = new C4220ao();
        C4221ap c4221ap = new C4221ap();
        C4223ar c4223ar = new C4223ar();
        C4233ba c4233ba = new C4233ba();
        C4236bd c4236bd = new C4236bd();
        C4217al c4217al = new C4217al();
        C4277cr c4277cr = new C4277cr();
        C4228aw c4228aw = new C4228aw();
        C4276cq c4276cq = new C4276cq();
        C4238bf c4238bf = new C4238bf();
        C4240bh c4240bh = new C4240bh();
        C4243bk c4243bk = new C4243bk();
        C4271cl c4271cl = new C4271cl();
        C4257by c4257by = new C4257by();
        C4258bz c4258bz = new C4258bz();
        C4263cd c4263cd = new C4263cd();
        C4268ci c4268ci = new C4268ci();
        C4269cj c4269cj = new C4269cj();
        C4232b c4232b = new C4232b(1302);
        WloginSigInfo m95a = this.f5241x.m95a(j2, j4);
        byte[] m289a = c4251bs.m289a(j, i, j2, i2);
        byte[] m279a = c4259c.m279a(j2, bArr);
        c4283i.m320b(bArr2, bArr2.length);
        byte[] b = c4283i.m322b();
        C4393util.LOGD("req2 a1:", C4393util.buf_to_string(b));
        byte[] m260a = c4278d.m260a(j, j3, i, i5);
        byte[] m255a = c4284j.m255a(i7, i8, i9, i10);
        byte[] m249a = c4295u.m249a(i3, i4, jArr);
        byte[] m341a = c4221ap.m341a(C4379u.f5245A);
        byte[] m327a = c4228aw.m327a(this.f5241x.f5304i);
        byte[] m346b = c4217al.m346b(C4379u.f5247C, C4379u.f5248D, C4379u.f5250F);
        byte[] m261a = c4277cr.m261a(0, C4379u.f5289u, 0);
        byte[] m336a = c4223ar.m336a(j4, C4379u.f5251G, C4379u.f5252H);
        byte[] m304a = c4243bk.m304a(C4393util.BUILD_TIME, C4393util.SDK_VERSION);
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
        byte[] bArr31 = new byte[0];
        byte[] bArr32 = new byte[0];
        byte[] bArr33 = new byte[0];
        byte[] bArr34 = new byte[0];
        byte[] bArr35 = new byte[0];
        if (bArr4 == null || bArr4.length <= 0) {
            bArr6 = bArr18;
            i11 = 12;
        } else {
            bArr6 = c4285k.m254a(bArr4);
            i11 = 13;
        }
        if ((i3 & 128) != 0) {
            bArr7 = c4233ba.m312a(C4379u.f5292x);
            i12 = i11 + 1;
        } else {
            bArr7 = bArr25;
            i12 = i11;
        }
        if (this.f5241x.f5313r == null || this.f5241x.f5313r.length <= 0) {
            bArr8 = bArr29;
        } else {
            i12++;
            bArr8 = c4240bh.m306a(this.f5241x.f5313r);
        }
        if (C4379u.f5258N == null || C4379u.f5258N.length <= 0) {
            bArr9 = bArr31;
        } else {
            i12++;
            bArr9 = c4257by.m281a(C4379u.f5258N);
        }
        if (C4379u.f5259O == null || C4379u.f5259O.length <= 0) {
            bArr10 = bArr32;
        } else {
            i12++;
            bArr10 = c4258bz.m280a(C4379u.f5259O);
        }
        if (C4379u.f5256L == null || C4379u.f5256L.length <= 0) {
            bArr11 = bArr33;
        } else {
            i12++;
            bArr11 = c4263cd.m275a(C4379u.f5256L);
        }
        if (C4370l.f5206J == null || C4370l.f5206J.length <= 0) {
            bArr12 = bArr34;
        } else {
            i12++;
            bArr12 = c4268ci.m266a(C4370l.f5206J, C4370l.f5207K, "qq".getBytes(), C4370l.f5208L);
        }
        if (C4379u.f5262R == null || C4379u.f5262R.length <= 0) {
            bArr13 = bArr35;
            i13 = i12;
        } else {
            bArr13 = c4269cj.m265a(C4379u.f5262R, C4379u.f5263S);
            i13 = i12 + 1;
        }
        byte[] m343a = c4220ao.m343a(c4286l.m253a(C4379u.f5257M), c4208ac.m364a(C4393util.get_os_type(), C4393util.get_os_version(), C4379u.f5248D, C4379u.f5247C, new byte[0], C4379u.f5250F), c4212ag.m359a(C4379u.f5264T, C4379u.f5265U, C4379u.f5266V, C4379u.f5269Y, C4379u.f5253I, C4379u.f5245A, C4379u.f5260P), c4238bf.m307a(C4379u.f5253I), C4379u.m85b(this.f5241x.f5303h)._tgtgt_key);
        byte[] m345a = c4218am.m345a(bArr5);
        int i16 = i13 + 1 + 1;
        if (this.f5241x.f5302g == null || C4393util.check_uin_account(this.f5241x.f5302g).booleanValue()) {
            bArr14 = bArr23;
        } else {
            i16++;
            bArr14 = c4292r.m251a(this.f5241x.f5302g.getBytes());
        }
        if (bArr3 == null || bArr3.length <= 0) {
            bArr15 = bArr26;
            i14 = i16;
        } else {
            i14 = i16 + 1;
            bArr15 = c4236bd.m308a(bArr3);
        }
        if (list == null || list.size() <= 0) {
            bArr16 = bArr27;
        } else {
            i14++;
            bArr16 = c4276cq.m262a(list);
        }
        if (m95a == null || m95a.f5318_G == null || m95a.f5318_G.length <= 0 || m95a._dpwd == null || m95a._dpwd.length <= 0 || m95a._randseed == null || m95a._randseed.length <= 0) {
            C4393util.LOGI("request_tgtgt_nopicsig req without DA1", "" + j2);
            bArr17 = bArr30;
            i15 = i14;
        } else {
            bArr17 = c4271cl.m264a(m95a.f5318_G, j2, C4379u.f5245A, m95a._dpwd, j4, 1L, m95a._randseed);
            i15 = i14 + 1;
        }
        byte[] bArr36 = new byte[4];
        C4393util.int32_to_buf(bArr36, 0, C4379u.f5277af);
        c4232b.m320b(bArr36, 4);
        byte[] m322b = c4232b.m322b();
        byte[] bArr37 = new byte[m289a.length + m279a.length + b.length + m249a.length + m260a.length + m255a.length + bArr6.length + m343a.length + m345a.length + bArr14.length + m341a.length + bArr7.length + bArr15.length + m327a.length + m346b.length + m261a.length + bArr16.length + m336a.length + bArr8.length + m304a.length + bArr17.length + bArr9.length + bArr10.length + bArr11.length + bArr12.length + bArr13.length + m322b.length];
        System.arraycopy(m289a, 0, bArr37, 0, m289a.length);
        int length = 0 + m289a.length;
        System.arraycopy(m279a, 0, bArr37, length, m279a.length);
        int length2 = length + m279a.length;
        System.arraycopy(b, 0, bArr37, length2, b.length);
        int length3 = length2 + b.length;
        System.arraycopy(m249a, 0, bArr37, length3, m249a.length);
        int length4 = length3 + m249a.length;
        System.arraycopy(m260a, 0, bArr37, length4, m260a.length);
        int length5 = length4 + m260a.length;
        System.arraycopy(m255a, 0, bArr37, length5, m255a.length);
        int length6 = length5 + m255a.length;
        System.arraycopy(bArr6, 0, bArr37, length6, bArr6.length);
        int length7 = length6 + bArr6.length;
        System.arraycopy(m343a, 0, bArr37, length7, m343a.length);
        int length8 = length7 + m343a.length;
        System.arraycopy(m345a, 0, bArr37, length8, m345a.length);
        int length9 = length8 + m345a.length;
        System.arraycopy(bArr14, 0, bArr37, length9, bArr14.length);
        int length10 = length9 + bArr14.length;
        System.arraycopy(m341a, 0, bArr37, length10, m341a.length);
        int length11 = length10 + m341a.length;
        System.arraycopy(bArr7, 0, bArr37, length11, bArr7.length);
        int length12 = length11 + bArr7.length;
        System.arraycopy(bArr15, 0, bArr37, length12, bArr15.length);
        int length13 = length12 + bArr15.length;
        System.arraycopy(m327a, 0, bArr37, length13, m327a.length);
        int length14 = length13 + m327a.length;
        System.arraycopy(m346b, 0, bArr37, length14, m346b.length);
        int length15 = length14 + m346b.length;
        System.arraycopy(m261a, 0, bArr37, length15, m261a.length);
        int length16 = length15 + m261a.length;
        System.arraycopy(bArr16, 0, bArr37, length16, bArr16.length);
        int length17 = length16 + bArr16.length;
        System.arraycopy(m336a, 0, bArr37, length17, m336a.length);
        int length18 = length17 + m336a.length;
        System.arraycopy(bArr8, 0, bArr37, length18, bArr8.length);
        int length19 = length18 + bArr8.length;
        System.arraycopy(m304a, 0, bArr37, length19, m304a.length);
        int length20 = length19 + m304a.length;
        System.arraycopy(bArr17, 0, bArr37, length20, bArr17.length);
        int length21 = bArr17.length + length20;
        System.arraycopy(bArr9, 0, bArr37, length21, bArr9.length);
        int length22 = length21 + bArr9.length;
        System.arraycopy(bArr10, 0, bArr37, length22, bArr10.length);
        int length23 = length22 + bArr10.length;
        System.arraycopy(bArr11, 0, bArr37, length23, bArr11.length);
        int length24 = length23 + bArr11.length;
        System.arraycopy(bArr12, 0, bArr37, length24, bArr12.length);
        int length25 = length24 + bArr12.length;
        System.arraycopy(bArr13, 0, bArr37, length25, bArr13.length);
        int length26 = length25 + bArr13.length;
        System.arraycopy(m322b, 0, bArr37, length26, m322b.length);
        int length27 = length26 + m322b.length;
        return m133a(m135a(bArr37, this.f5238u, i15 + 1), this.f5242y, this.f5215A, this.f5216B);
    }

    /* renamed from: a */
    public int m53a(long j, int i, long j2, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, int i3, int i4, long[] jArr, int i5, long j3, int i6, int i7, int i8, int i9, int i10, byte[] bArr4, long j4, WUserSigInfo wUserSigInfo) {
        int a;
        C4393util.LOGI("start request_tgtgt_nopicsig", "" + j2);
        int i11 = C4379u.f5291w;
        byte[] c = m116c(bArr2);
        if (c == null) {
            return C4393util.E_A1_DECRYPT;
        }
        int i12 = 0;
        while (true) {
            int i13 = i12;
            if (this.f5242y == oicq_request.EncryptionMethod.EM_ST && (this.f5216B == null || this.f5216B.length == 0 || this.f5215A == null || this.f5215A.length == 0)) {
                this.f5242y = oicq_request.EncryptionMethod.EM_ECDH;
                C4379u.f5281al.attr_api(2553232);
                C4393util.LOGI("using wt st encrypt body but no st key", "" + j2);
            }
            m147a(j2, m52a(j, i11, j2, i2, bArr, c, bArr3, i3, i4, jArr, i5, j3, i11, i7, i8, i9, i10, bArr4, j4, C4379u.f5249E, wUserSigInfo._domains), this.f5242y);
            a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                break;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i13 + " ret:" + b, "" + j2);
            if (b != 180) {
                a = b;
                break;
            }
            i12 = i13 + 1;
            if (i13 >= 1) {
                a = b;
                break;
            }
        }
        C4393util.LOGI("end request_tgtgt_nopicsig ret " + a, "" + j2);
        return a;
    }
}
