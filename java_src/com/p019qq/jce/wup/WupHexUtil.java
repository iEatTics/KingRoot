package com.p019qq.jce.wup;

import java.nio.ByteBuffer;
/* renamed from: com.qq.jce.wup.WupHexUtil */
/* loaded from: classes.dex */
public class WupHexUtil {
    private static final char[] boT = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final byte[] boU = new byte[0];

    public static String byte2HexStr(byte b) {
        return new String(new char[]{boT[((byte) (b >>> 4)) & 15], boT[b & 15]});
    }

    public static String bytes2HexStr(ByteBuffer byteBuffer) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.flip();
        byte[] bArr = new byte[duplicate.limit()];
        duplicate.get(bArr);
        return bytes2HexStr(bArr);
    }

    public static String bytes2HexStr(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr[(i * 2) + 1] = boT[b & 15];
            cArr[(i * 2) + 0] = boT[((byte) (b >>> 4)) & 15];
        }
        return new String(cArr);
    }

    public static byte hexStr2Byte(String str) {
        if (str == null || str.length() != 1) {
            return (byte) 0;
        }
        return char2Byte(str.charAt(0));
    }

    public static byte char2Byte(char c) {
        if (c >= '0' && c <= '9') {
            return (byte) (c - '0');
        }
        if (c >= 'a' && c <= 'f') {
            return (byte) ((c - 'a') + 10);
        }
        if (c >= 'A' && c <= 'F') {
            return (byte) ((c - 'A') + 10);
        }
        return (byte) 0;
    }

    public static byte[] hexStr2Bytes(String str) {
        if (str == null || str.equals("")) {
            return boU;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((char2Byte(str.charAt(i * 2)) * 16) + char2Byte(str.charAt((i * 2) + 1)));
        }
        return bArr;
    }
}
