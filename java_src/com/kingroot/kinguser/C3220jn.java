package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.kingroot.kinguser.jn */
/* loaded from: classes.dex */
public class C3220jn {
    /* renamed from: a */
    public static String m3383a(byte[] bArr) {
        return C3309mi.m3074q(m3382b(bArr));
    }

    /* renamed from: b */
    public static byte[] m3382b(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new String(C3309mi.m3075bs("4D4435")));
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
