package com.kingroot.kinguser;

import com.king.uranus.InterfaceC0393bd;
import java.util.List;
/* renamed from: com.kingroot.kinguser.kp */
/* loaded from: classes.dex */
final class C3254kp {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static InterfaceC3159ho m3251a(InterfaceC3153hi interfaceC3153hi) {
        C3331mw c3331mw = new C3331mw(interfaceC3153hi);
        c3331mw.m2974eK();
        InterfaceC3159ho m3248c = m3248c(interfaceC3153hi);
        c3331mw.m2975an(m3248c.mo3270be());
        return m3248c;
    }

    /* renamed from: c */
    private static InterfaceC3159ho m3248c(InterfaceC3153hi interfaceC3153hi) {
        InterfaceC3280ll interfaceC3280ll = (InterfaceC3280ll) interfaceC3153hi;
        int mo3120ct = interfaceC3280ll.mo3120ct();
        if (mo3120ct != 100663297) {
            return C3251km.m3268g(mo3120ct, "Prepare task failed");
        }
        InterfaceC3157hm interfaceC3157hm = (InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class);
        if (interfaceC3157hm != null) {
            interfaceC3157hm.mo3201h(interfaceC3280ll.mo3118dV());
        }
        if (interfaceC3153hi.mo3122ba()) {
            return m3247c(interfaceC3280ll);
        }
        return m3249b(interfaceC3280ll);
    }

    /* renamed from: b */
    private static InterfaceC3159ho m3249b(InterfaceC3280ll interfaceC3280ll) {
        List<InterfaceC0393bd> m3414b = C3216jj.m3414b(interfaceC3280ll);
        if (m3414b.size() == 0) {
            int mo3155aX = interfaceC3280ll.mo3124aZ().mo3155aX();
            if (!C3216jj.m3413c(interfaceC3280ll.mo3124aZ().mo3154aY(), mo3155aX)) {
                return C3251km.m3268g(100663314, "inject failed");
            }
            InterfaceC0393bd m3417S = C3216jj.m3417S(mo3155aX);
            if (m3417S == null) {
                return C3251km.m3268g(100663315, "client connected timeout");
            }
            m3414b.add(m3417S);
        }
        int i = 0;
        for (InterfaceC0393bd interfaceC0393bd : m3414b) {
            i = interfaceC0393bd.mo13673a(interfaceC3280ll);
        }
        return C3251km.m3268g(m3250a(interfaceC3280ll, i), "Task failed");
    }

    /* renamed from: a */
    private static int m3250a(InterfaceC3280ll interfaceC3280ll, int i) {
        if (i != 0) {
            int i2 = 0;
            int type = interfaceC3280ll.getType();
            if (type == 0) {
                i2 = 100859904;
            } else if (type == 1) {
                if (((C3278lj) interfaceC3280ll).m3172dU()) {
                    i2 = 100794368;
                } else {
                    i2 = 100728832;
                }
            }
            return i2 + Math.abs(i);
        }
        return i;
    }

    /* renamed from: c */
    private static InterfaceC3159ho m3247c(InterfaceC3280ll interfaceC3280ll) {
        int m3177e = C3276lh.m3177e(interfaceC3280ll);
        return m3177e == 0 ? C3251km.m3269da() : C3251km.m3268g(m3177e, null);
    }
}
