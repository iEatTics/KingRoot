package oicq.wlogin_sdk.p027b;

import android.support.p004v4.view.InputDeviceCompat;
/* renamed from: oicq.wlogin_sdk.b.cm */
/* loaded from: classes.dex */
public class C4272cm extends C4232b {
    public C4272cm() {
        this.f5028h = InputDeviceCompat.SOURCE_GAMEPAD;
    }

    /* renamed from: a */
    public byte[] m263a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length = bArr.length + 0;
        m321b(this.f5028h);
        m317c(bArr2, bArr2.length);
        m313e();
        return m322b();
    }
}
