package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.oc */
/* loaded from: classes.dex */
public class C3373oc implements cgj {
    @Override // com.kingroot.kinguser.cgj
    public byte[] encrypt(byte[] bArr, byte[] bArr2) {
        try {
            return ccc.m4969a(bArr, bArr2);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cgj
    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        try {
            return ccc.m4967b(bArr, bArr2);
        } catch (Throwable th) {
            return null;
        }
    }
}
