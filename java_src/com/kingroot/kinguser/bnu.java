package com.kingroot.kinguser;

import android.content.Context;
import java.util.List;
/* loaded from: classes.dex */
public class bnu {
    private static boolean bFb = false;

    /* renamed from: a */
    public static synchronized void m6147a(Context context, String str, String str2, String str3, List list) {
        synchronized (bnu.class) {
            if (!bFb) {
                if (context == null) {
                    throw new IllegalArgumentException("context is null");
                }
                boi.m6074d(context, str, str2, str3);
                bFb = true;
            }
        }
    }

    public static bol agu() {
        if (bFb) {
            return bor.agJ();
        }
        throw new RuntimeException("init HalleyAgent before get " + bol.class.getSimpleName());
    }
}
