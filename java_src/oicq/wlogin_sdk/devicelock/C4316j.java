package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.j */
/* loaded from: classes.dex */
public class C4316j extends C4311e {

    /* renamed from: a */
    public byte[] f5123a = new byte[0];

    /* renamed from: b */
    public byte[] f5124b = new byte[0];

    /* renamed from: c */
    public int f5125c;

    /* renamed from: d */
    public int f5126d;

    public C4316j() {
        this._type = 14;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        int i = this._head_len;
        this.f5125c = C4393util.buf_to_int16(this._buf, i);
        int i2 = i + 2;
        int buf_to_int16 = C4393util.buf_to_int16(this._buf, i2);
        int i3 = i2 + 2;
        this.f5123a = new byte[buf_to_int16];
        System.arraycopy(this._buf, i3, this.f5123a, 0, buf_to_int16);
        int i4 = i3 + buf_to_int16;
        this.f5126d = C4393util.buf_to_int16(this._buf, i4);
        int i5 = i4 + 2;
        int buf_to_int162 = C4393util.buf_to_int16(this._buf, i5);
        int i6 = i5 + 2;
        this.f5124b = new byte[buf_to_int162];
        System.arraycopy(this._buf, i6, this.f5124b, 0, buf_to_int162);
        int i7 = i6 + buf_to_int162;
    }
}
