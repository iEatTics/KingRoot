package com.kingroot.kinguser;

import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
class cal implements cam {
    private static cal bWw = null;

    private cal() {
    }

    public static cal ako() {
        if (bWw == null) {
            bWw = new cal();
        }
        return bWw;
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: a */
    public byte[] mo5055a(byte[] bArr) {
        return cak.m5058i(bArr, 0);
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: al */
    public String mo5054al(String str) {
        return cak.m5059h(str.getBytes(), 0);
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: b */
    public byte[] mo5052b(byte[] bArr) {
        return cak.m5062a(bArr, 0);
    }

    @Override // com.kingroot.kinguser.cam
    /* renamed from: b */
    public String mo5053b(String str) {
        try {
            return new String(cak.m5063a(str, 0), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }
}
