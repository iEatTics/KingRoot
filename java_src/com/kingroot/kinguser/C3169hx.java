package com.kingroot.kinguser;

import com.king.uranus.AbstractC0404cS;
import com.king.uranus.C0382P;
import com.king.uranus.C0412g;
import com.king.uranus.C0420o;
import com.king.uranus.C0421p;
import com.king.uranus.C0424s;
/* renamed from: com.kingroot.kinguser.hx */
/* loaded from: classes.dex */
public class C3169hx {
    /* renamed from: a */
    public static AbstractC0404cS m3593a(C0412g c0412g) {
        C3313mm c3313mm = new C3313mm();
        c3313mm.mo3067bu("UTF-8");
        c3313mm.mo3058s(c0412g.f352au);
        switch (c0412g.f351at) {
            case 9:
                return m3592a(c3313mm, new C0421p());
            case 329:
                return m3592a(c3313mm, new C0424s());
            case 350:
                return m3592a(c3313mm, new C0420o());
            default:
                throw new C0382P("unknow type");
        }
    }

    /* renamed from: a */
    private static AbstractC0404cS m3592a(C3313mm c3313mm, AbstractC0404cS abstractC0404cS) {
        return (AbstractC0404cS) c3313mm.m3068b("cloudcmd", abstractC0404cS);
    }
}
