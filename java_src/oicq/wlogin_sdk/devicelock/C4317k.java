package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.k */
/* loaded from: classes.dex */
public class C4317k extends C4311e {

    /* renamed from: a */
    public byte[] f5127a = new byte[0];

    /* renamed from: b */
    public byte[] f5128b = new byte[0];

    /* renamed from: c */
    public int f5129c;

    /* renamed from: d */
    public int f5130d;

    /* renamed from: e */
    public int f5131e;

    public C4317k() {
        this._type = 4;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        int i = this._head_len;
        int buf_to_int16 = C4393util.buf_to_int16(this._buf, i);
        int i2 = i + 2;
        this.f5127a = new byte[buf_to_int16];
        System.arraycopy(this._buf, i2, this.f5127a, 0, buf_to_int16);
        int i3 = i2 + buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this._buf, i3);
        int i4 = i3 + 2;
        this.f5128b = new byte[buf_to_int162];
        System.arraycopy(this._buf, i4, this.f5128b, 0, buf_to_int162);
        int i5 = i4 + buf_to_int162;
        this.f5129c = C4393util.buf_to_int32(this._buf, i5);
        int i6 = i5 + 4;
        this.f5130d = C4393util.buf_to_int16(this._buf, i6);
        int i7 = i6 + 2;
        this.f5131e = C4393util.buf_to_int16(this._buf, i7);
        int i8 = i7 + 2;
    }
}
