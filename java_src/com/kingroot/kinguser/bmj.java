package com.kingroot.kinguser;

import android.util.SparseArray;
import dalvik.system.DexClassLoader;
/* loaded from: classes.dex */
public class bmj {
    private static final SparseArray<ClassLoader> bBT = new SparseArray<>();

    /* renamed from: e */
    public static ClassLoader m6390e(bme bmeVar) {
        int i = bmeVar.bBq;
        ClassLoader classLoader = bBT.get(i);
        if (classLoader == null) {
            synchronized (bBT) {
                classLoader = bBT.get(i);
                if (classLoader == null) {
                    classLoader = new DexClassLoader(bmeVar.bBu, bmeVar.f1749vv, null, bmj.class.getClassLoader());
                    bBT.put(i, classLoader);
                }
            }
        }
        return classLoader;
    }

    /* renamed from: jM */
    public static void m6389jM(int i) {
        synchronized (bBT) {
            bBT.remove(i);
        }
    }
}
