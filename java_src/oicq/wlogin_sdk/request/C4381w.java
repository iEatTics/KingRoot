package oicq.wlogin_sdk.request;

import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4218am;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4228aw;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4286l;
import oicq.wlogin_sdk.p027b.C4292r;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.w */
/* loaded from: classes.dex */
public class C4381w extends oicq_request {
    public C4381w(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 17;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m58a(long j, long j2, int i, byte[] bArr, String str, int i2, int i3, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i4 = C4379u.f5291w;
        int i5 = 0;
        while (true) {
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i4, this.f5233p, m59a(j, j2, i, i4, bArr, str.getBytes(), i2, i3, jArr));
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i5 + " ret:" + b, "" + this.f5241x.f5301f);
            if (b != 180) {
                return b;
            }
            int i6 = i5 + 1;
            if (i5 >= 1) {
                return b;
            }
            i5 = i6;
        }
    }

    /* renamed from: a */
    public byte[] m59a(long j, long j2, int i, int i2, byte[] bArr, byte[] bArr2, int i3, int i4, long[] jArr) {
        int i5;
        int i6;
        int i7 = 0;
        int[] iArr = {256, 264, 265, 8, 322, 325, 340, 274, 278};
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        int i8 = 0;
        int i9 = 0;
        while (i9 < length) {
            byte[] bArr3 = new byte[0];
            switch (iArr[i9]) {
                case 8:
                    bArr3 = new C4277cr().m261a(0, C4379u.f5289u, 0);
                    break;
                case 256:
                    bArr3 = new C4278d().m260a(j, j2, i2, i);
                    break;
                case 264:
                    if (bArr != null && bArr.length > 0) {
                        bArr3 = new C4285k().m254a(bArr);
                        break;
                    }
                    break;
                case 265:
                    if (C4379u.f5257M != null && C4379u.f5257M.length > 0) {
                        bArr3 = new C4286l().m253a(C4379u.f5257M);
                        break;
                    }
                    break;
                case 274:
                    bArr3 = new C4292r().m251a(bArr2);
                    break;
                case 278:
                    bArr3 = new C4295u().m249a(i3, i4, jArr);
                    break;
                case 322:
                    bArr3 = new C4218am().m345a(C4379u.f5249E);
                    break;
                case 325:
                    bArr3 = new C4221ap().m341a(C4379u.f5245A);
                    break;
                case 340:
                    bArr3 = new C4228aw().m327a(this.f5241x.f5304i);
                    break;
            }
            if (bArr3.length > 4) {
                arrayList.add(bArr3);
                i5 = bArr3.length + i8;
                i6 = i7 + 1;
            } else {
                i5 = i8;
                i6 = i7;
            }
            i9++;
            i8 = i5;
            i7 = i6;
        }
        byte[] bArr4 = new byte[i8];
        int i10 = 0;
        for (int i11 = 0; i11 < i7; i11++) {
            byte[] bArr5 = (byte[]) arrayList.get(i11);
            System.arraycopy(bArr5, 0, bArr4, i10, bArr5.length);
            i10 += bArr5.length;
        }
        return m121b(bArr4, this.f5238u, i7);
    }
}
