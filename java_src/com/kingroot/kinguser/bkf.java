package com.kingroot.kinguser;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class bkf {
    private static volatile bkf bzf = null;

    /* renamed from: b */
    private final SparseArray<Object> f1714b = new SparseArray<>();

    /* renamed from: jA */
    public Object m6569jA(int i) {
        Object obj;
        synchronized (this.f1714b) {
            obj = this.f1714b.get(i);
            if (obj == null) {
                obj = new Object();
                this.f1714b.put(i, obj);
            }
        }
        return obj;
    }

    public static bkf aeJ() {
        if (bzf == null) {
            synchronized (bkf.class) {
                if (bzf == null) {
                    bzf = new bkf();
                }
            }
        }
        return bzf;
    }
}
