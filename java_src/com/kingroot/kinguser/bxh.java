package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class bxh {
    private static final bzc<bxh> bRb = new bzc<bxh>() { // from class: com.kingroot.kinguser.bxh.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajB */
        public bxh create() {
            return new bxh();
        }
    };

    public static bxh ajA() {
        return bRb.get();
    }

    /* renamed from: ch */
    public bym m5242ch(Context context) {
        int aju = bxg.aju();
        int ajw = bxg.ajw();
        boolean ajx = bxg.ajx();
        boolean ajy = bxg.ajy();
        boolean ajz = bxg.ajz();
        int m5244cg = bxe.m5244cg(context);
        bym bymVar = new bym();
        bymVar.bUz = m5241d(m5241d(m5241d(m5241d(m5241d(0, aju > 0, 0), ajw > 0, 1), !ajx, 2), !ajy, 3), ajz ? false : true, 4) | (m5244cg << 5);
        bymVar.bUA = aju;
        bymVar.bUB = ajw;
        return bymVar;
    }

    /* renamed from: d */
    private static int m5241d(int i, boolean z, int i2) {
        if (z) {
            return (1 << i2) | i;
        }
        return (0 << i2) | i;
    }
}
