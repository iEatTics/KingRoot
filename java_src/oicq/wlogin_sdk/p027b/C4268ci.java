package oicq.wlogin_sdk.p027b;

import android.support.p004v4.view.InputDeviceCompat;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ci */
/* loaded from: classes.dex */
public class C4268ci extends C4232b {
    public C4268ci() {
        this.f5028h = InputDeviceCompat.SOURCE_DPAD;
    }

    /* renamed from: a */
    public byte[] m266a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr4 == null) {
            bArr4 = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        int length = bArr.length + 2 + 2 + bArr2.length + 2 + bArr3.length + 2 + bArr4.length;
        byte[] bArr5 = new byte[length];
        C4393util.int16_to_buf(bArr5, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr5, 2, bArr.length);
        int length2 = bArr.length + 2;
        C4393util.int16_to_buf(bArr5, length2, bArr2.length);
        int i = length2 + 2;
        System.arraycopy(bArr2, 0, bArr5, i, bArr2.length);
        int length3 = i + bArr2.length;
        C4393util.int16_to_buf(bArr5, length3, bArr3.length);
        int i2 = length3 + 2;
        System.arraycopy(bArr3, 0, bArr5, i2, bArr3.length);
        int length4 = i2 + bArr3.length;
        C4393util.int16_to_buf(bArr5, length4, bArr4.length);
        int i3 = length4 + 2;
        System.arraycopy(bArr4, 0, bArr5, i3, bArr4.length);
        int length5 = i3 + bArr4.length;
        m321b(this.f5028h);
        m317c(bArr5, length);
        m313e();
        return m322b();
    }
}
