package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ac */
/* loaded from: classes.dex */
public class C4208ac extends C4232b {

    /* renamed from: a */
    int f4999a = 0;

    public C4208ac() {
        this.f5028h = 292;
    }

    /* renamed from: a */
    public byte[] m364a(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (bArr3 == null) {
            bArr3 = new byte[0];
        }
        if (bArr4 == null) {
            bArr4 = new byte[0];
        }
        if (bArr5 == null) {
            bArr5 = new byte[0];
        }
        int d = m314d(bArr, 16);
        int d2 = m314d(bArr2, 16);
        int d3 = m314d(bArr3, 16);
        int d4 = m314d(bArr4, 32);
        int d5 = m314d(bArr5, 16);
        this.f4999a = d + 2 + 2 + d2 + 2 + 2 + d3 + 2 + d4 + 2 + d5;
        byte[] bArr6 = new byte[this.f4999a];
        C4393util.int16_to_buf(bArr6, 0, d);
        System.arraycopy(bArr, 0, bArr6, 2, d);
        int i2 = d + 2;
        C4393util.int16_to_buf(bArr6, i2, d2);
        int i3 = i2 + 2;
        System.arraycopy(bArr2, 0, bArr6, i3, d2);
        int i4 = i3 + d2;
        C4393util.int16_to_buf(bArr6, i4, i);
        int i5 = i4 + 2;
        C4393util.int16_to_buf(bArr6, i5, d3);
        int i6 = i5 + 2;
        System.arraycopy(bArr3, 0, bArr6, i6, d3);
        int i7 = i6 + d3;
        C4393util.int16_to_buf(bArr6, i7, d4);
        int i8 = i7 + 2;
        System.arraycopy(bArr4, 0, bArr6, i8, d4);
        int i9 = i8 + d4;
        C4393util.int16_to_buf(bArr6, i9, d5);
        int i10 = i9 + 2;
        System.arraycopy(bArr5, 0, bArr6, i10, d5);
        int i11 = i10 + d5;
        m321b(this.f5028h);
        m317c(bArr6, this.f4999a);
        m313e();
        return m322b();
    }
}
