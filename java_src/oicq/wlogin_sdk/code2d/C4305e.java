package oicq.wlogin_sdk.code2d;

import java.util.ArrayList;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.code2d.e */
/* loaded from: classes.dex */
public class C4305e extends C4302b {
    public C4305e() {
        this._cmd = 19;
    }

    /* renamed from: a */
    public int m234a(byte[] bArr) {
        byte[] bArr2 = get_response(bArr, 0);
        if (bArr2 == null || bArr2.length < 11) {
            return C4393util.E_PK_LEN;
        }
        _status.f5097a = C4393util.buf_to_int64(bArr2, 2);
        _status.f5098b = C4393util.buf_to_int8(bArr2, 10) & 255;
        if (_status.f5098b != 0) {
            int buf_to_int16 = C4393util.buf_to_int16(bArr2, 11);
            _status.f5102f = new byte[buf_to_int16];
            System.arraycopy(bArr2, 13, _status.f5102f, 0, buf_to_int16);
            int i = buf_to_int16 + 13;
            return _status.f5098b;
        }
        _status.f5099c = C4393util.buf_to_int32(bArr2, 11) & 4294967295L;
        int buf_to_int162 = C4393util.buf_to_int16(bArr2, 15);
        _status.f5100d = new byte[buf_to_int162];
        System.arraycopy(bArr2, 17, _status.f5100d, 0, buf_to_int162);
        int i2 = buf_to_int162 + 17;
        int buf_to_int163 = C4393util.buf_to_int16(bArr2, i2);
        _status.f5103g = new byte[0];
        _status.f5101e = new ArrayList(buf_to_int163);
        int i3 = i2 + 2;
        for (int i4 = 0; i4 < buf_to_int163; i4++) {
            int buf_to_int164 = C4393util.buf_to_int16(bArr2, i3);
            int buf_to_int165 = C4393util.buf_to_int16(bArr2, i3 + 2);
            if (buf_to_int164 == 13) {
                _status.f5103g = new byte[buf_to_int165];
                System.arraycopy(bArr2, i3 + 4, _status.f5103g, 0, buf_to_int165);
            } else if (buf_to_int164 == 26) {
                C4303c.f5096s = C4393util.buf_to_int8(bArr2, i3 + 4) == 1;
            } else {
                byte[] bArr3 = new byte[buf_to_int165 + 4];
                System.arraycopy(bArr2, i3, bArr3, 0, buf_to_int165 + 4);
                _status.f5101e.add(bArr3);
            }
            i3 += buf_to_int165 + 4;
        }
        return _status.f5098b;
    }

    /* renamed from: a */
    public byte[] m235a(long j, long j2, boolean z, byte[] bArr, int[] iArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, byte[] bArr5) {
        int i2;
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (iArr == null) {
            iArr = new int[0];
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
        byte[] bArr6 = (bArr5 == null || bArr5.length <= 0) ? new byte[bArr.length + 16 + 2 + bArr2.length + 16 + 1 + 2 + 1 + 2 + (iArr.length * 2) + 2 + 4 + bArr4.length] : new byte[bArr.length + 16 + 2 + bArr2.length + 16 + 1 + 2 + 1 + 2 + (iArr.length * 2) + 2 + 4 + bArr4.length + 4 + bArr5.length];
        C4393util.int64_to_buf32(bArr6, 2, j2);
        C4393util.int64_to_buf(bArr6, 6, j);
        C4393util.int16_to_buf(bArr6, 14, bArr.length);
        System.arraycopy(bArr, 0, bArr6, 16, bArr.length);
        int length = bArr.length + 16;
        C4393util.int16_to_buf(bArr6, length, bArr2.length);
        int i3 = length + 2;
        System.arraycopy(bArr2, 0, bArr6, i3, bArr2.length);
        int length2 = i3 + bArr2.length;
        if (bArr3 == null || bArr3.length != 16) {
            i2 = length2 + 16;
        } else {
            System.arraycopy(bArr3, 0, bArr6, length2, 16);
            i2 = length2 + 16;
        }
        C4393util.int8_to_buf(bArr6, i2, 1);
        int i4 = i2 + 1;
        C4393util.int16_to_buf(bArr6, i4, i);
        int i5 = i4 + 2;
        C4393util.int8_to_buf(bArr6, i5, 3);
        int i6 = i5 + 1;
        C4393util.int16_to_buf(bArr6, i6, iArr.length);
        int i7 = i6 + 2;
        for (int i8 : iArr) {
            C4393util.int16_to_buf(bArr6, i7, i8);
            i7 += 2;
        }
        int i9 = 1;
        if (bArr5 != null && bArr5.length > 0) {
            i9 = 2;
        }
        C4393util.int16_to_buf(bArr6, i7, i9);
        int i10 = i7 + 2;
        C4393util.int16_to_buf(bArr6, i10, 9);
        int i11 = i10 + 2;
        C4393util.int16_to_buf(bArr6, i11, bArr4.length);
        int i12 = i11 + 2;
        System.arraycopy(bArr4, 0, bArr6, i12, bArr4.length);
        int length3 = i12 + bArr4.length;
        if (bArr5 != null && bArr5.length > 0) {
            C4393util.int16_to_buf(bArr6, length3, 12);
            int i13 = length3 + 2;
            C4393util.int16_to_buf(bArr6, i13, bArr5.length);
            int i14 = i13 + 2;
            System.arraycopy(bArr5, 0, bArr6, i14, bArr5.length);
            int length4 = i14 + bArr5.length;
        }
        return get_request(j, z, bArr6);
    }
}
