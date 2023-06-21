package com.kingroot.kinguser;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Properties;
/* renamed from: com.kingroot.kinguser.nh */
/* loaded from: classes.dex */
public abstract class AbstractC3346nh {
    /* renamed from: s */
    public static Properties m2881s(String str, String str2) {
        Properties properties = new Properties();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(C3221jo.m3380b(C3221jo.m3379c(str2.getBytes()), C3353nk.m2859bM(str)));
            properties.load(byteArrayInputStream);
            byteArrayInputStream.close();
        } catch (Exception e) {
        }
        return properties;
    }

    /* renamed from: t */
    public static Properties m2880t(String str, String str2) {
        Properties properties = new Properties();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(C3221jo.m3380b(C3221jo.m3379c(str2.getBytes()), C3353nk.m2860bL(str)));
            properties.load(byteArrayInputStream);
            byteArrayInputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return properties;
    }

    /* renamed from: a */
    public void m2882a(String str, Properties properties, String str2) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            properties.store(byteArrayOutputStream, "");
            byte[] m3381a = C3221jo.m3381a(C3221jo.m3379c(str2.getBytes()), byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            C3353nk.m2861b(m3381a, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
