package com.kingroot.kinguser;

import com.tencent.tps.client.p024kr.XModFeature;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.kingroot.kinguser.gg */
/* loaded from: classes.dex */
public final class C3121gg {

    /* renamed from: qo */
    private static volatile C3121gg f2707qo = null;

    /* renamed from: qp */
    private volatile boolean f2708qp = false;

    /* renamed from: qr */
    private final Runnable f2709qr = new RunnableC3122gh(this);

    private C3121gg() {
    }

    /* renamed from: au */
    public static C3121gg m3723au() {
        if (f2707qo == null) {
            synchronized (C3121gg.class) {
                if (f2707qo == null) {
                    f2707qo = new C3121gg();
                }
            }
        }
        return f2707qo;
    }

    public synchronized void start() {
        if (!this.f2708qp) {
            C3074fz.m3793ak().m3794a(this.f2709qr);
            this.f2708qp = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: av */
    public boolean m3722av() {
        return Math.abs(System.currentTimeMillis() - C3123gi.m3711aA()) > 57600000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aw */
    public void m3721aw() {
        C3123gi.m3712a(System.currentTimeMillis());
        List<AbstractC3035ew> m3737ao = C3116gb.m3737ao();
        boolean z = true;
        if (m3737ao != null && m3737ao.size() > 0) {
            m3737ao.size();
            z = m3714d(m3737ao);
        }
        if (!z) {
            C3116gb.m3730c(m3737ao);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ax */
    public void m3720ax() {
        C3074fz.m3793ak().m3789b(this.f2709qr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ay */
    public void m3719ay() {
        List<AbstractC3035ew> m3736ap = C3116gb.m3736ap();
        boolean z = true;
        if (m3736ap != null && m3736ap.size() > 0) {
            m3736ap.size();
            z = m3714d(m3736ap);
        }
        if (!z) {
            C3116gb.m3730c(m3736ap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: az */
    public void m3718az() {
        List<AbstractC3035ew> m3734ar = C3116gb.m3734ar();
        boolean z = true;
        if (m3734ar != null && m3734ar.size() > 0) {
            m3734ar.size();
            z = m3714d(m3734ar);
        }
        if (z) {
            C3116gb.m3733as();
        }
    }

    /* renamed from: d */
    private static boolean m3714d(List<AbstractC3035ew> list) {
        if (list.size() <= 0) {
            return true;
        }
        String str = "";
        ArrayList arrayList = new ArrayList();
        for (AbstractC3035ew abstractC3035ew : list) {
            if (abstractC3035ew != null) {
                XModFeature xModFeature = new XModFeature();
                xModFeature.featureId = abstractC3035ew.getId();
                if ("".equals(str)) {
                    str = str + abstractC3035ew.getId();
                } else {
                    str = str + "," + abstractC3035ew.getId();
                }
                xModFeature.count = 1;
                xModFeature.timestamp = (int) (abstractC3035ew.timestamp / 1000);
                xModFeature.strValues = new ArrayList<>();
                String m3701g = C3124gj.m3701g(abstractC3035ew);
                if (m3701g != null) {
                    Collections.addAll(xModFeature.strValues, C3124gj.m3704aj(m3701g));
                }
                arrayList.add(xModFeature);
            }
        }
        return C3074fz.m3793ak().m3787b(arrayList);
    }
}
