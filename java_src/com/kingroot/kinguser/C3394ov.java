package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ov */
/* loaded from: classes.dex */
public class C3394ov implements InterfaceC3442pu {

    /* renamed from: ym */
    private InterfaceC3443pv f3260ym;

    public C3394ov(@NonNull InterfaceC3443pv interfaceC3443pv) {
        this.f3260ym = null;
        this.f3260ym = interfaceC3443pv;
    }

    @Override // com.kingroot.kinguser.InterfaceC3442pu
    /* renamed from: a */
    public void mo2619a(C3871x c3871x, int i, int i2, int i3, JceStruct jceStruct) {
        if (c3871x != null && (jceStruct instanceof C3683u)) {
            C3683u c3683u = (C3683u) jceStruct;
            JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
            jceInputStream.setServerEncoding("UTF-8");
            m2682a(c3871x.f3936gt, c3871x.f3937gu, c3683u, jceInputStream);
        }
    }

    /* renamed from: a */
    private void m2682a(long j, long j2, C3683u c3683u, JceInputStream jceInputStream) {
        C0605aa c0605aa = new C0605aa();
        c0605aa.readFrom(jceInputStream);
        C3396ox.m2677a(bzu.m5098ge(), j, j2, c3683u, c0605aa, this.f3260ym);
    }
}
