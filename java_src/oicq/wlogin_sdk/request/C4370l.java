package oicq.wlogin_sdk.request;

import android.content.Context;
import android.support.p004v4.view.InputDeviceCompat;
import java.util.ArrayList;
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
import oicq.wlogin_sdk.p027b.C4255bw;
import oicq.wlogin_sdk.p027b.C4257by;
import oicq.wlogin_sdk.p027b.C4258bz;
import oicq.wlogin_sdk.p027b.C4259c;
import oicq.wlogin_sdk.p027b.C4260ca;
import oicq.wlogin_sdk.p027b.C4263cd;
import oicq.wlogin_sdk.p027b.C4268ci;
import oicq.wlogin_sdk.p027b.C4269cj;
import oicq.wlogin_sdk.p027b.C4271cl;
import oicq.wlogin_sdk.p027b.C4276cq;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4283i;
import oicq.wlogin_sdk.p027b.C4284j;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4286l;
import oicq.wlogin_sdk.p027b.C4292r;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.l */
/* loaded from: classes.dex */
public class C4370l extends oicq_request {

    /* renamed from: I */
    public static boolean f5205I = false;

    /* renamed from: J */
    public static byte[] f5206J = new byte[0];

    /* renamed from: K */
    public static byte[] f5207K = new byte[0];

    /* renamed from: L */
    public static byte[] f5208L = new byte[0];

    public C4370l(C4379u c4379u, Context context) {
        this.f5237t = 2064;
        this.f5238u = 9;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
        this.f5218a = context;
    }

