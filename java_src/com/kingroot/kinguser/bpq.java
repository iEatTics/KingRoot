package com.kingroot.kinguser;

import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bpq implements Thread.UncaughtExceptionHandler {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bpq(bpp bppVar) {
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
    }
}
