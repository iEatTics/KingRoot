package com.kingroot.kinguser;

import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public final class ceb {
    private static InterfaceC2706a bXP;

    /* renamed from: com.kingroot.kinguser.ceb$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2706a {
        cga akU();

        /* renamed from: nH */
        cch m4791nH(String str);
    }

    /* renamed from: nH */
    public static cch m4792nH(String str) {
        if (bXP != null) {
            return bXP.m4791nH(str);
        }
        return bzn.m5121V(TMSDKContext.akS(), str);
    }

    public static cga akU() {
        cga cgaVar = null;
        if (bXP != null) {
            cgaVar = bXP.akU();
        }
        if (cgaVar == null) {
            return (cga) ced.m4790j(cfz.class);
        }
        return cgaVar;
    }
}
