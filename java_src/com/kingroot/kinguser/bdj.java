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
/* loaded from: classes.dex */
class bdj {
    private Map<String, String> ani = new HashMap();
    private int anj;

    bdj() {
    }

    /* renamed from: kP */
    public static bdj m7546kP(String str) {
        byte[] m7548f;
        bdj bdjVar = null;
        try {
            byte[] m7547fD = m7547fD(str);
            if (m7547fD != null && "SDK\u0000".equals(new String(m7547fD, 0, 4)) && (m7548f = m7548f(m7547fD, 4)) != null && (bdjVar = m7545kQ(new String(m7548f))) != null) {
                bdjVar.anj = m7547fD.length + 4;
            }
        } catch (IOException e) {
        }
        return bdjVar;
    }

    /* renamed from: kQ */
    public static bdj m7545kQ(String str) {
        String[] split = str.split(";");
        bdj bdjVar = new bdj();
        for (String str2 : split) {
            int indexOf = str2.indexOf(61);
            if (indexOf <= 0) {
                return null;
            }
            String substring = str2.substring(0, indexOf);
            if (bdjVar.contains(substring)) {
                return null;
            }
            bdjVar.m7549W(substring, str2.substring(indexOf + 1));
        }
        return bdjVar;
    }

    /* renamed from: W */
    private String m7549W(String str, String str2) {
        return this.ani.put(str, str2);
    }

    public String get(String str) {
        return this.ani.get(str);
    }

    private boolean contains(String str) {
        return this.ani.containsKey(str);
    }

    /* renamed from: f */
    private static byte[] m7548f(byte[] bArr, int i) {
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
                                C3945za.m1340c(byteArrayOutputStream);
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

    /* renamed from: fD */
    private static byte[] m7547fD(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            if (randomAccessFile.length() <= 4) {
                return null;
            }
            randomAccessFile.seek(randomAccessFile.length() - 4);
            int readInt = randomAccessFile.readInt();
            if (readInt <= 4) {
                throw new RuntimeException("extraBlockLength <= 4:  " + readInt);
            }
            if (randomAccessFile.length() <= readInt) {
                throw new RuntimeException("fileLength <= extraBlockLength : " + readInt);
            }
            randomAccessFile.seek(randomAccessFile.length() - readInt);
            byte[] bArr = new byte[readInt - 4];
            if (randomAccessFile.read(bArr) != bArr.length) {
                bArr = null;
            }
            C3945za.m1340c(randomAccessFile);
            return bArr;
        } finally {
            C3945za.m1340c(randomAccessFile);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: wj */
    public long m7544wj() {
        return this.anj;
    }
}
