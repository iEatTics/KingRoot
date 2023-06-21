package oicq.wlogin_sdk.p026a;

import android.os.Build;
import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.a.h */
/* loaded from: classes.dex */
public class C4202h extends C4197c {
    public C4202h() {
        this.f4966b = 10;
        this.f4969e = 2;
    }

    /* renamed from: a */
    public byte[] m370a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, long j, long j2, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, long j3, byte[] bArr8, byte[] bArr9, byte[] bArr10) {
        String str = Build.VERSION.RELEASE;
        if (bArr7 == null) {
            bArr7 = new byte[0];
        }
        if (bArr10 == null) {
            bArr10 = new byte[0];
        }
        this.f4968d = bArr.length + 1 + 1 + 1 + str.length() + 1 + bArr2.length + 1 + bArr3.length + 1 + 1 + 1 + 4 + 4 + 1 + bArr5.length + 1 + bArr6.length + 1 + bArr7.length + 2 + 6 + 10 + bArr8.length + 2 + bArr9.length + 2 + bArr10.length + 5 + 6;
        byte[] bArr11 = new byte[this.f4968d];
        C4393util.int8_to_buf(bArr11, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr11, 1, bArr.length);
        int length = bArr.length + 1;
        C4393util.int8_to_buf(bArr11, length, this.f4967c);
        int i4 = length + 1;
        C4393util.int8_to_buf(bArr11, i4, str.length());
        int i5 = i4 + 1;
        System.arraycopy(str.getBytes(), 0, bArr11, i5, str.length());
        int length2 = i5 + str.length();
        C4393util.int8_to_buf(bArr11, length2, bArr2.length);
        int i6 = length2 + 1;
        System.arraycopy(bArr2, 0, bArr11, i6, bArr2.length);
        int length3 = i6 + bArr2.length;
        C4393util.int8_to_buf(bArr11, length3, bArr3.length);
        int i7 = length3 + 1;
        System.arraycopy(bArr3, 0, bArr11, i7, bArr3.length);
        int length4 = i7 + bArr3.length;
        C4393util.int8_to_buf(bArr11, length4, i);
        int i8 = length4 + 1;
        C4393util.int8_to_buf(bArr11, i8, i2);
        int i9 = i8 + 1;
        C4393util.int8_to_buf(bArr11, i9, i3);
        int i10 = i9 + 1;
        C4393util.int64_to_buf32(bArr11, i10, j);
        int i11 = i10 + 4;
        if (bArr4 == null || bArr4.length != 4) {
            C4393util.int32_to_buf(bArr11, i11, 0);
        } else {
            System.arraycopy(bArr4, 0, bArr11, i11, 4);
        }
        int i12 = i11 + 4;
        C4393util.int8_to_buf(bArr11, i12, bArr5.length);
        int i13 = i12 + 1;
        System.arraycopy(bArr5, 0, bArr11, i13, bArr5.length);
        int length5 = i13 + bArr5.length;
        C4393util.int8_to_buf(bArr11, length5, bArr6.length);
        int i14 = length5 + 1;
        System.arraycopy(bArr6, 0, bArr11, i14, bArr6.length);
        int length6 = i14 + bArr6.length;
        C4393util.int8_to_buf(bArr11, length6, 7);
        int i15 = length6 + 1;
        C4393util.int8_to_buf(bArr11, i15, 1);
        int i16 = i15 + 1;
        C4393util.int8_to_buf(bArr11, i16, bArr7.length);
        int i17 = i16 + 1;
        System.arraycopy(bArr7, 0, bArr11, i17, bArr7.length);
        int length7 = i17 + bArr7.length;
        C4393util.int8_to_buf(bArr11, length7, 2);
        int i18 = length7 + 1;
        C4393util.int8_to_buf(bArr11, i18, 8);
        int i19 = i18 + 1;
        C4393util.int64_to_buf(bArr11, i19, j3);
        int i20 = i19 + 8;
        C4393util.int8_to_buf(bArr11, i20, 3);
        int i21 = i20 + 1;
        C4393util.int8_to_buf(bArr11, i21, bArr8.length);
        int i22 = i21 + 1;
        System.arraycopy(bArr8, 0, bArr11, i22, bArr8.length);
        int length8 = i22 + bArr8.length;
        C4393util.int8_to_buf(bArr11, length8, 4);
        int i23 = length8 + 1;
        C4393util.int8_to_buf(bArr11, i23, bArr9.length);
        int i24 = i23 + 1;
        System.arraycopy(bArr9, 0, bArr11, i24, bArr9.length);
        int length9 = i24 + bArr9.length;
        C4393util.int8_to_buf(bArr11, length9, 13);
        int i25 = length9 + 1;
        C4393util.int8_to_buf(bArr11, i25, 4);
        int i26 = i25 + 1;
        C4393util.int64_to_buf32(bArr11, i26, j2);
        int i27 = i26 + 4;
        int i28 = i27 + 1;
        C4393util.int8_to_buf(bArr11, i27, 6);
        int i29 = i28 + 1;
        C4393util.int8_to_buf(bArr11, i28, bArr10.length + 3);
        int i30 = i29 + 1;
        C4393util.int8_to_buf(bArr11, i29, bArr10.length == 0 ? 1 : 2);
        C4393util.int16_to_buf(bArr11, i30, bArr10.length);
        int i31 = i30 + 2;
        System.arraycopy(bArr10, 0, bArr11, i31, bArr10.length);
        int length10 = i31 + bArr10.length;
        int i32 = length10 + 1;
        C4393util.int8_to_buf(bArr11, length10, 7);
        int i33 = i32 + 1;
        C4393util.int8_to_buf(bArr11, i32, 4);
        C4393util.int32_to_buf(bArr11, i33, true == C4379u.f5278ag ? 3 : 1);
        int i34 = i33 + 4;
        return m384a(bArr11);
    }
}
