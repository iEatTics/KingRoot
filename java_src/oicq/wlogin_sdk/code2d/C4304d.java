package oicq.wlogin_sdk.code2d;

import java.util.ArrayList;
import oicq.wlogin_sdk.request.oicq_request;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.code2d.d */
/* loaded from: classes.dex */
public class C4304d extends C4302b {
    public C4304d() {
        this._cmd = 18;
    }

    /* renamed from: a */
    public int m236a(byte[] bArr) {
        byte[] bArr2 = null;
        byte[] bArr3 = get_response(bArr, 0);
        if (bArr3 == null || bArr3.length < 8) {
            return C4393util.E_PK_LEN;
        }
        _status.f5104h = C4393util.buf_to_int32(bArr3, 2);
        _status.f5098b = C4393util.buf_to_int8(bArr3, 6);
        if (_status.f5098b != 0) {
            return _status.f5098b;
        }
        _status.f5097a = C4393util.buf_to_int64(bArr3, 7);
        _status.f5099c = C4393util.buf_to_int32(bArr3, 15);
        _status.f5101e = new ArrayList();
        int buf_to_int16 = C4393util.buf_to_int16(bArr3, 19);
        int i = 21;
        byte[] bArr4 = null;
        byte[] bArr5 = null;
        for (int i2 = 0; i2 < buf_to_int16; i2++) {
            int buf_to_int162 = C4393util.buf_to_int16(bArr3, i);
            int i3 = i + 2;
            int buf_to_int163 = C4393util.buf_to_int16(bArr3, i3);
            int i4 = i3 + 2;
            switch (buf_to_int162) {
                case 24:
                    bArr5 = new byte[buf_to_int163];
                    System.arraycopy(bArr3, i4, bArr5, 0, buf_to_int163);
                    break;
                case 25:
                    bArr2 = new byte[buf_to_int163];
                    System.arraycopy(bArr3, i4, bArr2, 0, buf_to_int163);
                    break;
                case 30:
                    bArr4 = new byte[buf_to_int163];
                    System.arraycopy(bArr3, i4, bArr4, 0, buf_to_int163);
                    break;
                default:
                    byte[] bArr6 = new byte[buf_to_int163 + 4];
                    System.arraycopy(bArr3, i4 - 4, bArr6, 0, bArr6.length);
                    _status.f5101e.add(bArr6);
                    break;
            }
            i = i4 + buf_to_int163;
        }
        if (bArr5 == null || bArr4 == null || bArr2 == null) {
            return C4393util.E_PK_LEN;
        }
        C4303c.f5094q = oicq_request.m120b(bArr5, bArr4);
        C4303c.f5095r = bArr2;
        return _status.f5098b;
    }

    /* renamed from: a */
    public byte[] m237a(long j, long j2, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + 8 + 8 + 1 + 2 + bArr2.length + 2];
        C4393util.int64_to_buf32(bArr3, 2, j2);
        int fill_staff = fill_staff(bArr3, bArr, 6);
        C4393util.int64_to_buf(bArr3, fill_staff, j);
        int i = fill_staff + 8;
        C4393util.int8_to_buf(bArr3, i, 8);
        int i2 = i + 1;
        return get_request(j, true, bArr3);
    }
}
