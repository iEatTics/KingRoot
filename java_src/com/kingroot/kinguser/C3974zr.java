package com.kingroot.kinguser;

import com.kingroot.kinguser.aae;
import java.io.ByteArrayInputStream;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.zr */
/* loaded from: classes.dex */
public final class C3974zr {

    /* renamed from: WU */
    private static AtomicReference<String> f4104WU = new AtomicReference<>(null);

    /* renamed from: pD */
    public static String m1262pD() {
        f4104WU.compareAndSet(null, m1261pE());
        return aab.m13016dH(f4104WU.get());
    }

    /* renamed from: pE */
    private static String m1261pE() {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        String str = null;
        try {
            byte[] m2357cw = C3563rs.m2357cw(C3971zq.get("a3"));
            Properties properties = new Properties();
            byteArrayInputStream = new ByteArrayInputStream(aae.m13006a(aae.EnumC0610b.XXTEA_OLD).decrypt(C3971zq.get("a2").getBytes(), m2357cw));
            try {
                properties.load(byteArrayInputStream);
                byteArrayInputStream.close();
                str = properties.getProperty(C3971zq.get("a3"));
                C3945za.m1340c(byteArrayInputStream);
            } catch (Exception e) {
                C3945za.m1340c(byteArrayInputStream);
                return str;
            } catch (Throwable th2) {
                th = th2;
                C3945za.m1340c(byteArrayInputStream);
                throw th;
            }
        } catch (Exception e2) {
            byteArrayInputStream = null;
        } catch (Throwable th3) {
            byteArrayInputStream = null;
            th = th3;
        }
        return str;
    }
}
