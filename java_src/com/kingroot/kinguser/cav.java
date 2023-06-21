package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.p019qq.taf.jce.JceStruct;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class cav {
    private InterfaceC3387oo bWA;
    private AtomicBoolean bWB;

    /* synthetic */ cav(caw cawVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cav$a */
    /* loaded from: classes.dex */
    public static class C2694a {
        private static final cav bWF = new cav(null);
    }

    public static cav akt() {
        return C2694a.bWF;
    }

    private cav() {
        this.bWB = new AtomicBoolean(false);
        this.bWA = new C3374od();
    }

    /* renamed from: a */
    public void m5031a(@NonNull Context context, @NonNull cas casVar, @NonNull cau cauVar, boolean z, boolean z2, boolean z3) {
        m5032a(context, casVar, cauVar, null, z, z2, z3);
    }

    /* renamed from: a */
    public void m5032a(@NonNull Context context, @NonNull cas casVar, @NonNull cau cauVar, @Nullable car carVar, boolean z, boolean z2, boolean z3) {
        cgp.setLogEnable(z);
        cbx.m4978k(C3372ob.f3237xV);
        if (!this.bWB.getAndSet(true)) {
            ccb.m4972w(context);
            ccb.m4972w(casVar);
            ccb.m4972w(cauVar);
            bzu.m5100cp(context);
            C3383ol m2703fZ = C3383ol.m2703fZ();
            if (z2) {
                m2703fZ.m2697s(false);
                m2703fZ.m2696t(true);
            } else {
                m2703fZ.m2697s(true);
                m2703fZ.m2696t(false);
            }
            this.bWA.mo2691a(context, m2703fZ.m2702ga(), m2703fZ.m2701gb(), z3, casVar, cauVar, new C3373oc(), carVar);
            aku();
        }
    }

    private void aku() {
        m5034a(11052, new C2817ck(), new caw(this));
    }

    /* renamed from: a */
    public void m5034a(int i, JceStruct jceStruct, cat catVar) {
        this.bWA.mo2693a(i, jceStruct, catVar);
    }

    /* renamed from: a */
    public void m5033a(int i, JceStruct jceStruct, JceStruct jceStruct2, cat catVar) {
        this.bWA.mo2692a(i, jceStruct, jceStruct2, catVar);
    }
}
