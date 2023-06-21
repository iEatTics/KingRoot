package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class byz {
    /* renamed from: E */
    public static String m5163E(byte[] bArr) {
        return bzd.m5145B(m5162F(bArr));
    }

    /* renamed from: F */
    public static byte[] m5162F(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new String(bzd.m5144dJ("4D4435")));
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
