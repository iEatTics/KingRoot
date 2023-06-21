package com.kingroot.kinguser;

import com.kingroot.kinguser.blt;
import java.io.ByteArrayInputStream;
import java.util.Properties;
/* loaded from: classes.dex */
public final class bmr {
    private static final String bCq = new String(bmu.m6308mp("6B752E636F6E66")).intern();
    private static volatile C25151 bCr = null;

    private bmr() {
    }

    public static String get(String str) {
        if (bCr == null) {
            synchronized (bmr.class) {
                if (bCr == null) {
                    bCr = new C25151((byte) 0);
                }
            }
        }
        return C25151.m6353a(bCr, str);
    }

    /* renamed from: com.kingroot.kinguser.bmr$1 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C25151 {
        private Properties bCs;

        /* synthetic */ C25151(byte b) {
            this();
        }

        /* renamed from: a */
        static /* synthetic */ String m6353a(C25151 c25151, String str) {
            String property = c25151.bCs.getProperty(str);
            return property != null ? property : "";
        }

        private C25151() {
            this.bCs = new Properties();
            this.bCs = m6352mk(bmr.bCq);
        }

        /* renamed from: mk */
        private static Properties m6352mk(String str) {
            Properties properties = new Properties();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bmu.m6308mp(new String(blt.C2506a.m6455H(str, true))));
                properties.load(byteArrayInputStream);
                byteArrayInputStream.close();
            } catch (Exception e) {
            }
            return properties;
        }
    }
}
