package oicq.wlogin_sdk.tools;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Random;
/* renamed from: oicq.wlogin_sdk.tools.a */
/* loaded from: classes.dex */
class C4390a {

    /* renamed from: a */
    private byte[] f5323a;

    /* renamed from: b */
    private byte[] f5324b;

    /* renamed from: c */
    private byte[] f5325c;

    /* renamed from: d */
    private int f5326d;

    /* renamed from: e */
    private int f5327e;

    /* renamed from: f */
    private int f5328f;

    /* renamed from: g */
    private int f5329g;

    /* renamed from: h */
    private byte[] f5330h;

    /* renamed from: j */
    private int f5332j;

    /* renamed from: i */
    private boolean f5331i = true;

    /* renamed from: k */
    private Random f5333k = new Random();

    /* renamed from: a */
    private static long m37a(byte[] bArr, int i, int i2) {
        long j = 0;
        int i3 = i2 > 4 ? i + 4 : i + i2;
        while (i < i3) {
            j = (j << 8) | (bArr[i] & 255);
            i++;
        }
        return 4294967295L & j;
    }

    /* renamed from: a */
    private void m40a() {
        this.f5328f = 0;
        while (this.f5328f < 8) {
            if (this.f5331i) {
                byte[] bArr = this.f5323a;
                int i = this.f5328f;
                bArr[i] = (byte) (bArr[i] ^ this.f5324b[this.f5328f]);
            } else {
                byte[] bArr2 = this.f5323a;
                int i2 = this.f5328f;
                bArr2[i2] = (byte) (bArr2[i2] ^ this.f5325c[this.f5327e + this.f5328f]);
            }
            this.f5328f++;
        }
        System.arraycopy(m39a(this.f5323a), 0, this.f5325c, this.f5326d, 8);
        this.f5328f = 0;
        while (this.f5328f < 8) {
            byte[] bArr3 = this.f5325c;
            int i3 = this.f5326d + this.f5328f;
            bArr3[i3] = (byte) (bArr3[i3] ^ this.f5324b[this.f5328f]);
            this.f5328f++;
        }
        System.arraycopy(this.f5323a, 0, this.f5324b, 0, 8);
        this.f5327e = this.f5326d;
        this.f5326d += 8;
        this.f5328f = 0;
        this.f5331i = false;
    }

