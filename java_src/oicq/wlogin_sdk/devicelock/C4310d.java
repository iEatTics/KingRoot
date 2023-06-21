package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.devicelock.DevlockBase;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.d */
/* loaded from: classes.dex */
public class C4310d extends DevlockBase {
    public C4310d() {
        this._msgType = DevlockBase.C4306a.f5113b;
    }

    /* renamed from: a */
    public byte[] m229a(long j, long j2, long j3) {
        TLV_QuerySig tLV_QuerySig = rst.querySig;
        C4318l c4318l = new C4318l();
        c4318l.m226a(j3);
        int i = tLV_QuerySig.get_size();
        int i2 = c4318l.get_size();
        if (i == 0 || i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i + 2 + i2];
        C4393util.int16_to_buf(bArr, 0, 2);
        System.arraycopy(tLV_QuerySig.get_buf(), 0, bArr, 2, i);
        System.arraycopy(c4318l.get_buf(), 0, bArr, i + 2, i2);
        return _get_request(j, j2, bArr);
    }
}
