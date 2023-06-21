package oicq.wlogin_sdk.p026a;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4205a;
import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.a.b */
/* loaded from: classes.dex */
public class C4196b extends C4197c {
    public C4196b() {
        this.f4966b = 17;
    }

    /* renamed from: a */
    public byte[] m386a(long j, int i, byte b, byte[] bArr, byte[] bArr2, byte b2, byte[] bArr3, byte[] bArr4, int i2, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8, byte[] bArr9, byte[] bArr10) {
        byte[] a;
        if (bArr10 == null || bArr10.length == 0) {
            C4393util.LOGI("token is null", "");
            return null;
        }
        int[] iArr = {2, 3, 6, 10, 13, 14, 18, 19, 20, 23, 24, 32};
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < length) {
            byte[] bArr11 = new byte[0];
            switch (iArr[i5]) {
                case 2:
                    C4205a c4205a = new C4205a(2);
                    c4205a.m366a(i);
                    bArr11 = c4205a.m368a();
                    break;
                case 3:
                    C4205a c4205a2 = new C4205a(3);
                    c4205a2.m367a(b2);
                    bArr11 = c4205a2.m368a();
                    break;
                case 6:
                    C4205a c4205a3 = new C4205a(6);
                    c4205a3.m365a(bArr3, bArr3.length);
                    bArr11 = c4205a3.m368a();
                    break;
                case 10:
                    C4205a c4205a4 = new C4205a(10);
                    c4205a4.m365a(bArr4, bArr4.length);
                    bArr11 = c4205a4.m368a();
                    break;
                case 13:
                    C4205a c4205a5 = new C4205a(13);
                    c4205a5.m366a(i2);
                    bArr11 = c4205a5.m368a();
                    break;
                case 14:
                    C4205a c4205a6 = new C4205a(14);
                    c4205a6.m365a(bArr5, bArr5.length);
                    bArr11 = c4205a6.m368a();
                    break;
                case 18:
                    C4205a c4205a7 = new C4205a(18);
                    c4205a7.m365a(bArr6, bArr6.length);
                    bArr11 = c4205a7.m368a();
                    break;
                case 19:
                    C4205a c4205a8 = new C4205a(19);
                    c4205a8.m365a(bArr7, bArr7.length);
                    bArr11 = c4205a8.m368a();
                    break;
                case 20:
                    C4205a c4205a9 = new C4205a(20);
                    c4205a9.m365a(bArr8, bArr8.length);
                    bArr11 = c4205a9.m368a();
                    break;
                case 23:
                    C4205a c4205a10 = new C4205a(23);
                    c4205a10.m367a((byte) 5);
                    bArr11 = c4205a10.m368a();
                    break;
                case 24:
                    C4205a c4205a11 = new C4205a(24);
                    c4205a11.m365a(C4379u.f5254J, C4379u.f5254J.length);
                    bArr11 = c4205a11.m368a();
                    break;
                case 32:
                    C4205a c4205a12 = new C4205a(32);
                    c4205a12.m365a(bArr9, bArr9.length);
                    bArr11 = c4205a12.m368a();
                    break;
            }
            if (bArr11.length > 2) {
                i3++;
                i4 += bArr11.length;
                arrayList.add(bArr11);
            }
            i5++;
            i3 = i3;
            i4 = i4;
        }
        byte[] bArr12 = new byte[i4 + 1];
        C4393util.int8_to_buf(bArr12, 0, i3);
        int i6 = 1;
        for (int i7 = 0; i7 < i3; i7++) {
            byte[] bArr13 = (byte[]) arrayList.get(i7);
            System.arraycopy(bArr13, 0, bArr12, i6, bArr13.length);
            i6 += bArr13.length;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeByte(bArr10.length);
            dataOutputStream.write(bArr10);
            dataOutputStream.writeByte(1);
            dataOutputStream.writeLong(j);
            dataOutputStream.writeInt(i);
            dataOutputStream.writeByte(b);
            dataOutputStream.writeShort(bArr.length);
            dataOutputStream.write(bArr);
            byte[] encrypt = cryptor.encrypt(bArr12, 0, bArr12.length, bArr2);
            if (encrypt == null) {
                C4393util.LOGI("encrypt failed", "");
                a = null;
            } else {
                dataOutputStream.writeShort(encrypt.length);
                dataOutputStream.write(encrypt);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                dataOutputStream.close();
                byteArrayOutputStream.close();
                a = m384a(byteArray);
            }
            return a;
        } catch (Exception e) {
            C4393util.LOGI("getRequest failed " + e.getMessage(), "" + j);
            return null;
        }
    }
}