    /* renamed from: a */
    private byte[] m39a(byte[] bArr) {
        int i = 16;
        try {
            long m37a = m37a(bArr, 0, 4);
            long m37a2 = m37a(bArr, 4, 4);
            long m37a3 = m37a(this.f5330h, 0, 4);
            long m37a4 = m37a(this.f5330h, 4, 4);
            long m37a5 = m37a(this.f5330h, 8, 4);
            long m37a6 = m37a(this.f5330h, 12, 4);
            long j = 0;
            long j2 = (-1640531527) & 4294967295L;
            while (true) {
                int i2 = i - 1;
                if (i <= 0) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8);
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt((int) m37a);
                    dataOutputStream.writeInt((int) m37a2);
                    dataOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                j = (j + j2) & 4294967295L;
                m37a = (m37a + ((((m37a2 << 4) + m37a3) ^ (m37a2 + j)) ^ ((m37a2 >>> 5) + m37a4))) & 4294967295L;
                m37a2 = (m37a2 + ((((m37a << 4) + m37a5) ^ (m37a + j)) ^ ((m37a >>> 5) + m37a6))) & 4294967295L;
                i = i2;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: a */
    private byte[] m38a(byte[] bArr, int i) {
        int i2 = 16;
        try {
            long m37a = m37a(bArr, i, 4);
            long m37a2 = m37a(bArr, i + 4, 4);
            long m37a3 = m37a(this.f5330h, 0, 4);
            long m37a4 = m37a(this.f5330h, 4, 4);
            long m37a5 = m37a(this.f5330h, 8, 4);
            long m37a6 = m37a(this.f5330h, 12, 4);
            long j = (-478700656) & 4294967295L;
            long j2 = (-1640531527) & 4294967295L;
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8);
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt((int) m37a);
                    dataOutputStream.writeInt((int) m37a2);
                    dataOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                m37a2 = (m37a2 - ((((m37a << 4) + m37a5) ^ (m37a + j)) ^ ((m37a >>> 5) + m37a6))) & 4294967295L;
                m37a = (m37a - ((((m37a2 << 4) + m37a3) ^ (m37a2 + j)) ^ ((m37a2 >>> 5) + m37a4))) & 4294967295L;
                j = (j - j2) & 4294967295L;
                i2 = i3;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: b */
    private int m34b() {
        return this.f5333k.nextInt();
    }

    /* renamed from: b */
    private boolean m32b(byte[] bArr, int i, int i2) {
        this.f5328f = 0;
        while (this.f5328f < 8) {
            if (this.f5332j + this.f5328f >= i2) {
                return true;
            }
            byte[] bArr2 = this.f5324b;
            int i3 = this.f5328f;
            bArr2[i3] = (byte) (bArr2[i3] ^ bArr[(this.f5326d + i) + this.f5328f]);
            this.f5328f++;
        }
        this.f5324b = m33b(this.f5324b);
        if (this.f5324b == null) {
            return false;
        }
        this.f5332j += 8;
        this.f5326d += 8;
        this.f5328f = 0;
        return true;
    }

    /* renamed from: b */
    private byte[] m33b(byte[] bArr) {
        return m38a(bArr, 0);
    }

    /* renamed from: b */
    private byte[] m31b(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3;
        int i4;
        this.f5323a = new byte[8];
        this.f5324b = new byte[8];
        this.f5328f = 1;
        this.f5329g = 0;
        this.f5327e = 0;
        this.f5326d = 0;
        this.f5330h = bArr2;
        this.f5331i = true;
        this.f5328f = (i2 + 10) % 8;
        if (this.f5328f != 0) {
            this.f5328f = 8 - this.f5328f;
        }
        this.f5325c = new byte[this.f5328f + i2 + 10];
        this.f5323a[0] = (byte) ((m34b() & 248) | this.f5328f);
        for (int i5 = 1; i5 <= this.f5328f; i5++) {
            this.f5323a[i5] = (byte) (m34b() & 255);
        }
        this.f5328f++;
        for (int i6 = 0; i6 < 8; i6++) {
            this.f5324b[i6] = 0;
        }
        this.f5329g = 1;
        while (this.f5329g <= 2) {
            if (this.f5328f < 8) {
                byte[] bArr3 = this.f5323a;
                int i7 = this.f5328f;
                this.f5328f = i7 + 1;
                bArr3[i7] = (byte) (m34b() & 255);
                this.f5329g++;
            }
            if (this.f5328f == 8) {
                m40a();
            }
        }
        int i8 = i;
        int i9 = i2;
        while (i9 > 0) {
            if (this.f5328f < 8) {
                byte[] bArr4 = this.f5323a;
                int i10 = this.f5328f;
                this.f5328f = i10 + 1;
                i3 = i8 + 1;
                bArr4[i10] = bArr[i8];
                i4 = i9 - 1;
            } else {
                i3 = i8;
                i4 = i9;
            }
            if (this.f5328f == 8) {
                m40a();
                i9 = i4;
                i8 = i3;
            } else {
                i9 = i4;
                i8 = i3;
            }
        }
        this.f5329g = 1;
        while (this.f5329g <= 7) {
            if (this.f5328f < 8) {
                byte[] bArr5 = this.f5323a;
                int i11 = this.f5328f;
                this.f5328f = i11 + 1;
                bArr5[i11] = 0;
                this.f5329g++;
            }
            if (this.f5328f == 8) {
                m40a();
            }
        }
        return this.f5325c;
    }

    /* renamed from: a */
    protected byte[] m36a(byte[] bArr, int i, int i2, byte[] bArr2) {
        this.f5327e = 0;
        this.f5326d = 0;
        this.f5330h = bArr2;
        byte[] bArr3 = new byte[i + 8];
        if (i2 % 8 != 0 || i2 < 16) {
            return null;
        }
        this.f5324b = m38a(bArr, i);
        this.f5328f = this.f5324b[0] & 7;
        int i3 = (i2 - this.f5328f) - 10;
        if (i3 < 0) {
            return null;
        }
        for (int i4 = i; i4 < bArr3.length; i4++) {
            bArr3[i4] = 0;
        }
        this.f5325c = new byte[i3];
        this.f5327e = 0;
        this.f5326d = 8;
        this.f5332j = 8;
        this.f5328f++;
        this.f5329g = 1;
        byte[] bArr4 = bArr3;
        while (this.f5329g <= 2) {
            if (this.f5328f < 8) {
                this.f5328f++;
                this.f5329g++;
            }
            if (this.f5328f == 8) {
                if (!m32b(bArr, i, i2)) {
                    return null;
                }
                bArr4 = bArr;
            }
        }
        int i5 = i3;
        byte[] bArr5 = bArr4;
        int i6 = 0;
        byte[] bArr6 = bArr5;
        while (i5 != 0) {
            if (this.f5328f < 8) {
                this.f5325c[i6] = (byte) (bArr6[(this.f5327e + i) + this.f5328f] ^ this.f5324b[this.f5328f]);
                i6++;
                i5--;
                this.f5328f++;
            }
            if (this.f5328f == 8) {
                this.f5327e = this.f5326d - 8;
                if (!m32b(bArr, i, i2)) {
                    return null;
                }
                bArr6 = bArr;
            }
        }
        this.f5329g = 1;
        byte[] bArr7 = bArr6;
        while (this.f5329g < 8) {
            if (this.f5328f < 8) {
                if ((bArr7[(this.f5327e + i) + this.f5328f] ^ this.f5324b[this.f5328f]) != 0) {
                    return null;
                }
                this.f5328f++;
            }
            if (this.f5328f == 8) {
                this.f5327e = this.f5326d;
                if (!m32b(bArr, i, i2)) {
                    return null;
                }
                bArr7 = bArr;
            }
            this.f5329g++;
        }
        return this.f5325c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public byte[] m35a(byte[] bArr, byte[] bArr2) {
        return m36a(bArr, 0, bArr.length, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public byte[] m30b(byte[] bArr, byte[] bArr2) {
        return m31b(bArr, 0, bArr.length, bArr2);
    }
}
