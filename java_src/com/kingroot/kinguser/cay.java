package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingcom.module.network.shark.conch.notifyinfo.NotifyPushReceiver;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class cay {

    /* renamed from: yl */
    private C3417pe f2232yl;

    /* synthetic */ cay(caz cazVar) {
        this();
    }

    /* renamed from: com.kingroot.kinguser.cay$a */
    /* loaded from: classes.dex */
    static class C2695a {
        private static final cay bWI = new cay(null);
    }

    private cay() {
    }

    public static cay akw() {
        return C2695a.bWI;
    }

    @NonNull
    public C3417pe akx() {
        return this.f2232yl;
    }

    /* renamed from: a */
    public void m5030a(@NonNull InterfaceC3443pv interfaceC3443pv, @NonNull cbe cbeVar, @Nullable cbh cbhVar) {
        ccb.m4972w(interfaceC3443pv);
        ccb.m4972w(cbeVar);
        this.f2232yl = new C3417pe(interfaceC3443pv, cbeVar, cbhVar);
        NotifyPushReceiver.m13631gn();
        C0799af c0799af = new C0799af();
        c0799af.f1411gQ = new ArrayList<>();
        cav.akt().m5034a(10010, c0799af, new C3388op(this.f2232yl));
    }

    /* renamed from: a */
    public void m5029a(C3498r c3498r, cbg cbgVar) {
        if (c3498r != null) {
            cav.akt().m5033a(21, c3498r, null, new caz(this, cbgVar));
        }
    }

    /* renamed from: a */
    public void m5028a(C3871x c3871x, int i, JceStruct jceStruct, cbf cbfVar) {
        C3683u c3683u = (C3683u) jceStruct;
        JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
        jceInputStream.setServerEncoding("UTF-8");
        ArrayList arrayList = new ArrayList();
        C0648ac c0648ac = new C0648ac();
        c0648ac.readFrom(jceInputStream);
        if (c0648ac.f1384gK != null && !c0648ac.f1384gK.isEmpty()) {
            Iterator<String> it = c0648ac.f1384gK.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            cbfVar.mo5009b(c3871x.f3936gt, c3871x.f3937gu, c3683u, arrayList);
        }
    }
}
