package com.kingroot.kinguser;

import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bpm implements Thread.UncaughtExceptionHandler {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bpm(bpl bplVar) {
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
    }
}
