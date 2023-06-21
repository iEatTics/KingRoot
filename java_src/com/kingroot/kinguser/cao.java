package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class cao implements cam {
    private static volatile cao bWy = null;

    private cao() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cao akq() {
        if (bWy == null) {
            synchronized (cao.class) {
                if (bWy == null) {
                    bWy = new cao();
                }
            }
        }
        return bWy;
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: a */
    public byte[] mo5055a(byte[] bArr) {
        try {
            return ccc.m4968b(bArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: al */
    public String mo5054al(String str) {
        try {
            return C3142gy.m3643a(ccc.m4968b(str.getBytes()));
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: b */
    public byte[] mo5052b(byte[] bArr) {
        try {
            return ccc.m4966c(bArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: b */
    public String mo5053b(String str) {
        try {
            return new String(ccc.m4966c(C3142gy.m3644a(str)));
        } catch (Throwable th) {
            return null;
        }
    }
}
