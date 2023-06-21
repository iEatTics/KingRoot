package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.devicelock.DevlockBase;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.a */
/* loaded from: classes.dex */
public class C4307a extends DevlockBase {
    public C4307a() {
        this._msgType = DevlockBase.C4306a.f5112a;
    }

    /* renamed from: a */
    public byte[] m233a(long j, long j2, long j3, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        byte[] m227a = new C4313g().m227a(j2, j3, bArr, bArr2, bArr3, bArr4, bArr5, bArr6);
        if (m227a == null || m227a.length == 0) {
            return new byte[0];
        }
        byte[] bArr7 = new byte[m227a.length + 2];
        C4393util.int16_to_buf(bArr7, 0, 1);
        System.arraycopy(m227a, 0, bArr7, 2, m227a.length);
        return _get_request(j, j2, bArr7);
    }
}
