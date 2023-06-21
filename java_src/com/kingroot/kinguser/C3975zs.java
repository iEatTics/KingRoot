package com.kingroot.kinguser;

import com.kingroot.kinguser.aae;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Properties;
/* renamed from: com.kingroot.kinguser.zs */
/* loaded from: classes.dex */
public final class C3975zs {
    /* renamed from: J */
    public static Properties m1260J(String str, String str2) {
        ByteArrayInputStream byteArrayInputStream;
        Properties properties = new Properties();
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(aae.m13006a(aae.EnumC0610b.SIMPLE).decrypt(aah.m13003G(str2.getBytes()), C3563rs.m2355cy(str)));
            try {
                properties.load(byteArrayInputStream);
                C3945za.m1340c(byteArrayInputStream);
            } catch (Exception e) {
                C3945za.m1340c(byteArrayInputStream);
                return properties;
            } catch (Throwable th) {
                byteArrayInputStream2 = byteArrayInputStream;
                th = th;
                C3945za.m1340c(byteArrayInputStream2);
                throw th;
            }
        } catch (Exception e2) {
            byteArrayInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return properties;
    }

    /* renamed from: K */
    public static Properties m1259K(String str, String str2) {
        ByteArrayInputStream byteArrayInputStream;
        Properties properties = new Properties();
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(aae.m13006a(aae.EnumC0610b.SIMPLE).decrypt(aah.m13003G(str2.getBytes()), C3563rs.m2358cv(str)));
            try {
                properties.load(byteArrayInputStream);
                C3945za.m1340c(byteArrayInputStream);
            } catch (Exception e) {
                C3945za.m1340c(byteArrayInputStream);
                return properties;
            } catch (Throwable th) {
                byteArrayInputStream2 = byteArrayInputStream;
                th = th;
                C3945za.m1340c(byteArrayInputStream2);
                throw th;
            }
        } catch (Exception e2) {
            byteArrayInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return properties;
    }

    /* renamed from: a */
    public static void m1258a(String str, String str2, Properties properties) {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                properties.store(byteArrayOutputStream, "");
                C3563rs.m2362c(aae.m13006a(aae.EnumC0610b.SIMPLE).encrypt(aah.m13003G(str2.getBytes()), byteArrayOutputStream.toByteArray()), str);
                C3945za.m1340c(byteArrayOutputStream);
            } catch (Exception e) {
                C3945za.m1340c(byteArrayOutputStream);
            } catch (Throwable th) {
                byteArrayOutputStream2 = byteArrayOutputStream;
                th = th;
                C3945za.m1340c(byteArrayOutputStream2);
                throw th;
            }
        } catch (Exception e2) {
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
