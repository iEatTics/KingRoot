package com.kingroot.kinguser;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bzn {
    private static final HashMap<String, cch> bVL = new HashMap<>();

    /* renamed from: V */
    public static cch m5121V(Context context, String str) {
        cch cchVar;
        synchronized (bVL) {
            cchVar = bVL.get(str);
            if (cchVar == null) {
                cchVar = new bzm(context, str, false);
                bVL.put(str, cchVar);
            }
        }
        return cchVar;
    }
}
