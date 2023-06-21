package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
/* loaded from: classes.dex */
public class afq {
    /* renamed from: f */
    public static String m12034f(PackageInfo packageInfo) {
        int i = 0;
        byte[] byteArray = packageInfo.signatures[0].toByteArray();
        String str = "";
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(byteArray);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            while (i < length) {
                String num = Integer.toString(digest[i] & 255, 16);
                if (num.length() == 1) {
                    str = str + "0";
                }
                i++;
                str = str + num;
            }
            return str.toUpperCase(Locale.US);
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }
}
