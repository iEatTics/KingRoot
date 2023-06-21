package com.kingroot.kinguser;

import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class bkn {
    private static final WeakHashMap<Object, Object> bzm = new WeakHashMap<>(3);

    /* renamed from: b */
    public static void m6560b(Object obj, Object obj2) {
        synchronized (bzm) {
            bzm.put(obj, obj2);
        }
    }
}
