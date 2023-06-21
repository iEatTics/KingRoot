package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class DevlockBase {
    private static int _seq = 0;
    public static DevlockRst rst = new DevlockRst();
    private int _head_len = 110;
    private int _version = 32;
    protected int _msgType = 0;
    public int Role = 505;

    /* renamed from: oicq.wlogin_sdk.devicelock.DevlockBase$a */
    /* loaded from: classes.dex */
    public static final class C4306a {

        /* renamed from: a */
        public static int f5112a = 5;

        /* renamed from: b */
        public static int f5113b = 7;

        /* renamed from: c */
        public static int f5114c = 8;
    }

    public byte[] _get_request(long j, long j2, byte[] bArr) {
        byte[] bArr2 = new byte[this._head_len + 1 + bArr.length + 1];
        C4393util.int8_to_buf(bArr2, 0, 2);
        C4393util.int16_to_buf(bArr2, 1, bArr2.length);
        C4393util.int64_to_buf32(bArr2, 3, j);
        C4393util.int16_to_buf(bArr2, 9, this._msgType);
        C4393util.int64_to_buf32(bArr2, 11, j2);
        int i = _seq;
        _seq = i + 1;
        C4393util.int32_to_buf(bArr2, 27, i);
        C4393util.int16_to_buf(bArr2, 39, C4379u.f5289u);
        C4393util.int16_to_buf(bArr2, 43, this._version);
        C4393util.int8_to_buf(bArr2, 45, 0);
        System.arraycopy(bArr, 0, bArr2, 111, bArr.length);
        int length = bArr.length + 111;
        C4393util.int8_to_buf(bArr2, length, 3);
        int i2 = length + 1;
        return bArr2;
    }

    public int get_msgType() {
        return this._msgType;
    }

    public int parse_rsp(byte[] bArr) {
        if (bArr == null || bArr.length < this._head_len + 2) {
            return C4393util.E_PK_LEN;
        }
        byte[] bArr2 = new byte[(bArr.length - this._head_len) - 2];
        System.arraycopy(bArr, this._head_len + 1, bArr2, 0, bArr2.length);
        if (2 > bArr2.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int16 = C4393util.buf_to_int16(bArr2, 0);
        int i = 2;
        int i2 = 0;
        for (int i3 = 0; i3 < buf_to_int16; i3++) {
            byte[] pickup_TLV = pickup_TLV(bArr2, i);
            if (pickup_TLV == null) {
                return C4393util.E_PK_LEN;
            }
            i += pickup_TLV.length;
            switch (C4393util.buf_to_int16(pickup_TLV, 0)) {
                case 1:
                    i2 = rst.commRsp.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 2:
                case 5:
                case 7:
                case 9:
                case 10:
                case 12:
                case 13:
                case 15:
                case 16:
                case 17:
                default:
                    i2 = 0;
                    break;
                case 3:
                    i2 = rst.devSetupInfo.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 4:
                    i2 = rst.mbMobileInfo.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 6:
                    i2 = rst.smsInfo.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 8:
                    i2 = rst.querySig.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 11:
                    i2 = rst.sppKey.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 14:
                    i2 = rst.mbGuideInfo.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 18:
                    i2 = rst.devGuideInfo.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
                case 19:
                    i2 = rst.transferInfo.set_buf(pickup_TLV, pickup_TLV.length);
                    break;
            }
            if (i2 != 0) {
                return i2;
            }
        }
        return i2 == 0 ? rst.commRsp.RetCode : i2;
    }

    public byte[] pickup_TLV(byte[] bArr, int i) {
        if (bArr == null || bArr.length < i + 4) {
            return null;
        }
        int buf_to_int16 = C4393util.buf_to_int16(bArr, i + 2) + 4;
        if (bArr.length >= i + buf_to_int16) {
            byte[] bArr2 = new byte[buf_to_int16];
            System.arraycopy(bArr, i, bArr2, 0, buf_to_int16);
            return bArr2;
        }
        return null;
    }
}
