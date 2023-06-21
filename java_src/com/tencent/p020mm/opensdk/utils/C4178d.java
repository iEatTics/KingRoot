package com.tencent.p020mm.opensdk.utils;
/* renamed from: com.tencent.mm.opensdk.utils.d */
/* loaded from: classes.dex */
public final class C4178d {
    /* renamed from: a */
    public static boolean m487a(int i) {
        return i == 36 || i == 46;
    }

    /* renamed from: b */
    public static boolean m486b(String str) {
        return str == null || str.length() <= 0;
    }

    /* renamed from: c */
    public static int m485c(String str) {
        if (str != null) {
            try {
                if (str.length() <= 0) {
                    return 0;
                }
                return Integer.parseInt(str);
            } catch (Exception e) {
                return 0;
            }
        }
        return 0;
    }
}
