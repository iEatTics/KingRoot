package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class cdx {
    /* renamed from: p */
    public static long m4793p(int i, long j) {
        if (i < 0) {
            throw new IllegalStateException("thread pool sub-ident is negative");
        }
        if (j < 0) {
            throw new IllegalStateException("thread pool parent-ident is illegal");
        }
        return i + j;
    }
}
