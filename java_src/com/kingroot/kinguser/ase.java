package com.kingroot.kinguser;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class ase {
    private static SparseArray<Class<? extends asc>> aMt = new SparseArray<>();

    static {
        aMt.put(0, asa.class);
        aMt.put(1, arx.class);
        aMt.put(2, arz.class);
        aMt.put(3, ary.class);
        aMt.put(4, asb.class);
        aMt.put(5, arw.class);
    }

    /* renamed from: gt */
    public static asc m9490gt(int i) {
        Class<? extends asc> cls = aMt.get(i);
        if (cls != null) {
            try {
                return cls.newInstance();
            } catch (Throwable th) {
            }
        }
        return null;
    }
}
