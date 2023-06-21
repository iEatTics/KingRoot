package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class TLV_CommRsp extends C4311e {
    public int ErrInfoType;
    public int RetCode = -1;
    public int Reason = 0;
    public byte[] ErrTitle = new byte[0];
    public byte[] ErrMsg = new byte[0];
    public byte[] ErrInfo = new byte[0];

    public TLV_CommRsp() {
        this._type = 1;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        int i = this._head_len;
        this.RetCode = C4393util.buf_to_int32(this._buf, i);
        int i2 = i + 4;
        this.Reason = C4393util.buf_to_int32(this._buf, i2);
        int i3 = i2 + 4;
        int buf_to_int16 = C4393util.buf_to_int16(this._buf, i3);
        int i4 = i3 + 2;
        this.ErrTitle = new byte[buf_to_int16];
        System.arraycopy(this._buf, i4, this.ErrTitle, 0, buf_to_int16);
        int i5 = i4 + buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this._buf, i5);
        int i6 = i5 + 2;
        this.ErrMsg = new byte[buf_to_int162];
        System.arraycopy(this._buf, i6, this.ErrMsg, 0, buf_to_int162);
        int i7 = i6 + buf_to_int162;
        this.ErrInfoType = C4393util.buf_to_int16(this._buf, i7);
        int i8 = i7 + 2;
        int buf_to_int163 = C4393util.buf_to_int16(this._buf, i8);
        int i9 = i8 + 2;
        this.ErrInfo = new byte[buf_to_int163];
        System.arraycopy(this._buf, i9, this.ErrInfo, 0, buf_to_int163);
        int i10 = i9 + buf_to_int163;
    }
}
