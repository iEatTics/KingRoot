package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.devicelock.DevlockBase;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.f */
/* loaded from: classes.dex */
public class C4312f extends DevlockBase {
    public C4312f() {
        this._msgType = DevlockBase.C4306a.f5114c;
    }

    /* renamed from: a */
    public byte[] m228a(long j, long j2, long j3, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        TLV_QuerySig tLV_QuerySig = rst.querySig;
        if (tLV_QuerySig.get_size() == 0) {
            tLV_QuerySig.set_data(new byte[0], 0);
        }
        byte[] m227a = new C4313g().m227a(j2, j3, bArr, bArr2, bArr3, bArr4, bArr5, bArr6);
        if (m227a == null || m227a.length == 0) {
            return new byte[0];
        }
        byte[] bArr8 = null;
        if (bArr7 != null && bArr7.length > 0) {
            bArr8 = new C4320n().m225a(bArr7);
        } else if (rst.sppKey != null && rst.sppKey.get_data_len() > 0) {
            bArr8 = rst.sppKey.get_buf();
        }
        if (bArr8 == null || bArr8.length == 0) {
            return new byte[0];
        }
        int i = tLV_QuerySig.get_size();
        int length = m227a.length;
        int length2 = bArr8.length;
        byte[] bArr9 = new byte[i + 2 + length + length2];
        C4393util.int16_to_buf(bArr9, 0, 3);
        System.arraycopy(tLV_QuerySig.get_buf(), 0, bArr9, 2, i);
        int i2 = i + 2;
        System.arraycopy(m227a, 0, bArr9, i2, length);
        int i3 = i2 + length;
        System.arraycopy(bArr8, 0, bArr9, i3, length2);
        int i4 = i3 + length2;
        return _get_request(j, j2, bArr9);
    }
}