    /* renamed from: a */
    public int m168a(long j, long j2, long j3, int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, int i4, long[] jArr, int i5, long j4, int i6, int i7, int i8, int i9, byte[] bArr4, WUserSigInfo wUserSigInfo) {
        int i10 = C4379u.f5291w;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        m85b._tgtgt_key = C4393util.get_rand_16byte(C4379u.f5246B);
        byte[] bArr5 = m85b._tgtgt_key;
        C4281g c4281g = m85b._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            m147a(j3, m169a(j, j2, i10, j3, i, bArr, bArr2, bArr3, bArr5, i2, null, null, i3, i4, jArr, i5, j4, i6, i7, i8, i9, bArr4, c4281g2.m318c(), C4379u.f5249E, wUserSigInfo._domains, wUserSigInfo), this.f5242y);
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i12 + " ret:" + b, "" + j3);
            if (b != 180) {
                return b;
            }
            i11 = i12 + 1;
            if (i12 >= 1) {
                return b;
            }
        }
    }

    /* renamed from: a */
    public int m167a(long j, long j2, long j3, int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, long[] jArr, int i4, long j4, int i5, int i6, int i7, int i8, byte[] bArr4, WUserSigInfo wUserSigInfo) {
        int i9 = C4379u.f5291w;
        C4281g c4281g = C4379u.m85b(this.f5241x.f5303h)._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        byte[] c = m116c(bArr2);
        if (c == null) {
            return C4393util.E_A1_DECRYPT;
        }
        int i10 = 0;
        while (true) {
            int i11 = i10;
            m157a(this.f5226i, this.f5237t, this.f5227j, j3, this.f5230m, this.f5231n, i9, this.f5233p, m169a(j, j2, i9, j3, i, bArr, null, null, null, 0, c, bArr3, i2, i3, jArr, i4, j4, i5, i6, i7, i8, bArr4, c4281g2.m318c(), C4379u.f5249E, wUserSigInfo._domains, wUserSigInfo));
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i11 + " ret:" + b, "" + j3);
            if (b != 180) {
                return b;
            }
            i10 = i11 + 1;
            if (i11 >= 1) {
                return b;
            }
        }
    }

    /* renamed from: a */
    public byte[] m169a(long j, long j2, int i, long j3, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i3, byte[] bArr5, byte[] bArr6, int i4, int i5, long[] jArr, int i6, long j4, int i7, int i8, int i9, int i10, byte[] bArr7, byte[] bArr8, byte[] bArr9, List<String> list, WUserSigInfo wUserSigInfo) {
        int i11;
        int[] iArr = {24, 1, 262, 278, 256, 263, 264, 260, 322, 274, 324, 325, 327, 358, 362, 340, 321, 8, 1297, 370, 389, 1024, 391, 392, 404, 401, InputDeviceCompat.SOURCE_DPAD, 514, 375, 1302};
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        int length = iArr.length;
        int i13 = 0;
        while (i13 < length) {
            byte[] bArr10 = null;
            switch (iArr[i13]) {
                case 1:
                    bArr10 = new C4259c().m279a(j3, bArr);
                    break;
                case 8:
                    bArr10 = new C4277cr().m261a(0, C4379u.f5289u, 0);
                    break;
                case 24:
                    bArr10 = new C4251bs().m289a(j, i, j3, i2);
                    break;
                case 256:
                    bArr10 = new C4278d().m260a(j, j4, i, i6);
                    break;
                case 260:
                    if (bArr8 != null && bArr8.length != 0) {
                        bArr10 = new C4281g().m259a(bArr8);
                        break;
                    }
                    break;
                case 262:
                    C4283i c4283i = new C4283i();
                    if (bArr5 == null || bArr5.length <= 0) {
                        bArr10 = c4283i.m256a(j, j2, i, j3, bArr2, bArr, 1, bArr3, m85b._msalt, this.f5241x.f5302g.getBytes(), bArr4, C4379u.f5265U, C4379u.f5245A, i3);
                        break;
                    } else {
                        c4283i.m320b(bArr5, bArr5.length);
                        bArr10 = c4283i.m322b();
                        break;
                    }
                    break;
                case 263:
                    bArr10 = new C4284j().m255a(i7, i8, i9, i10);
                    break;
                case 264:
                    if (bArr7 != null && bArr7.length != 0) {
                        bArr10 = new C4285k().m254a(bArr7);
                        break;
                    }
                    break;
                case 274:
                    if (this.f5241x.f5302g != null && !C4393util.check_uin_account(this.f5241x.f5302g).booleanValue()) {
                        bArr10 = new C4292r().m251a(this.f5241x.f5302g.getBytes());
                        break;
                    }
                    break;
                case 278:
                    bArr10 = new C4295u().m249a(i4, i5, jArr);
                    break;
                case 321:
                    bArr10 = new C4217al().m346b(C4379u.f5247C, C4379u.f5248D, C4379u.f5250F);
                    break;
                case 322:
                    bArr10 = new C4218am().m345a(bArr9);
                    break;
                case 324:
                    bArr10 = new C4220ao().m343a(new C4286l().m253a(C4379u.f5257M), new C4208ac().m364a(C4393util.get_os_type(), C4393util.get_os_version(), C4379u.f5248D, C4379u.f5247C, new byte[0], C4379u.f5250F), new C4212ag().m359a(C4379u.f5264T, C4379u.f5265U, C4379u.f5266V, C4379u.f5269Y, C4379u.f5253I, C4379u.f5245A, C4379u.f5260P), new C4238bf().m307a(C4379u.f5253I), m85b._tgtgt_key);
                    break;
                case 325:
                    bArr10 = new C4221ap().m341a(C4379u.f5245A);
                    break;
                case 327:
                    bArr10 = new C4223ar().m336a(j, C4379u.f5251G, C4379u.f5252H);
                    break;
                case 340:
                    bArr10 = new C4228aw().m327a(this.f5241x.f5304i);
                    break;
                case 358:
                    if ((i4 & 128) != 0) {
                        bArr10 = new C4233ba().m312a(C4379u.f5292x);
                        break;
                    }
                    break;
                case 362:
                    if (bArr6 != null && bArr6.length != 0) {
                        bArr10 = new C4236bd().m308a(bArr6);
                        break;
                    }
                    break;
                case 370:
                    if (this.f5241x.f5313r != null && this.f5241x.f5313r.length != 0) {
                        bArr10 = new C4240bh().m306a(this.f5241x.f5313r);
                        break;
                    }
                    break;
                case 375:
                    bArr10 = new C4243bk().m304a(C4393util.BUILD_TIME, C4393util.SDK_VERSION);
                    break;
                case 389:
                    if (i3 == 3) {
                        bArr10 = new C4255bw().m283a(1);
                        break;
                    }
                    break;
                case 391:
                    if (C4379u.f5258N != null && C4379u.f5258N.length != 0) {
                        bArr10 = new C4257by().m281a(C4379u.f5258N);
                        break;
                    }
                    break;
                case 392:
                    if (C4379u.f5259O != null && C4379u.f5259O.length != 0) {
                        bArr10 = new C4258bz().m280a(C4379u.f5259O);
                        break;
                    }
                    break;
                case 401:
                    bArr10 = new C4260ca().m278a(f5205I);
                    break;
                case 404:
                    if (C4379u.f5256L != null && C4379u.f5256L.length != 0) {
                        bArr10 = new C4263cd().m275a(C4379u.f5256L);
                        break;
                    }
                    break;
                case InputDeviceCompat.SOURCE_DPAD /* 513 */:
                    if (f5206J != null && f5206J.length != 0) {
                        bArr10 = new C4268ci().m266a(f5206J, f5207K, "qq".getBytes(), f5208L);
                        break;
                    }
                    break;
                case 514:
                    if (C4379u.f5262R != null && C4379u.f5262R.length != 0) {
                        bArr10 = new C4269cj().m265a(C4379u.f5262R, C4379u.f5263S);
                        break;
                    }
                    break;
                case 1024:
                    WloginSigInfo m95a = this.f5241x.m95a(j3, j);
                    if (m95a != null && m95a.f5318_G != null && m95a.f5318_G.length != 0 && m95a._dpwd != null && m95a._dpwd.length != 0 && m95a._randseed != null && m95a._randseed.length != 0) {
                        bArr10 = new C4271cl().m264a(m95a.f5318_G, j3, C4379u.f5245A, m95a._dpwd, j, j2, m95a._randseed);
                        break;
                    }
                    break;
                case 1297:
                    if (list != null && list.size() != 0) {
                        bArr10 = new C4276cq().m262a(list);
                        break;
                    }
                    break;
                case 1302:
                    C4232b c4232b = new C4232b(1302);
                    byte[] bArr11 = new byte[4];
                    C4393util.int32_to_buf(bArr11, 0, C4379u.f5277af);
                    c4232b.m320b(bArr11, 4);
                    bArr10 = c4232b.m322b();
                    break;
            }
            if (bArr10 != null) {
                arrayList.add(bArr10);
                i11 = bArr10.length + i12;
            } else {
                i11 = i12;
            }
            i13++;
            i12 = i11;
        }
        byte[] bArr12 = new byte[i12];
        int size = arrayList.size();
        int i14 = 0;
        for (int i15 = 0; i15 < size; i15++) {
            byte[] bArr13 = (byte[]) arrayList.get(i15);
            System.arraycopy(bArr13, 0, bArr12, i14, bArr13.length);
            i14 += bArr13.length;
        }
        return m121b(bArr12, this.f5238u, size);
    }
}
