package com.kingroot.kinguser;

import android.os.Build;
import java.lang.reflect.Field;
/* renamed from: com.kingroot.kinguser.mf */
/* loaded from: classes.dex */
public final class C3304mf {
    /* renamed from: ev */
    public static int m3091ev() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: ey */
    public static boolean m3090ey() {
        String[] strArr = null;
        try {
            Field field = Build.class.getField("SUPPORTED_64_BIT_ABIS");
            field.setAccessible(true);
            strArr = (String[]) field.get(null);
        } catch (Exception e) {
        }
        if (strArr != null) {
            for (String str : strArr) {
                if ("arm64-v8a".equalsIgnoreCase(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
