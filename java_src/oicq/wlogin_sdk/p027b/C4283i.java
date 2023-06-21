package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.MD5;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.b.i */
/* loaded from: classes.dex */
public class C4283i extends C4232b {

    /* renamed from: a */
    int f5081a = 4;

    /* renamed from: i */
    int f5082i = 5;

    /* renamed from: j */
    int f5083j = 98;

    public C4283i() {
        this.f5028h = 262;
    }

    /* renamed from: a */
    public byte[] m256a(long j, long j2, int i, long j3, byte[] bArr, byte[] bArr2, int i2, byte[] bArr3, long j4, byte[] bArr4, byte[] bArr5, int i3, byte[] bArr6, int i4) {
        int length;
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (bArr3 == null) {
            bArr3 = new byte[0];
        }
        if (bArr5 == null) {
            bArr5 = new byte[0];
        }
        if (bArr6 == null) {
            bArr6 = new byte[0];
        }
        if (bArr4 == null) {
            bArr4 = new byte[0];
        }
        this.f5083j += bArr4.length + 2;
        byte[] bArr7 = new byte[this.f5083j];
        C4393util.int16_to_buf(bArr7, 0, this.f5081a);
        C4393util.int32_to_buf(bArr7, 2, C4393util.get_rand_32());
        C4393util.int32_to_buf(bArr7, 6, this.f5082i);
        C4393util.int32_to_buf(bArr7, 10, (int) j);
        C4393util.int32_to_buf(bArr7, 14, i);
        C4393util.int64_to_buf(bArr7, 18, j3 == 0 ? j4 : j3);
        System.arraycopy(bArr, 0, bArr7, 26, bArr.length);
        int length2 = bArr.length + 26;
        System.arraycopy(bArr2, 0, bArr7, length2, bArr2.length);
        int length3 = length2 + bArr2.length;
        C4393util.int8_to_buf(bArr7, length3, i2);
        int i5 = length3 + 1;
        System.arraycopy(bArr3, 0, bArr7, i5, bArr3.length);
        int length4 = i5 + bArr3.length;
        System.arraycopy(bArr5, 0, bArr7, length4, bArr5.length);
        int length5 = length4 + bArr5.length;
        C4393util.int32_to_buf(bArr7, length5, 0);
        int i6 = length5 + 4;
        C4393util.int8_to_buf(bArr7, i6, i3);
        int i7 = i6 + 1;
        if (bArr6.length == 0) {
            byte[] bArr8 = new byte[16];
            C4393util.int32_to_buf(bArr8, 0, C4393util.get_rand_32());
            C4393util.int32_to_buf(bArr8, 4, C4393util.get_rand_32());
            C4393util.int32_to_buf(bArr8, 8, C4393util.get_rand_32());
            C4393util.int32_to_buf(bArr8, 12, C4393util.get_rand_32());
            length = i7 + bArr8.length;
        } else {
            System.arraycopy(bArr6, 0, bArr7, i7, bArr6.length);
            length = i7 + bArr6.length;
        }
        C4393util.int64_to_buf32(bArr7, length, j2);
        int i8 = length + 4;
        C4393util.int32_to_buf(bArr7, i8, i4);
        int i9 = i8 + 4;
        C4393util.int16_to_buf(bArr7, i9, bArr4.length);
        System.arraycopy(bArr4, 0, bArr7, i9 + 2, bArr4.length);
        byte[] bArr9 = new byte[24];
        System.arraycopy(bArr3, 0, bArr9, 0, bArr3.length);
        if (j4 == 0) {
            C4393util.int64_to_buf(bArr9, 16, j3);
        } else {
            C4393util.int64_to_buf(bArr9, 16, j4);
        }
        byte[] encrypt = cryptor.encrypt(bArr7, 0, bArr7.length, MD5.toMD5Byte(bArr9));
        this.f5083j = encrypt.length;
        m321b(this.f5028h);
        m317c(encrypt, this.f5083j);
        m313e();
        return m322b();
    }
}
