package com.kingroot.kinguser;

import com.kingroot.kinguser.aae;
import java.io.ByteArrayInputStream;
/* renamed from: com.kingroot.kinguser.zx */
/* loaded from: classes.dex */
public abstract class AbstractC3983zx {
    /* renamed from: pB */
    protected abstract String mo1233pB();

    /* renamed from: dF */
    public byte[] m1235dF(String str) {
        byte[] m2355cy = C3563rs.m2355cy(str);
        byte[] m13003G = aah.m13003G(mo1233pB().getBytes());
        aag m13006a = aae.m13006a(aae.EnumC0610b.SIMPLE);
        if (m2355cy == null) {
            m2355cy = new byte[0];
        }
        return m13006a.decrypt(m13003G, m2355cy);
    }

    /* renamed from: dG */
    public ByteArrayInputStream m1234dG(String str) {
        byte[] m2355cy = C3563rs.m2355cy(str);
        byte[] m13003G = aah.m13003G(mo1233pB().getBytes());
        aag m13006a = aae.m13006a(aae.EnumC0610b.SIMPLE);
        if (m2355cy == null) {
            m2355cy = new byte[0];
        }
        return new ByteArrayInputStream(m13006a.decrypt(m13003G, m2355cy));
    }

    /* renamed from: b */
    public void m1236b(String str, byte[] bArr) {
        C3563rs.m2362c(aae.m13006a(aae.EnumC0610b.SIMPLE).encrypt(aah.m13003G(mo1233pB().getBytes()), bArr), str);
    }
}
