package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class awk {
    /* renamed from: dK */
    public static int m8636dK(String str) {
        if (str != null) {
            try {
                if (str.trim().length() > 0) {
                    return Integer.valueOf(str).intValue();
                }
                return -1;
            } catch (Throwable th) {
                return -1;
            }
        }
        return -1;
    }
}
