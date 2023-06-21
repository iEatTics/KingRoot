package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class cew {
    /* renamed from: b */
    public static byte[] m4683b(JceStruct jceStruct) {
        JceOutputStream jceOutputStream = new JceOutputStream();
        jceOutputStream.setServerEncoding("UTF-8");
        jceStruct.writeTo(jceOutputStream);
        return jceOutputStream.toByteArray();
    }

    /* renamed from: a */
    public static <T extends JceStruct> T m4686a(byte[] bArr, T t, boolean z) {
        JceStruct newInit;
        if (bArr == null || t == null) {
            return null;
        }
        if (z) {
            try {
                newInit = t.newInit();
            } catch (Exception e) {
                return null;
            }
        } else {
            newInit = t;
        }
        newInit.recyle();
        newInit.readFrom(m4684af(bArr));
        return (T) newInit;
    }

    public static C2038ba als() {
        return new C2038ba();
    }

    /* renamed from: ae */
    public static C2273bh m4685ae(byte[] bArr) {
        JceStruct m4686a = m4686a(bArr, new C2273bh(), false);
        if (m4686a == null) {
            return null;
        }
        return (C2273bh) m4686a;
    }

    /* renamed from: af */
    private static JceInputStream m4684af(byte[] bArr) {
        JceInputStream jceInputStream = new JceInputStream(bArr);
        jceInputStream.setServerEncoding("UTF-8");
        return jceInputStream;
    }
}
