package com.tencent.feedback.proguard;

import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
/* renamed from: com.tencent.feedback.proguard.H */
/* loaded from: classes.dex */
public final class C4106H implements InterfaceC4107I {

    /* renamed from: a */
    private String f4625a = null;

    @Override // com.tencent.feedback.proguard.InterfaceC4107I
    /* renamed from: a */
    public final byte[] mo762a(byte[] bArr) {
        if (this.f4625a == null || bArr == null) {
            return null;
        }
        Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        cipher.init(2, SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(this.f4625a.getBytes("UTF-8"))), new IvParameterSpec(this.f4625a.getBytes("UTF-8")));
        return cipher.doFinal(bArr);
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4107I
    /* renamed from: b */
    public final byte[] mo761b(byte[] bArr) {
        if (this.f4625a == null || bArr == null) {
            return null;
        }
        Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        cipher.init(1, SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(this.f4625a.getBytes("UTF-8"))), new IvParameterSpec(this.f4625a.getBytes("UTF-8")));
        return cipher.doFinal(bArr);
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4107I
    /* renamed from: a */
    public final void mo763a(String str) {
        if (str != null) {
            this.f4625a = str;
        }
    }
}
