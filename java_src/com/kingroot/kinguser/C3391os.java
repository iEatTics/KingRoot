package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.os */
/* loaded from: classes.dex */
public class C3391os implements InterfaceC3442pu {

    /* renamed from: ym */
    private InterfaceC3443pv f3255ym;

    /* renamed from: yn */
    private cbe f3256yn;

    public C3391os(@NonNull InterfaceC3443pv interfaceC3443pv, @NonNull cbe cbeVar) {
        this.f3255ym = null;
        this.f3256yn = null;
        this.f3255ym = interfaceC3443pv;
        this.f3256yn = cbeVar;
    }

    @Override // com.kingroot.kinguser.InterfaceC3442pu
    /* renamed from: a */
    public void mo2619a(@NonNull C3871x c3871x, int i, int i2, int i3, JceStruct jceStruct) {
        if (c3871x != null && (jceStruct instanceof C3683u)) {
            C3683u c3683u = (C3683u) jceStruct;
            JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
            jceInputStream.setServerEncoding("UTF-8");
            m2688a(c3871x.f3936gt, c3871x.f3937gu, c3683u, jceInputStream, new ArrayList());
        }
    }

    /* renamed from: a */
    private void m2688a(long j, long j2, @NonNull C3683u c3683u, @NonNull JceInputStream jceInputStream, List<String> list) {
        C3616t c3616t = new C3616t();
        c3616t.readFrom(jceInputStream);
        list.add(c3616t.f3539gi);
        list.add(c3616t.f3540gj);
        list.add(c3616t.f3541gk);
        list.add(c3616t.f3542gl);
        list.add(c3616t.f3543gm);
        m2687a(j, j2, c3683u, list);
    }

    /* renamed from: a */
    private void m2687a(long j, long j2, @NonNull C3683u c3683u, List<String> list) {
        C3498r c3498r = new C3498r();
        c3498r.f3460ge = new ArrayList<>();
        Context m5098ge = bzu.m5098ge();
        switch (c3683u.f3608gh) {
            case 1:
                C2819cm c2819cm = new C2819cm();
                c2819cm.f2344gD = Integer.valueOf(list.get(0)).intValue();
                c2819cm.uid = list.get(1);
                c2819cm.f2345lU = Integer.valueOf(list.get(2)).intValue();
                c3498r.f3460ge.add(C3396ox.m2676a(m5098ge, j, j2, c3683u, c2819cm, this.f3255ym));
                cay.akw().m5029a(c3498r, null);
                return;
            case 3:
                C2816cj c2816cj = new C2816cj();
                c2816cj.process = list.get(0);
                c3498r.f3460ge.add(C3396ox.m2678a(j, j2, c3683u, c2816cj, this.f3255ym));
                cay.akw().m5029a(c3498r, null);
                return;
            case 4:
                C2814ch c2814ch = new C2814ch();
                c2814ch.file = list.get(0);
                c3498r.f3460ge.add(C3396ox.m2680a(j, j2, c3683u, c2814ch, this.f3255ym));
                cay.akw().m5029a(c3498r, null);
                return;
            case 9:
                C2815ci c2815ci = new C2815ci();
                c2815ci.f2339lR = list.get(0);
                c2815ci.f2340lS = Integer.valueOf(list.get(1)).intValue();
                c3498r.f3460ge.add(C3396ox.m2679a(j, j2, c3683u, c2815ci, this.f3255ym));
                cay.akw().m5029a(c3498r, null);
                return;
            case 1701:
                this.f3256yn.mo5015g(Integer.valueOf(list.get(2)).intValue(), Long.valueOf(list.get(0)).longValue());
                c3498r.f3460ge.add(cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, 1));
                cay.akw().m5029a(c3498r, null);
                return;
            default:
                return;
        }
    }
}
