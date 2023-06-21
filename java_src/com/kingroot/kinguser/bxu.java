package com.kingroot.kinguser;

import android.os.Build;
import android.support.annotation.NonNull;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bxu {
    private static Object bTx;
    private static Method bTy;
    private static boolean bTz;

    static {
        bTx = null;
        bTy = null;
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                bTx = bxw.m5209bb("libcore.io.Libcore", "os");
                bTy = bxw.m5211a("libcore.io.Os", "stat", String.class);
                bTz = true;
                return;
            } catch (Throwable th) {
                bTz = false;
                return;
            }
        }
        bTz = false;
    }

    public static boolean isAvailable() {
        return bTz;
    }

    /* renamed from: nx */
    public static int m5220nx(@NonNull String str) {
        Object invoke;
        if (isAvailable() && (invoke = bTy.invoke(bTx, str)) != null) {
            return ((Integer) bxw.m5213a(invoke.getClass(), "st_mode", invoke)).intValue();
        }
        return 0;
    }
}
