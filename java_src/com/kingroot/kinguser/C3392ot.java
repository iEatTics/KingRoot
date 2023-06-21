package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ot */
/* loaded from: classes.dex */
public class C3392ot implements InterfaceC3442pu {

    /* renamed from: yo */
    private cbe f3257yo;

    public C3392ot(@NonNull cbe cbeVar) {
        this.f3257yo = null;
        this.f3257yo = cbeVar;
    }

    @Override // com.kingroot.kinguser.InterfaceC3442pu
    /* renamed from: a */
    public void mo2619a(@NonNull C3871x c3871x, int i, int i2, int i3, JceStruct jceStruct) {
        if (c3871x != null && (jceStruct instanceof C3683u)) {
            C3683u c3683u = (C3683u) jceStruct;
            JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
            jceInputStream.setServerEncoding("UTF-8");
            m2686a(c3871x.f3936gt, c3871x.f3937gu, c3683u, jceInputStream, new ArrayList());
        }
    }

    /* renamed from: a */
    private void m2686a(long j, long j2, @NonNull C3683u c3683u, @NonNull JceInputStream jceInputStream, List<String> list) {
        C3616t c3616t = new C3616t();
        c3616t.readFrom(jceInputStream);
        list.add(c3616t.f3539gi);
        list.add(c3616t.f3540gj);
        list.add(c3616t.f3541gk);
        list.add(c3616t.f3542gl);
        list.add(c3616t.f3543gm);
        m2685a(j, j2, c3683u, list);
    }

    /* renamed from: a */
    private void m2685a(long j, long j2, @NonNull C3683u c3683u, List<String> list) {
        C3498r c3498r = new C3498r();
        c3498r.f3460ge = new ArrayList<>();
        switch (c3683u.f3608gh) {
            case 615:
                this.f3257yo.mo5022O(Integer.valueOf(list.get(0)).intValue(), list.get(1));
                c3498r.f3460ge.add(cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, 1));
                cay.akw().m5029a(c3498r, null);
                return;
            default:
                return;
        }
    }
}
