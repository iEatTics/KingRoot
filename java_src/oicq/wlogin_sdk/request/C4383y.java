package oicq.wlogin_sdk.request;

import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4211af;
import oicq.wlogin_sdk.p027b.C4254bv;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.y */
/* loaded from: classes.dex */
public class C4383y extends oicq_request {
    public C4383y(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 18;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m55a(String str, int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m54a(str.getBytes(), i, i2, jArr));
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
    public byte[] m54a(byte[] bArr, int i, int i2, long[] jArr) {
        int i3 = 0;
        int[] iArr = {260, 8, 295, 388, 278};
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        int i4 = 0;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        int i5 = 0;
        while (i5 < length) {
            byte[] bArr2 = new byte[0];
            switch (iArr[i5]) {
                case 8:
                    bArr2 = new C4277cr().m261a(0, C4379u.f5289u, 0);
                    break;
                case 260:
                    bArr2 = m85b._t104.m322b();
                    break;
                case 278:
                    bArr2 = new C4295u().m249a(i, i2, jArr);
                    break;
                case 295:
                    bArr2 = new C4211af().m360a(bArr, m85b._t126.m361a());
                    break;
                case 388:
                    bArr2 = new C4254bv().m284a(m85b._msalt, m85b._mpasswd);
                    break;
            }
            if (bArr2.length > 4) {
                i3++;
                i4 += bArr2.length;
                arrayList.add(bArr2);
            }
            i5++;
            i3 = i3;
            i4 = i4;
        }
        byte[] bArr3 = new byte[i4];
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            byte[] bArr4 = (byte[]) arrayList.get(i7);
            System.arraycopy(bArr4, 0, bArr3, i6, bArr4.length);
            i6 += bArr4.length;
        }
        return m121b(bArr3, this.f5238u, i3);
    }
}
