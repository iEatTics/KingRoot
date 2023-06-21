package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
/* loaded from: classes.dex */
public class btf {
    /* renamed from: S */
    public static boolean m5551S(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            networkInfo = null;
        }
        if (networkInfo == null) {
            bth.m5539i("isNetworkConnected():false");
            return false;
        }
        bth.m5539i("isNetworkConnected():" + networkInfo.isConnected());
        return networkInfo.isConnected();
    }

    /* renamed from: cn */
    public static boolean m5548cn(List<?> list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: X */
    public static final String m5550X(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    /* renamed from: ne */
    public static byte[] m5547ne(String str) {
        MessageDigest messageDigest;
        if (str == null || "".equals(str)) {
            return null;
        }
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            messageDigest = null;
        }
        if (messageDigest != null) {
            try {
                messageDigest.update(str.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        if (messageDigest != null) {
            return messageDigest.digest();
        }
        return null;
    }

    /* renamed from: aX */
    public static String m5549aX(String str, String str2) {
        String[] split = TextUtils.split(str, str2);
        if (split == null || split.length != 2) {
            return null;
        }
        return split[1];
    }
}
