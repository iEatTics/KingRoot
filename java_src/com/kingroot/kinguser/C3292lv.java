package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.lv */
/* loaded from: classes.dex */
public class C3292lv implements InterfaceC3281lm {

    /* renamed from: vh */
    private static volatile C3292lv f3028vh;

    /* renamed from: vi */
    private static final byte[] f3029vi = {Byte.MAX_VALUE, 69, 76, 70};

    /* renamed from: vj */
    private static final byte[] f3030vj = {0};

    /* renamed from: vk */
    private static final boolean f3031vk = C3304mf.m3090ey();

    /* renamed from: vl */
    private Map<String, Integer> f3032vl = new HashMap();

    /* renamed from: vm */
    private Map<Integer, Integer> f3033vm = new HashMap();

    private C3292lv() {
    }

    /* renamed from: ek */
    public static C3292lv m3133ek() {
        if (f3028vh == null) {
            synchronized (C3292lv.class) {
                if (f3028vh == null) {
                    f3028vh = new C3292lv();
                }
            }
        }
        return f3028vh;
    }

    @Override // com.kingroot.kinguser.InterfaceC3281lm
    /* renamed from: bc */
    public int mo3136bc(String str) {
        Integer num;
        if (!f3031vk) {
            return 32;
        }
        boolean m3134bh = m3134bh(str);
        if (m3134bh && (num = this.f3032vl.get(str)) != null) {
            return num.intValue();
        }
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (!interfaceC3195it.mo3126h(true)) {
            return m3135bg(str);
        }
        int m3363aP = C3227ju.m3363aP(str);
        if (m3363aP == 0) {
            return m3135bg(str);
        }
        int m3139a = m3139a(interfaceC3195it, m3363aP);
        if (m3139a == 0) {
            return m3135bg(str);
        }
        if (m3134bh) {
            this.f3032vl.put(str, Integer.valueOf(m3139a));
            return m3139a;
        }
        return m3139a;
    }

    /* renamed from: bg */
    private static int m3135bg(String str) {
        return (f3031vk && ("zygote64".equals(str) || "system_server".equals(str))) ? 64 : 32;
    }

    /* renamed from: bh */
    private static boolean m3134bh(String str) {
        return "zygote".equals(str) || "zygote64".equals(str) || "system_server".equals(str);
    }

    @Override // com.kingroot.kinguser.InterfaceC3281lm
    /* renamed from: ai */
    public int mo3138ai(int i) {
        if (f3031vk) {
            Integer num = this.f3033vm.get(Integer.valueOf(i));
            if (num != null) {
                return num.intValue();
            }
            InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
            if (interfaceC3195it.mo3126h(true)) {
                int m3139a = m3139a(interfaceC3195it, i);
                if (m3139a == 0) {
                    m3139a = 32;
                } else {
                    this.f3033vm.put(Integer.valueOf(i), Integer.valueOf(m3139a));
                }
                return m3139a;
            }
            return 32;
        }
        return 32;
    }

    /* renamed from: a */
    private int m3139a(InterfaceC3195it interfaceC3195it, int i) {
        return m3132p(m3137b(interfaceC3195it, i));
    }

    /* renamed from: b */
    private static byte[] m3137b(InterfaceC3195it interfaceC3195it, int i) {
        String str = interfaceC3195it.mo3131aC("cat /proc/" + i + "/exe").mStdOut;
        if (TextUtils.isEmpty(str)) {
            return f3030vj;
        }
        return str.getBytes();
    }

    /* renamed from: p */
    private static int m3132p(byte[] bArr) {
        if (bArr.length >= 5 && bArr[0] == f3029vi[0] && bArr[1] == f3029vi[1] && bArr[2] == f3029vi[2] && bArr[3] == f3029vi[3]) {
            if (bArr[4] == 1) {
                return 32;
            }
            return bArr[4] == 2 ? 64 : 0;
        }
        return 0;
    }
}
