package oicq.wlogin_sdk.code2d;

import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.code2d.b */
/* loaded from: classes.dex */
public class C4302b {
    public static int _seq = 0;
    public static int _version = 50;
    public static C4303c _status = new C4303c();
    public int _role = 114;
    public int _cmd = 0;
    public int _sub_cmd = 0;
    public int _head_len = 43;

    /* JADX INFO: Access modifiers changed from: protected */
    public int fill_staff(byte[] bArr, byte[] bArr2, int i) {
        C4393util.int16_to_buf(bArr, i, bArr2.length);
        int i2 = i + 2;
        System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
        return i2 + bArr2.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getAppInfo(long j, long j2) {
        byte[] bArr = new byte[28 + C4379u.f5249E.length + 2 + 2 + C4379u.f5251G.length + 2 + C4379u.f5252H.length];
        C4393util.int64_to_buf32(bArr, 0, 5L);
        C4393util.int64_to_buf32(bArr, 4, j);
        C4393util.int64_to_buf32(bArr, 8, j2);
        System.arraycopy(C4379u.f5245A, 0, bArr, 12, C4379u.f5245A.length);
        fill_staff(bArr, C4379u.f5252H, fill_staff(bArr, C4379u.f5251G, fill_staff(bArr, C4379u.f5249E, C4379u.f5245A.length + 12)));
        return bArr;
    }

    public int get_cmd() {
        return this._cmd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] get_request(long j, boolean z, byte[] bArr) {
        byte[] bArr2 = new byte[this._head_len + bArr.length + 1];
        C4393util.int8_to_buf(bArr2, 0, 2);
        C4393util.int16_to_buf(bArr2, 1, bArr2.length);
        C4393util.int16_to_buf(bArr2, 3, this._cmd);
        C4393util.int8_to_buf(bArr2, 26, 3);
        if (z) {
            C4393util.int16_to_buf(bArr2, 27, 0);
        } else {
            C4393util.int16_to_buf(bArr2, 27, 1);
        }
        C4393util.int16_to_buf(bArr2, 29, _version);
        int i = _seq;
        _seq = i + 1;
        C4393util.int32_to_buf(bArr2, 31, i);
        C4393util.int64_to_buf(bArr2, 35, j);
        System.arraycopy(bArr, 0, bArr2, 43, bArr.length);
        int length = bArr.length + 43;
        C4393util.int8_to_buf(bArr2, length, 3);
        int i2 = length + 1;
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] get_response(byte[] bArr, int i) {
        if (bArr.length <= this._head_len) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length - this._head_len];
        System.arraycopy(bArr, this._head_len, bArr2, 0, bArr2.length);
        return bArr2;
    }
}
