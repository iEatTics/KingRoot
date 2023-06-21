package com.kingroot.kinguser;

import android.support.p004v4.media.TransportMediator;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
/* renamed from: com.kingroot.kinguser.fx */
/* loaded from: classes.dex */
public class C3072fx {

    /* renamed from: p */
    private int f2682p;

    /* renamed from: qe */
    private Map<String, String> f2683qe = new HashMap();

    /* renamed from: ad */
    public static C3072fx m3805ad(String str) {
        try {
            return m3806a(m3803af(str), false);
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static C3072fx m3806a(byte[] bArr, boolean z) {
        byte[] m3807a;
        if (bArr == null || bArr.length <= 4) {
            return null;
        }
        if (z) {
            byte[] bArr2 = new byte[bArr.length - 4];
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            bArr = bArr2;
        }
        if ("SDK\u0000".equals(new String(bArr, 0, 4)) && (m3807a = m3807a(bArr, 4)) != null) {
            C3072fx m3804ae = m3804ae(new String(m3807a));
            if (m3804ae != null) {
                m3804ae.f2682p = bArr.length + 4;
                return m3804ae;
            }
            return m3804ae;
        }
        return null;
    }

    /* renamed from: ae */
    public static C3072fx m3804ae(String str) {
        String[] split = str.split(";");
        C3072fx c3072fx = new C3072fx();
        for (String str2 : split) {
            int indexOf = str2.indexOf(61);
            if (indexOf <= 0) {
                return null;
            }
            String substring = str2.substring(0, indexOf);
            if (c3072fx.contains(substring)) {
                return null;
            }
            c3072fx.m3802f(substring, str2.substring(indexOf + 1));
        }
        return c3072fx;
    }

    /* renamed from: f */
    private String m3802f(String str, String str2) {
        return this.f2683qe.put(str, str2);
    }

    public String get(String str) {
        return this.f2683qe.get(str);
    }

    private boolean contains(String str) {
        return this.f2683qe.containsKey(str);
    }

    /* renamed from: a */
    private static byte[] m3807a(byte[] bArr, int i) {
        ByteArrayOutputStream byteArrayOutputStream;
        int i2 = 0;
        byte[] bArr2 = null;
        int length = bArr.length - i;
        if (length > 0 && (length & TransportMediator.KEYCODE_MEDIA_PAUSE) == 0) {
            int i3 = length >> 7;
            try {
                PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDAt2+Tj+8Z+jIb1UpZzGaXJSYLsOwHoTRt3nsDRiEDkOzexT3t6C+o6giXKu/u2NeONZ/gbvyDHc+iiS/8Rfv/Qt0Gk3obnIO5wAOe4+1F7VNY5JHzf97VeOE4UXmpyJjTAVJvEia2q6ywFj+53P4JQpndrLyc/uY3hw7JXiq/QwIDAQAB", 0)));
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(2, generatePublic);
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    if (i2 < i3) {
                        try {
                            byte[] doFinal = cipher.doFinal(bArr, i, 128);
                            if (doFinal == null) {
                                byteArrayOutputStream.close();
                                break;
                            }
                            byteArrayOutputStream.write(doFinal);
                            i += 128;
                            i2++;
                        } catch (Throwable th) {
                            th = th;
                            try {
                                th.printStackTrace();
                                return bArr2;
                            } finally {
                                C3066fr.m3833b(byteArrayOutputStream);
                            }
                        }
                    } else {
                        bArr2 = byteArrayOutputStream.toByteArray();
                        break;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
        }
        return bArr2;
    }

    /* renamed from: af */
    private static byte[] m3803af(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            if (randomAccessFile.length() <= 4) {
                return null;
            }
            randomAccessFile.seek(randomAccessFile.length() - 4);
            int readInt = randomAccessFile.readInt();
            if (readInt <= 4) {
                return null;
            }
            if (randomAccessFile.length() <= readInt) {
                return null;
            }
            randomAccessFile.seek(randomAccessFile.length() - readInt);
            byte[] bArr = new byte[readInt - 4];
            if (randomAccessFile.read(bArr) != bArr.length) {
                bArr = null;
            }
            randomAccessFile.close();
            return bArr;
        } finally {
            randomAccessFile.close();
        }
    }

    /* renamed from: j */
    public long m3801j() {
        return this.f2682p;
    }
}
