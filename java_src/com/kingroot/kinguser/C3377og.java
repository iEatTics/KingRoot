package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.Nullable;
import tmsdk.common.TMSDKContext;
import tmsdk.common.tcc.TccCryptor;
/* renamed from: com.kingroot.kinguser.og */
/* loaded from: classes.dex */
public class C3377og extends cfj {

    /* renamed from: xY */
    private static final ccd<C3377og> f3241xY = new C3378oh();

    /* renamed from: fr */
    public static C3377og m2770fr() {
        return f3241xY.get();
    }

    public C3377og() {
        super(m2769fs());
    }

    /* renamed from: a */
    public void m2771a(Context context, cas casVar, cdy cdyVar, cau cauVar, boolean z, boolean z2, String str, cgj cgjVar, @Nullable car carVar) {
        C3383ol m2703fZ = C3383ol.m2703fZ();
        m2703fZ.m2706E(context);
        m2703fZ.m2705a(casVar);
        m2703fZ.m2704a(cauVar);
        cea ceaVar = new cea();
        ceaVar.bXK = false;
        ceaVar.bXL = false;
        TMSDKContext.m15a(context, null, 2, cdyVar, ceaVar);
        if (cgjVar != null) {
            TccCryptor.m2a(cgjVar);
        }
        C3380oj m2731fH = C3380oj.m2731fH();
        m2731fH.m2739a(true, carVar);
        m4489a(m2731fH, z, z2, str);
        cfd.m4650a(m2770fr());
    }

    /* renamed from: p */
    public void m2768p(boolean z) {
        amd();
        if (z) {
            m2770fr().amb();
        }
    }

    /* renamed from: fs */
    private static long m2769fs() {
        int i = 1;
        if (1 != TMSDKContext.akT()) {
            i = 2 == TMSDKContext.akT() ? 2 : 3;
        }
        return cdx.m4793p(i, 4294967296L);
    }
}
