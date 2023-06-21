package com.kingroot.kinguser;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;
/* loaded from: classes.dex */
public final class bqn {
    private static final bqu bIH = new bqu(101010256);
    private static final bqv bII = new bqv(38651);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bqn$a */
    /* loaded from: classes.dex */
    public static class C2579a {

        /* renamed from: b */
        byte[] f2036b;
        Properties bIJ;

        private C2579a() {
            this.bIJ = new Properties();
        }

        /* renamed from: a */
        void m5782a(byte[] bArr) {
            if (bArr != null) {
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                int length = bqn.bII.m5731a().length;
                byte[] bArr2 = new byte[length];
                wrap.get(bArr2);
                if (!bqn.bII.equals(new bqv(bArr2))) {
                    throw new ProtocolException("unknow protocl [" + Arrays.toString(bArr) + "]");
                }
                if (bArr.length - length > 2) {
                    byte[] bArr3 = new byte[2];
                    wrap.get(bArr3);
                    int m5730b = new bqv(bArr3).m5730b();
                    if ((bArr.length - length) - 2 >= m5730b) {
                        byte[] bArr4 = new byte[m5730b];
                        wrap.get(bArr4);
                        this.bIJ.load(new ByteArrayInputStream(bArr4));
                        int length2 = ((bArr.length - length) - m5730b) - 2;
                        if (length2 > 0) {
                            this.f2036b = new byte[length2];
                            wrap.get(this.f2036b);
                        }
                    }
                }
            }
        }

        public String toString() {
            return "ApkExternalInfo [p=" + this.bIJ + ", otherData=" + Arrays.toString(this.f2036b) + "]";
        }
    }

    /* renamed from: c */
    public static String m5783c(File file, String str) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        String str2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] m5785a = m5785a(randomAccessFile);
                if (m5785a != null) {
                    C2579a c2579a = new C2579a();
                    c2579a.m5782a(m5785a);
                    str2 = c2579a.bIJ.getProperty(str);
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } else if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
        }
    }

    /* renamed from: c */
    public static String m5784c(File file) {
        return m5783c(file, "channelNo");
    }

    /* renamed from: a */
    private static byte[] m5785a(RandomAccessFile randomAccessFile) {
        boolean z = true;
        long length = randomAccessFile.length() - 22;
        randomAccessFile.seek(length);
        byte[] m5733a = bIH.m5733a();
        int read = randomAccessFile.read();
        while (true) {
            if (read == -1) {
                z = false;
                break;
            } else if (read == m5733a[0] && randomAccessFile.read() == m5733a[1] && randomAccessFile.read() == m5733a[2] && randomAccessFile.read() == m5733a[3]) {
                break;
            } else {
                length--;
                randomAccessFile.seek(length);
                read = randomAccessFile.read();
            }
        }
        if (!z) {
            throw new ZipException("archive is not a ZIP archive");
        }
        randomAccessFile.seek(16 + length + 4);
        byte[] bArr = new byte[2];
        randomAccessFile.readFully(bArr);
        int m5730b = new bqv(bArr).m5730b();
        if (m5730b == 0) {
            return null;
        }
        byte[] bArr2 = new byte[m5730b];
        randomAccessFile.read(bArr2);
        return bArr2;
    }
}
