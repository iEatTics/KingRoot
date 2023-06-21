package oicq.wlogin_sdk.p026a;

import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.MD5;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.a.d */
/* loaded from: classes.dex */
public class C4198d extends C4197c {
    public C4198d() {
        this.f4966b = 6;
    }

    /* renamed from: a */
    public byte[] m375a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, byte[] bArr5, byte[] bArr6, boolean z, byte[] bArr7, long j, byte[] bArr8, int i2) {
        byte[] m374b = m374b(bArr, bArr2, bArr3, bArr4, i, bArr5, bArr6, z, bArr7, j, bArr8, i2);
        this.f4968d = bArr.length + 1 + 1 + m374b.length;
        byte[] bArr9 = new byte[this.f4968d];
        C4393util.int8_to_buf(bArr9, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr9, 1, bArr.length);
        int length = bArr.length + 1;
        C4393util.int8_to_buf(bArr9, length, m374b.length);
        int i3 = length + 1;
        System.arraycopy(m374b, 0, bArr9, i3, m374b.length);
        int length2 = i3 + m374b.length;
        return m384a(bArr9);
    }

    /* renamed from: b */
    public byte[] m374b(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, byte[] bArr5, byte[] bArr6, boolean z, byte[] bArr7, long j, byte[] bArr8, int i2) {
        byte[] bArr9;
        if (bArr6 == null) {
            bArr6 = new byte[0];
        }
        if (bArr4 == null) {
            bArr4 = new byte[0];
        }
        if (bArr7 == null) {
            bArr7 = new byte[0];
        }
        int i3 = 5;
        if (z) {
            i3 = 10;
            bArr9 = new byte[bArr.length + 1 + 1 + bArr3.length + 1 + 1 + 2 + bArr5.length + 2 + bArr6.length + 2 + bArr4.length + 2 + 1 + 2 + 1 + 2 + bArr7.length + 2 + bArr3.length + 2 + 4 + 2 + bArr8.length + 2 + 4];
        } else {
            bArr9 = new byte[bArr.length + 1 + 1 + bArr3.length + 1 + 1 + 2 + bArr5.length + 2 + bArr6.length + 2 + bArr4.length + 2 + 1 + 2 + 4];
        }
        C4393util.int8_to_buf(bArr9, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr9, 1, bArr.length);
        int length = bArr.length + 1;
        C4393util.int8_to_buf(bArr9, length, bArr3.length);
        int i4 = length + 1;
        System.arraycopy(bArr3, 0, bArr9, i4, bArr3.length);
        int length2 = i4 + bArr3.length;
        C4393util.int8_to_buf(bArr9, length2, i);
        int i5 = length2 + 1;
        C4393util.int8_to_buf(bArr9, i5, i3);
        int i6 = i5 + 1;
        C4393util.int8_to_buf(bArr9, i6, 1);
        int i7 = i6 + 1;
        C4393util.int8_to_buf(bArr9, i7, bArr5.length);
        int i8 = i7 + 1;
        System.arraycopy(bArr5, 0, bArr9, i8, bArr5.length);
        int length3 = i8 + bArr5.length;
        C4393util.int8_to_buf(bArr9, length3, 5);
        int i9 = length3 + 1;
        C4393util.int8_to_buf(bArr9, i9, bArr6.length);
        int i10 = i9 + 1;
        System.arraycopy(bArr6, 0, bArr9, i10, bArr6.length);
        int length4 = i10 + bArr6.length;
        C4393util.int8_to_buf(bArr9, length4, 6);
        int i11 = length4 + 1;
        C4393util.int8_to_buf(bArr9, i11, bArr4.length);
        int i12 = i11 + 1;
        System.arraycopy(bArr4, 0, bArr9, i12, bArr4.length);
        int length5 = i12 + bArr4.length;
        C4393util.int8_to_buf(bArr9, length5, 8);
        int i13 = length5 + 1;
        C4393util.int8_to_buf(bArr9, i13, 1);
        int i14 = i13 + 1;
        C4393util.int8_to_buf(bArr9, i14, 1);
        int i15 = i14 + 1;
        C4393util.int8_to_buf(bArr9, i15, 15);
        int i16 = i15 + 1;
        C4393util.int8_to_buf(bArr9, i16, 4);
        int i17 = i16 + 1;
        C4393util.int32_to_buf(bArr9, i17, i2);
        int i18 = i17 + 4;
        if (z) {
            C4393util.int8_to_buf(bArr9, i18, 9);
            int i19 = i18 + 1;
            C4393util.int8_to_buf(bArr9, i19, 1);
            int i20 = i19 + 1;
            C4393util.int8_to_buf(bArr9, i20, 1);
            int i21 = i20 + 1;
            C4393util.int8_to_buf(bArr9, i21, 10);
            int i22 = i21 + 1;
            C4393util.int8_to_buf(bArr9, i22, bArr7.length);
            int i23 = i22 + 1;
            System.arraycopy(bArr7, 0, bArr9, i23, bArr7.length);
            int length6 = i23 + bArr7.length;
            C4393util.int8_to_buf(bArr9, length6, 11);
            int i24 = length6 + 1;
            C4393util.int8_to_buf(bArr9, i24, bArr3.length);
            int i25 = i24 + 1;
            System.arraycopy(bArr3, 0, bArr9, i25, bArr3.length);
            int length7 = i25 + bArr3.length;
            C4393util.int8_to_buf(bArr9, length7, 13);
            int i26 = length7 + 1;
            C4393util.int8_to_buf(bArr9, i26, 4);
            int i27 = i26 + 1;
            C4393util.int64_to_buf32(bArr9, i27, j);
            int i28 = i27 + 4;
            C4393util.int8_to_buf(bArr9, i28, 14);
            int i29 = i28 + 1;
            C4393util.int8_to_buf(bArr9, i29, bArr8.length);
            int i30 = i29 + 1;
            System.arraycopy(bArr8, 0, bArr9, i30, bArr8.length);
            int length8 = i30 + bArr8.length;
        }
        return cryptor.encrypt(bArr9, 0, bArr9.length, (bArr2 == null || bArr2.length <= 0) ? C4204j.f4970a.getBytes() : MD5.toMD5Byte(bArr2));
    }
}
