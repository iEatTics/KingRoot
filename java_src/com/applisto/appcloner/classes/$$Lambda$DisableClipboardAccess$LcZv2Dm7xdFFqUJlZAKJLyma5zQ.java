package com.applisto.appcloner.classes;
/* compiled from: lambda */
/* renamed from: com.applisto.appcloner.classes.-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ implements Runnable {
    public static final /* synthetic */ $$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ INSTANCE = new $$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ();

    private /* synthetic */ $$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        DisableClipboardAccess.clearClipboard(DisableClipboardAccess.sContext, DisableClipboardAccess.sClearingClipDataToString);
    }
}
