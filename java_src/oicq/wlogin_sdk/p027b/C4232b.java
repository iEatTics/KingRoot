package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.b.b */
/* loaded from: classes.dex */
public class C4232b {

    /* renamed from: b */
    int f5022b;

    /* renamed from: c */
    int f5023c;

    /* renamed from: d */
    int f5024d;

    /* renamed from: e */
    int f5025e;

    /* renamed from: f */
    int f5026f;

    /* renamed from: g */
    byte[] f5027g;

    /* renamed from: h */
    int f5028h;

    public C4232b() {
        this.f5022b = 128;
        this.f5023c = 0;
        this.f5024d = 0;
        this.f5025e = 4;
        this.f5026f = 0;
        this.f5027g = new byte[this.f5022b];
        this.f5028h = 0;
    }

    public C4232b(int i) {
        this.f5022b = 128;
        this.f5023c = 0;
        this.f5024d = 0;
        this.f5025e = 4;
        this.f5026f = 0;
        this.f5027g = new byte[this.f5022b];
        this.f5028h = 0;
        this.f5028h = i;
    }

    /* renamed from: a */
    int m325a(byte[] bArr, int i, int i2, int i3) {
        int length = bArr.length;
        int i4 = i;
        while (i4 < length && i4 + 2 <= length) {
            if (C4393util.buf_to_int16(bArr, i4) == i3) {
                return i4;
            }
            int i5 = i4 + 2;
            if (i5 + 2 > length) {
                return -1;
            }
            i4 = i5 + C4393util.buf_to_int16(bArr, i5) + 2;
        }
        return -1;
    }

    /* renamed from: a */
    public int m324a(byte[] bArr, int i, int i2, byte[] bArr2) {
        int m325a = m325a(bArr, i, i2, this.f5028h);
        if (m325a < 0) {
            return -1;
        }
        int i3 = i2 - (m325a - i);
        byte[] bArr3 = new byte[i3];
        System.arraycopy(bArr, m325a, bArr3, 0, i3);
        return m323a(bArr3, i3, bArr2);
    }

    /* renamed from: a */
    int m323a(byte[] bArr, int i, byte[] bArr2) {
        if (this.f5025e >= i) {
            return -1;
        }
        this.f5026f = C4393util.buf_to_int16(bArr, 2);
        if (this.f5025e + this.f5026f <= i) {
            byte[] decrypt = cryptor.decrypt(bArr, this.f5025e, this.f5026f, bArr2);
            if (decrypt == null) {
                return C4393util.E_TLV_DECRYPT;
            }
            if (this.f5025e + decrypt.length > this.f5022b) {
                this.f5022b = this.f5025e + decrypt.length;
                this.f5027g = new byte[this.f5022b];
            }
            this.f5023c = 0;
            System.arraycopy(bArr, 0, this.f5027g, 0, this.f5025e);
            this.f5023c += this.f5025e;
            System.arraycopy(decrypt, 0, this.f5027g, this.f5023c, decrypt.length);
            this.f5023c += decrypt.length;
            this.f5026f = decrypt.length;
            if (mo240f().booleanValue()) {
                return 0;
            }
            return C4393util.E_TLV_VERIFY;
        }
        return -1;
    }

    /* renamed from: a */
    public void m326a(byte[] bArr, int i, int i2) {
        if (this.f5025e + i2 > this.f5022b) {
            this.f5022b = this.f5025e + i2 + 128;
            byte[] bArr2 = new byte[this.f5022b];
            System.arraycopy(this.f5027g, 0, bArr2, 0, this.f5025e);
            this.f5027g = bArr2;
        }
        this.f5023c = this.f5025e + i2;
        System.arraycopy(bArr, i, this.f5027g, this.f5025e, i2);
        this.f5026f = i2;
        C4393util.int16_to_buf(this.f5027g, 0, this.f5028h);
        C4393util.int16_to_buf(this.f5027g, 2, this.f5026f);
    }

    /* renamed from: b */
    public void m321b(int i) {
        C4393util.int16_to_buf(this.f5027g, this.f5023c, i);
        this.f5023c += 2;
        C4393util.int16_to_buf(this.f5027g, this.f5023c, 0);
        this.f5023c += 2;
    }

    /* renamed from: b */
    public void m320b(byte[] bArr, int i) {
        if (this.f5025e + i > this.f5022b) {
            this.f5022b = this.f5025e + i + 128;
            byte[] bArr2 = new byte[this.f5022b];
            System.arraycopy(this.f5027g, 0, bArr2, 0, this.f5025e);
            this.f5027g = bArr2;
        }
        this.f5023c = this.f5025e + i;
        System.arraycopy(bArr, 0, this.f5027g, this.f5025e, i);
        this.f5026f = i;
        C4393util.int16_to_buf(this.f5027g, 0, this.f5028h);
        C4393util.int16_to_buf(this.f5027g, 2, this.f5026f);
    }

    /* renamed from: b */
    public void m319b(byte[] bArr, int i, int i2) {
        if (i2 > this.f5022b) {
            this.f5022b = i2 + 128;
            this.f5027g = new byte[this.f5022b];
        }
        this.f5023c = i2;
        System.arraycopy(bArr, i, this.f5027g, 0, i2);
        this.f5028h = C4393util.buf_to_int16(bArr, i);
        this.f5026f = i2 - this.f5025e;
    }

    /* renamed from: b */
    public byte[] m322b() {
        byte[] bArr = new byte[this.f5023c];
        System.arraycopy(this.f5027g, 0, bArr, 0, this.f5023c);
        return bArr;
    }

    /* renamed from: c */
    public int m316c(byte[] bArr, int i, int i2) {
        int i3;
        int m325a = m325a(bArr, i, i2, this.f5028h);
        if (m325a >= 0 && this.f5025e < (i3 = i2 - (m325a - i))) {
            this.f5026f = C4393util.buf_to_int16(bArr, m325a + 2);
            if (this.f5025e + this.f5026f <= i3) {
                m319b(bArr, m325a, this.f5025e + this.f5026f);
                return !mo240f().booleanValue() ? C4393util.E_TLV_VERIFY : this.f5025e + m325a + this.f5026f;
            }
            return -1;
        }
        return -1;
    }

    /* renamed from: c */
    public void m317c(byte[] bArr, int i) {
        if (i > this.f5022b - this.f5025e) {
            this.f5022b = this.f5025e + i + 64;
            byte[] bArr2 = new byte[this.f5022b];
            System.arraycopy(this.f5027g, 0, bArr2, 0, this.f5023c);
            this.f5027g = bArr2;
        }
        this.f5026f = i;
        System.arraycopy(bArr, 0, this.f5027g, this.f5023c, i);
        this.f5023c += i;
    }

    /* renamed from: c */
    public byte[] m318c() {
        byte[] bArr = new byte[this.f5026f];
        System.arraycopy(this.f5027g, this.f5025e, bArr, 0, this.f5026f);
        return bArr;
    }

    /* renamed from: d */
    public int m315d() {
        return this.f5026f;
    }

    /* renamed from: d */
    public int m314d(byte[] bArr, int i) {
        if (bArr != null) {
            return bArr.length > i ? i : bArr.length;
        }
        return 0;
    }

    /* renamed from: e */
    public void m313e() {
        C4393util.int16_to_buf(this.f5027g, 2, this.f5023c - this.f5025e);
    }

    /* renamed from: f */
    public Boolean mo240f() {
        return true;
    }
}
