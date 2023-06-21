package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.b.ao */
/* loaded from: classes.dex */
public class C4220ao extends C4232b {

    /* renamed from: a */
    public int f5013a = 0;

    public C4220ao() {
        this.f5028h = 324;
    }

    /* renamed from: a */
    public byte[] m343a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        int i;
        int i2;
        if (bArr == null || bArr.length <= 0) {
            i = 0;
            i2 = 0;
        } else {
            i2 = 0 + bArr.length;
            i = 1;
        }
        if (bArr2 != null && bArr2.length > 0) {
            i2 += bArr2.length;
            i++;
        }
        if (bArr3 != null && bArr3.length > 0) {
            i2 += bArr3.length;
            i++;
        }
        if (bArr4 != null && bArr4.length > 0) {
            i2 += bArr4.length;
            i++;
        }
        byte[] bArr6 = new byte[i2 + 2];
        C4393util.int16_to_buf(bArr6, 0, i);
        int i3 = 2;
        if (bArr != null && bArr.length > 0) {
            System.arraycopy(bArr, 0, bArr6, 2, bArr.length);
            i3 = bArr.length + 2;
        }
        if (bArr2 != null && bArr2.length > 0) {
            System.arraycopy(bArr2, 0, bArr6, i3, bArr2.length);
            i3 += bArr2.length;
        }
        if (bArr3 != null && bArr3.length > 0) {
            System.arraycopy(bArr3, 0, bArr6, i3, bArr3.length);
            i3 += bArr3.length;
        }
        if (bArr4 != null && bArr4.length > 0) {
            System.arraycopy(bArr4, 0, bArr6, i3, bArr4.length);
            int length = i3 + bArr4.length;
        }
        byte[] encrypt = cryptor.encrypt(bArr6, 0, bArr6.length, bArr5);
        this.f5013a = encrypt.length;
        m321b(this.f5028h);
        m317c(encrypt, encrypt.length);
        m313e();
        return m322b();
    }

    /* renamed from: a */
    public byte[] m342a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8) {
        int i;
        int i2;
        if (bArr == null || bArr.length <= 0) {
            i = 0;
            i2 = 0;
        } else {
            i2 = 0 + bArr.length;
            i = 1;
        }
        if (bArr2 != null && bArr2.length > 0) {
            i2 += bArr2.length;
            i++;
        }
        if (bArr3 != null && bArr3.length > 0) {
            i2 += bArr3.length;
            i++;
        }
        if (bArr4 != null && bArr4.length > 0) {
            i2 += bArr4.length;
            i++;
        }
        if (bArr5 != null && bArr5.length > 0) {
            i2 += bArr5.length;
            i++;
        }
        if (bArr6 != null && bArr6.length > 0) {
            i2 += bArr6.length;
            i++;
        }
        if (bArr7 != null && bArr7.length > 0) {
            i2 += bArr7.length;
            i++;
        }
        byte[] bArr9 = new byte[i2 + 2];
        C4393util.int16_to_buf(bArr9, 0, i);
        int i3 = 2;
        if (bArr != null && bArr.length > 0) {
            System.arraycopy(bArr, 0, bArr9, 2, bArr.length);
            i3 = bArr.length + 2;
        }
        if (bArr2 != null && bArr2.length > 0) {
            System.arraycopy(bArr2, 0, bArr9, i3, bArr2.length);
            i3 += bArr2.length;
        }
        if (bArr3 != null && bArr3.length > 0) {
            System.arraycopy(bArr3, 0, bArr9, i3, bArr3.length);
            i3 += bArr3.length;
        }
        if (bArr4 != null && bArr4.length > 0) {
            System.arraycopy(bArr4, 0, bArr9, i3, bArr4.length);
            i3 += bArr4.length;
        }
        if (bArr5 != null && bArr5.length > 0) {
            System.arraycopy(bArr5, 0, bArr9, i3, bArr5.length);
            i3 += bArr5.length;
        }
        if (bArr6 != null && bArr6.length > 0) {
            System.arraycopy(bArr6, 0, bArr9, i3, bArr6.length);
            i3 += bArr6.length;
        }
        if (bArr7 != null && bArr7.length > 0) {
            System.arraycopy(bArr7, 0, bArr9, i3, bArr7.length);
            int length = i3 + bArr7.length;
        }
        byte[] encrypt = cryptor.encrypt(bArr9, 0, bArr9.length, bArr8);
        this.f5013a = encrypt.length;
        m321b(this.f5028h);
        m317c(encrypt, encrypt.length);
        m313e();
        return m322b();
    }
}
