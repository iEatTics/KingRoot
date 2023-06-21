package oicq.wlogin_sdk.request;

import android.support.p004v4.view.InputDeviceCompat;
import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4242bj;
import oicq.wlogin_sdk.p027b.C4248bp;
import oicq.wlogin_sdk.p027b.C4272cm;
import oicq.wlogin_sdk.p027b.C4273cn;
import oicq.wlogin_sdk.p027b.C4274co;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4295u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.p */
/* loaded from: classes.dex */
public class C4374p extends oicq_request {
    public C4374p(C4379u c4379u) {
        this.f5237t = 2064;
        this.f5238u = 7;
        this.f5239v = "wtlogin.login";
        this.f5241x = c4379u;
        this.f5241x.f5308m = 0;
    }

    /* renamed from: a */
    public int m108a(byte[] bArr, int i, int i2, long[] jArr, WUserSigInfo wUserSigInfo) {
        int i3 = C4379u.f5291w;
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        C4281g c4281g = m85b._t104;
        C4281g c4281g2 = c4281g == null ? new C4281g() : c4281g;
        C4242bj c4242bj = m85b._t174;
        C4242bj c4242bj2 = c4242bj == null ? new C4242bj() : c4242bj;
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
            m157a(this.f5226i, this.f5237t, this.f5227j, this.f5241x.f5301f, this.f5230m, this.f5231n, i3, this.f5233p, m107a(c4281g2.m318c(), bArr, c4242bj2.m318c(), i, i2, jArr, m85b.f5179_G));
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
    public byte[] m107a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, long[] jArr, byte[] bArr4) {
        int[] iArr = {8, 260, 278, 372, 380, InputDeviceCompat.SOURCE_GAMEPAD, 408};
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        for (int i4 : iArr) {
            byte[] bArr5 = null;
            switch (i4) {
                case 8:
                    bArr5 = new C4277cr().m261a(0, C4379u.f5289u, 0);
                    break;
                case 260:
                    bArr5 = new C4281g().m259a(bArr);
                    break;
                case 278:
                    bArr5 = new C4295u().m249a(i, i2, jArr);
                    break;
                case 372:
                    bArr5 = new C4242bj().m305a(bArr3);
                    break;
                case 380:
                    bArr5 = new C4248bp().m294a(bArr2);
                    break;
                case 408:
                    C4232b c4232b = new C4232b(408);
                    c4232b.m320b(new byte[]{(byte) C4377s.f5244I}, 1);
                    bArr5 = c4232b.m322b();
                    break;
                case InputDeviceCompat.SOURCE_GAMEPAD /* 1025 */:
                    bArr5 = new C4272cm().m263a(bArr4);
                    break;
            }
            if (bArr5 != null) {
                arrayList.add(bArr5);
                i3 += bArr5.length;
            }
        }
        int size = arrayList.size();
        byte[] bArr6 = new byte[i3];
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            byte[] bArr7 = (byte[]) arrayList.get(i6);
            System.arraycopy(bArr7, 0, bArr6, i5, bArr7.length);
            i5 += bArr7.length;
        }
        return m121b(bArr6, this.f5238u, size);
    }
}
