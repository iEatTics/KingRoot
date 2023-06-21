package tmsdk.common.tcc;

import android.content.Context;
import com.kingroot.kinguser.cgj;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class TccCryptor {
    private static cgj cen;

    @Deprecated
    public static native byte[] decrypt(byte[] bArr, byte[] bArr2);

    @Deprecated
    public static native byte[] encrypt(byte[] bArr, byte[] bArr2);

    static {
        try {
            TMSDKContext.m16a(0, TccCryptor.class);
        } catch (Throwable th) {
        }
        cen = null;
    }

    /* renamed from: a */
    public static void m2a(cgj cgjVar) {
        cen = cgjVar;
    }

    /* renamed from: f */
    public static byte[] m1f(byte[] bArr, byte[] bArr2) {
        return cen != null ? cen.encrypt(bArr, bArr2) : encrypt(bArr, bArr2);
    }

    /* renamed from: g */
    public static byte[] m0g(byte[] bArr, byte[] bArr2) {
        return cen != null ? cen.decrypt(bArr, bArr2) : decrypt(bArr, bArr2);
    }

    @Deprecated
    /* renamed from: a */
    public static byte[] m3a(Context context, byte[] bArr, byte[] bArr2) {
        return m1f(bArr, bArr2);
    }
}
