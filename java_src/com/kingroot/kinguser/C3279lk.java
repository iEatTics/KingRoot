package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.lk */
/* loaded from: classes.dex */
public final class C3279lk {
    /* renamed from: c */
    public static int m3168c(int i, int i2) {
        return ((-65536) & i) + (65535 & i2);
    }

    /* renamed from: a */
    public static short m3171a(InterfaceC3145ha interfaceC3145ha) {
        int mo3336aM = interfaceC3145ha.mo3336aM();
        int mo3335aN = interfaceC3145ha.mo3335aN();
        if (mo3336aM == 0 && mo3335aN != 0) {
            if (m3169ah(mo3335aN)) {
                return (short) mo3335aN;
            }
            return Short.MAX_VALUE;
        } else if (m3170ag(mo3336aM) && m3170ag(mo3335aN)) {
            return (short) ((mo3336aM << 8) + mo3335aN);
        } else {
            return Short.MAX_VALUE;
        }
    }

    /* renamed from: ag */
    private static boolean m3170ag(int i) {
        return i >= 0 && i <= 32767;
    }

    /* renamed from: ah */
    private static boolean m3169ah(int i) {
        short s;
        return m3170ag(i) && (s = (short) i) >= 0 && s <= 3000;
    }
}
