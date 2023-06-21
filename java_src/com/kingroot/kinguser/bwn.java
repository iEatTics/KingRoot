package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class bwn implements Runnable {
    /* renamed from: ca */
    public abstract void mo5298ca();

    /* renamed from: k */
    public abstract void mo5297k(Throwable th);

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo5298ca();
        } catch (Throwable th) {
            mo5297k(th);
        }
    }
}
