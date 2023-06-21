package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.b.cl */
/* loaded from: classes.dex */
public class C4271cl extends C4232b {

    /* renamed from: a */
    int f5067a = 1;

    /* renamed from: i */
    int f5068i = 0;

    public C4271cl() {
        this.f5028h = 1024;
    }

    /* renamed from: a */
    public byte[] m264a(byte[] bArr, long j, byte[] bArr2, byte[] bArr3, long j2, long j3, byte[] bArr4) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        if (bArr2 == null) {
            bArr2 = new byte[16];
        }
        if (bArr3 == null) {
            bArr3 = new byte[16];
        }
        if (bArr4 == null) {
            bArr4 = new byte[8];
        }
        this.f5068i = bArr2.length + 10 + bArr3.length + 4 + 4 + 4 + bArr4.length;
        byte[] bArr5 = new byte[this.f5068i];
        C4393util.int16_to_buf(bArr5, 0, this.f5067a);
        C4393util.int64_to_buf(bArr5, 2, j);
        System.arraycopy(bArr2, 0, bArr5, 10, bArr2.length);
        int length = bArr2.length + 10;
        System.arraycopy(bArr3, 0, bArr5, length, bArr3.length);
        int length2 = length + bArr3.length;
        C4393util.int32_to_buf(bArr5, length2, (int) j2);
        int i = length2 + 4;
        C4393util.int32_to_buf(bArr5, i, (int) j3);
        int i2 = i + 4;
        C4393util.int64_to_buf32(bArr5, i2, C4393util.get_server_cur_time());
        int i3 = i2 + 4;
        System.arraycopy(bArr4, 0, bArr5, i3, bArr4.length);
        int length3 = i3 + bArr4.length;
        byte[] encrypt = cryptor.encrypt(bArr5, 0, bArr5.length, bArr);
        this.f5068i = encrypt.length;
        m321b(this.f5028h);
        m317c(encrypt, encrypt.length);
        m313e();
        return m322b();
    }
}
