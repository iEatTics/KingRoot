package oicq.wlogin_sdk.devicelock;
/* renamed from: oicq.wlogin_sdk.devicelock.n */
/* loaded from: classes.dex */
public class C4320n extends C4311e {
    public C4320n() {
        this._type = 7;
    }

    /* renamed from: a */
    public byte[] m225a(byte[] bArr) {
        if (bArr == null) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[bArr.length + 2];
        fill_head();
        fill_body(bArr2, bArr2.length);
        put_block(bArr, this._head_len);
        return get_buf();
    }
}
