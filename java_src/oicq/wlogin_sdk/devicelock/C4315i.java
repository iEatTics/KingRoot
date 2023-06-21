package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.i */
/* loaded from: classes.dex */
public class C4315i extends C4311e {

    /* renamed from: a */
    public int f5116a = 0;

    /* renamed from: b */
    public int f5117b = 0;

    /* renamed from: c */
    public int f5118c = 0;

    /* renamed from: d */
    public byte[] f5119d = new byte[0];

    /* renamed from: e */
    public byte[] f5120e = new byte[0];

    /* renamed from: f */
    public byte[] f5121f = new byte[0];

    /* renamed from: g */
    public byte[] f5122g = new byte[0];

    public C4315i() {
        this._type = 3;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        int i = this._head_len;
        this.f5116a = C4393util.buf_to_int32(this._buf, i);
        int i2 = i + 4;
        this.f5117b = C4393util.buf_to_int8(this._buf, i2);
        int i3 = i2 + 1;
        int buf_to_int16 = C4393util.buf_to_int16(this._buf, i3);
        int i4 = i3 + 2;
        this.f5119d = new byte[buf_to_int16];
        System.arraycopy(this._buf, i4, this.f5119d, 0, buf_to_int16);
        int i5 = i4 + buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this._buf, i5);
        int i6 = i5 + 2;
        this.f5120e = new byte[buf_to_int162];
        System.arraycopy(this._buf, i6, this.f5120e, 0, buf_to_int162);
        int i7 = i6 + buf_to_int162;
        int buf_to_int163 = C4393util.buf_to_int16(this._buf, i7);
        int i8 = i7 + 2;
        this.f5121f = new byte[buf_to_int163];
        System.arraycopy(this._buf, i8, this.f5121f, 0, buf_to_int163);
        int i9 = i8 + buf_to_int163;
        this.f5118c = C4393util.buf_to_int16(this._buf, i9);
        int i10 = i9 + 2;
        int buf_to_int164 = C4393util.buf_to_int16(this._buf, i10);
        int i11 = i10 + 2;
        this.f5122g = new byte[buf_to_int164];
        System.arraycopy(this._buf, i11, this.f5122g, 0, buf_to_int164);
        int i12 = i11 + buf_to_int164;
    }
}
