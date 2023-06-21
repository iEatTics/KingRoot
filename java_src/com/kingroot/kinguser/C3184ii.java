package com.kingroot.kinguser;

import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.ii */
/* loaded from: classes.dex */
public final class C3184ii extends AbstractRunnableC3352nj {
    @Override // com.kingroot.kinguser.AbstractRunnableC3352nj
    /* renamed from: ca */
    public void mo2865ca() {
        CountDownLatch countDownLatch;
        try {
            C3288lt.m3146eg().m3144ei();
            C3332mx.m2961eL().m2960eM();
            C3336na.m2931eT().m2933b(0L);
        } finally {
            countDownLatch = C3183ih.f2829rY;
            countDownLatch.countDown();
        }
    }
}
