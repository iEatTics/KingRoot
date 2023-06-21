package oicq.wlogin_sdk.devicelock;
/* renamed from: oicq.wlogin_sdk.devicelock.l */
/* loaded from: classes.dex */
public class C4318l extends C4311e {

    /* renamed from: a */
    public int f5132a = 0;

    public C4318l() {
        this._type = 5;
    }

    /* renamed from: a */
    public byte[] m226a(long j) {
        fill_head();
        fill_body(new byte[4], 4);
        put_int32(j, this._head_len);
        return get_buf();
    }
}
