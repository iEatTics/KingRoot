package oicq.wlogin_sdk.devicelock;
/* renamed from: oicq.wlogin_sdk.devicelock.g */
/* loaded from: classes.dex */
public class C4313g extends C4311e {
    public C4313g() {
        this._type = 2;
    }

    /* renamed from: a */
    public byte[] m227a(long j, long j2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        if (bArr == null || bArr2 == null || bArr3 == null || bArr4 == null || bArr5 == null || bArr6 == null) {
            return new byte[0];
        }
        byte[] bArr7 = new byte[bArr.length + 10 + 2 + bArr2.length + 2 + bArr3.length + 2 + bArr4.length + 2 + bArr5.length + 2 + bArr6.length];
        int i = this._head_len;
        fill_head();
        fill_body(bArr7, bArr7.length);
        put_block(bArr6, put_block(bArr5, put_block(bArr4, put_block(bArr3, put_block(bArr2, put_block(bArr, put_int32((int) j2, put_int32((int) j, i))))))));
        return get_buf();
    }
}
