package com.kingroot.kinguser;

import java.io.ByteArrayInputStream;
import java.util.Properties;
/* renamed from: com.kingroot.kinguser.zq */
/* loaded from: classes.dex */
public final class C3971zq {

    /* renamed from: WR */
    private static final String f4101WR = new String(aab.m13014dJ("6B752E636F6E66")).intern();

    /* renamed from: WS */
    private static volatile C3973a f4102WS = null;

    private C3971zq() {
    }

    public static String get(String str) {
        if (f4102WS == null) {
            synchronized (C3971zq.class) {
                if (f4102WS == null) {
                    f4102WS = new C3973a();
                }
            }
        }
        return f4102WS.m1263dE(str);
    }

    /* renamed from: com.kingroot.kinguser.zq$a */
    /* loaded from: classes.dex */
    static final class C3973a {

        /* renamed from: WT */
        private Properties f4103WT;

        private C3973a() {
            this.f4103WT = new Properties();
            this.f4103WT = m1264dD(C3971zq.f4101WR);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: dE */
        public String m1263dE(String str) {
            String property = this.f4103WT.getProperty(str);
            return property != null ? property : "";
        }

        /* renamed from: dD */
        private static Properties m1264dD(String str) {
            Properties properties = new Properties();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(aab.m13014dJ(new String(C3563rs.m2356cx(str))));
                properties.load(byteArrayInputStream);
                byteArrayInputStream.close();
            } catch (Exception e) {
            }
            return properties;
        }
    }
}
