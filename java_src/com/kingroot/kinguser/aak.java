package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class aak implements aaf, aag {

    /* renamed from: Xz */
    private static volatile aak f1237Xz = null;

    private aak() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: pM */
    public static aak m12987pM() {
        if (f1237Xz == null) {
            synchronized (aak.class) {
                if (f1237Xz == null) {
                    f1237Xz = new aak();
                }
            }
        }
        return f1237Xz;
    }

    @Override // com.kingroot.kinguser.aaf
    /* renamed from: C */
    public byte[] mo12989C(byte[] bArr) {
        try {
            return aaj.m12991n(bArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.aaf
    /* renamed from: D */
    public byte[] mo12988D(byte[] bArr) {
        try {
            return aaj.m12992m(bArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.aag
    public byte[] encrypt(byte[] bArr, byte[] bArr2) {
        try {
            return aaj.m12994c(bArr2, bArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.aag
    /* renamed from: N */
    public String mo12985N(String str, String str2) {
        try {
            return aab.m13021B(aaj.m12994c(str2.getBytes(), str.getBytes()));
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.aag
    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        try {
            return aaj.m12993d(bArr2, bArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.aag
    /* renamed from: O */
    public String mo12984O(String str, String str2) {
        try {
            return new String(aaj.m12993d(aab.m13014dJ(str2), str.getBytes()));
        } catch (Throwable th) {
            return null;
        }
    }
}
