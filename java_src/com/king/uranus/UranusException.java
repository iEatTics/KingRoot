package com.king.uranus;
/* loaded from: classes.dex */
public class UranusException extends Exception {
    private final int mErrno;

    public UranusException(int i, Throwable th) {
        super(th);
        this.mErrno = i;
    }

    public UranusException(int i, String str) {
        super(str);
        this.mErrno = i;
    }

    /* renamed from: cb */
    public int m13681cb() {
        return this.mErrno;
    }
}
