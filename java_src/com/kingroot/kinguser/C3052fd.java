package com.kingroot.kinguser;

import android.util.Base64;
/* renamed from: com.kingroot.kinguser.fd */
/* loaded from: classes.dex */
public class C3052fd {
    /* renamed from: c */
    public static byte[] m3865c(String str, String str2) {
        try {
            return Base64.decode(Class.forName(str).getDeclaredField(str2).get(null).toString(), 0);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: X */
    public static String m3866X(String str) {
        return new String(Base64.decode(str, 0));
    }
}
