package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class ccd<T> {
    private volatile T bUZ;

    protected abstract T create();

    public final T get() {
        if (this.bUZ == null) {
            synchronized (this) {
                if (this.bUZ == null) {
                    this.bUZ = create();
                }
            }
        }
        return this.bUZ;
    }
}
