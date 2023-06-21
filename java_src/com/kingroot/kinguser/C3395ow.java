package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.ow */
/* loaded from: classes.dex */
public class C3395ow implements InterfaceC3442pu {

    /* renamed from: yo */
    private cbe f3261yo;

    public C3395ow(@NonNull cbe cbeVar) {
        this.f3261yo = null;
        this.f3261yo = cbeVar;
    }

    @Override // com.kingroot.kinguser.InterfaceC3442pu
    /* renamed from: a */
    public void mo2619a(C3871x c3871x, int i, int i2, int i3, JceStruct jceStruct) {
        if (c3871x != null && (jceStruct instanceof C3683u)) {
            C3683u c3683u = (C3683u) jceStruct;
            JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
            jceInputStream.setServerEncoding("UTF-8");
            m2681b(c3871x.f3936gt, c3871x.f3937gu, c3683u, jceInputStream);
        }
    }

    /* renamed from: b */
    private void m2681b(long j, long j2, C3683u c3683u, JceInputStream jceInputStream) {
        C0922ah c0922ah = new C0922ah();
        c0922ah.readFrom(jceInputStream);
        C3820w m2620a = C3440ps.m2620a(j, j2, c3683u, c0922ah, this.f3261yo);
        C3498r c3498r = new C3498r();
        c3498r.f3460ge = new ArrayList<>();
        c3498r.f3460ge.add(m2620a);
        cay.akw().m5029a(c3498r, null);
    }
}
