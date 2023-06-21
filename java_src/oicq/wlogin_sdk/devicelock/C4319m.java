package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.m */
/* loaded from: classes.dex */
public class C4319m extends C4311e {

    /* renamed from: a */
    public int f5133a = 0;

    /* renamed from: b */
    public int f5134b = 0;

    public C4319m() {
        this._type = 6;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        int i = this._head_len;
        this.f5133a = C4393util.buf_to_int16(this._buf, i);
        this.f5134b = C4393util.buf_to_int16(this._buf, i + 2);
    }
}
