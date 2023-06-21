package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class cce<T> {
    private volatile T bUZ;

    protected abstract T create();

    public final T get() {
        T t = this.bUZ;
        if (t == null) {
            synchronized (this) {
                t = this.bUZ;
                if (t == null) {
                    t = create();
                    this.bUZ = t;
                }
            }
        }
        return t;
    }
}
