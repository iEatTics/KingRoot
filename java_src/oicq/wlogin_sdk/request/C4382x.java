package oicq.wlogin_sdk.request;

import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.x */
/* loaded from: classes.dex */
public class C4382x extends oicq_request {
    public C4382x(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 19;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m56a(int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m57a(i, i2, jArr));
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
    public byte[] m57a(int i, int i2, long[] jArr) {
        int[] iArr = {260, 8, 278};
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = new byte[0];
            switch (iArr[i3]) {
                case 8:
                    bArr = new C4277cr().m261a(0, C4379u.f5289u, 0);
                    break;
                case 260:
                    bArr = m85b._t104.m322b();
                    break;
                case 278:
                    bArr = new C4295u().m249a(i, i2, jArr);
                    break;
            }
            if (bArr.length > 4) {
                i5++;
                i4 += bArr.length;
                arrayList.add(bArr);
            }
            i3++;
            i5 = i5;
            i4 = i4;
        }
        byte[] bArr2 = new byte[i4];
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            byte[] bArr3 = (byte[]) arrayList.get(i7);
            System.arraycopy(bArr3, 0, bArr2, i6, bArr3.length);
            i6 += bArr3.length;
        }
        return m121b(bArr2, this.f5238u, i5);
    }
}
