package com.tencent.feedback.proguard;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.tencent.feedback.proguard.G */
/* loaded from: classes.dex */
public final class C4105G implements InterfaceC4107I {

    /* renamed from: a */
    private String f4624a = null;

    @Override // com.tencent.feedback.proguard.InterfaceC4107I
    /* renamed from: a */
    public final byte[] mo762a(byte[] bArr) {
        if (this.f4624a == null || bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(((int) bArr[i]) + " ");
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f4624a.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(this.f4624a.getBytes()));
        byte[] doFinal = cipher.doFinal(bArr);
        StringBuffer stringBuffer2 = new StringBuffer();
        int length2 = doFinal.length;
        for (int i2 = 0; i2 < length2; i2++) {
            stringBuffer2.append(((int) doFinal[i2]) + " ");
        }
        return doFinal;
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4107I
    /* renamed from: b */
    public final byte[] mo761b(byte[] bArr) {
        if (this.f4624a == null || bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(((int) bArr[i]) + " ");
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f4624a.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(this.f4624a.getBytes()));
        byte[] doFinal = cipher.doFinal(bArr);
        StringBuffer stringBuffer2 = new StringBuffer();
        int length2 = doFinal.length;
        for (int i2 = 0; i2 < length2; i2++) {
            stringBuffer2.append(((int) doFinal[i2]) + " ");
        }
        return doFinal;
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4107I
    /* renamed from: a */
    public final void mo763a(String str) {
        if (str != null) {
            for (int length = str.length(); length < 16; length++) {
                str = str + "0";
            }
            this.f4624a = str.substring(0, 16);
        }
    }
}
