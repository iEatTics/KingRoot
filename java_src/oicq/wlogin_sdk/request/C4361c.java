package oicq.wlogin_sdk.request;

import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4218am;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4228aw;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4253bu;
import oicq.wlogin_sdk.p027b.C4254bv;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4278d;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4286l;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.c */
/* loaded from: classes.dex */
public class C4361c extends oicq_request {

    /* renamed from: I */
    private String f5180I;

    public C4361c(C4379u c4379u, String str) {
        this.f5237t = 2064;
        this.f5238u = 22;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
        this.f5180I = str;
    }

    /* renamed from: a */
    public int m209a(int i, int i2, WUserSigInfo wUserSigInfo) {
        int i3 = 0;
        while (true) {
            m147a(this.f5241x.f5301f, m210a(i, i2), this.f5242y);
            int a = m146a(String.valueOf(this.f5241x.f5301f), false, wUserSigInfo);
            if (a != 0) {
                return a;
            }
            int b = m129b();
            C4393util.LOGI("retry num:" + i3 + " ret:" + b, "" + this.f5241x.f5301f);
            if (b != 180) {
                return b;
            }
            int i4 = i3 + 1;
            if (i3 >= 1) {
                return b;
            }
            i3 = i4;
        }
    }

    /* renamed from: a */
    public byte[] m210a(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        int[] iArr = {8, 256, 264, 265, 278, 322, 325, 340, 387, 388, 1312};
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        int i6 = 0;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        int i7 = 0;
        while (i7 < length) {
            byte[] bArr = new byte[0];
            switch (iArr[i7]) {
                case 8:
                    bArr = new C4277cr().m261a(0, C4379u.f5289u, 0);
                    break;
                case 256:
                    bArr = new C4278d().m260a(m85b._appid, m85b._sub_appid, 0, m85b._main_sigmap);
                    break;
                case 264:
                    if (C4379u.f5272aa != null && C4379u.f5272aa.length != 0) {
                        C4285k c4285k = new C4285k();
                        c4285k.m320b(C4379u.f5272aa, C4379u.f5272aa.length);
                        bArr = c4285k.m322b();
                        break;
                    }
                    break;
                case 265:
                    bArr = new C4286l().m253a(C4379u.f5257M);
                    break;
                case 278:
                    bArr = new C4295u().m249a(i, i2, m85b._sub_appid_list);
                    break;
                case 322:
                    bArr = new C4218am().m345a(C4379u.f5249E);
                    break;
                case 325:
                    bArr = new C4221ap().m341a(C4379u.f5245A);
                    break;
                case 340:
                    bArr = new C4228aw().m327a(this.f5241x.f5304i);
                    break;
                case 387:
                    bArr = new C4253bu().m285a(m85b._msalt);
                    break;
                case 388:
                    bArr = new C4254bv().m284a(m85b._msalt, m85b._mpasswd);
                    break;
                case 1312:
                    C4232b c4232b = new C4232b(1312);
                    byte[] string_to_buf = C4393util.string_to_buf(this.f5180I);
                    c4232b.m320b(string_to_buf, string_to_buf.length);
                    bArr = c4232b.m322b();
                    break;
            }
            if (bArr.length > 4) {
                arrayList.add(bArr);
                i3 = bArr.length + i6;
                i4 = i5 + 1;
            } else {
                i3 = i6;
                i4 = i5;
            }
            i7++;
            i6 = i3;
            i5 = i4;
        }
        byte[] bArr2 = new byte[i6];
        int i8 = 0;
        for (int i9 = 0; i9 < i5; i9++) {
            byte[] bArr3 = (byte[]) arrayList.get(i9);
            System.arraycopy(bArr3, 0, bArr2, i8, bArr3.length);
            i8 += bArr3.length;
        }
        return m121b(bArr2, this.f5238u, i5);
    }
}
