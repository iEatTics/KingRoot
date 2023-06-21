package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import java.util.HashMap;
/* loaded from: classes.dex */
public class arq {
    private static final HashMap<String, arl> aMc = new HashMap<>();

    @Nullable
    /* renamed from: a */
    public static aqb m9524a(Class<? extends arl> cls, boolean z) {
        arl arlVar;
        String name = cls.getName();
        synchronized (aMc) {
            arlVar = aMc.get(name);
            if (arlVar == null && z) {
                arlVar = cls.newInstance();
                aMc.put(name, arlVar);
            }
        }
        return arlVar;
    }

    /* renamed from: gK */
    public static void m9523gK() {
        synchronized (aMc) {
            aMc.clear();
        }
    }
}
