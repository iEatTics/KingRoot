package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bxl {
    private static final bzc<bxl> bRb = new bzc<bxl>() { // from class: com.kingroot.kinguser.bxl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajE */
        public bxl create() {
            return new bxl();
        }
    };

    public static bxl ajC() {
        return bRb.get();
    }

    public int ajD() {
        boolean ajK = bxp.ajK();
        boolean ajI = bxo.ajI();
        boolean ajH = bxo.ajH();
        return m5231d(m5231d(m5231d(m5231d(0, ajK, 0), ajI, 1), ajH, 2), bxm.ajF(), 3);
    }

    /* renamed from: d */
    private static int m5231d(int i, boolean z, int i2) {
        if (z) {
            return (1 << i2) | i;
        }
        return (0 << i2) | i;
    }
}
