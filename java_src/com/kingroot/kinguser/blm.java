package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.kinguser.blt;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Properties;
/* loaded from: classes.dex */
public final class blm {
    private static String bzU = "krsdk-b";
    private static Context bzV;
    private static String bzW;
    private static String bzX;
    private static Properties bzY;

    /* renamed from: c */
    public static void m6484c(Context context) {
        bzV = context;
        bzU += bmu.m6351D(context) + "-stock-conf";
        bzW = bzV.getFilesDir() + File.separator + bzU;
        if (bmu.aga()) {
            bzX = Environment.getExternalStorageDirectory() + File.separator + bzU;
        }
        if (new File(bzW).exists()) {
            bzY = m6476me(bzW);
            if (bzX != null && !new File(bzX).exists()) {
                m6485b(bzX, bzY);
            }
        } else if (bzX != null && new File(bzX).exists()) {
            bzY = m6476me(bzX);
            m6485b(bzW, bzY);
        }
        if (bzY == null) {
            bzY = new Properties();
        }
    }

    /* renamed from: f */
    public static String m6481f() {
        String property = getProperty("s.i");
        if (TextUtils.isEmpty(property)) {
            String m6375bD = bmn.m6375bD(bzV);
            if (m6375bD == null) {
                return "";
            }
            if (m6375bD != "00000000000001") {
                setProperty("s.i", m6375bD);
                return m6375bD;
            }
            return m6375bD;
        }
        return property;
    }

    /* renamed from: g */
    public static String m6480g() {
        return bmu.m6309mo(getProperty("w.g"));
    }

    /* renamed from: b */
    public static void m6486b(String str) {
        setProperty("w.g", bmu.m6309mo(str));
    }

    /* renamed from: h */
    public static String m6479h() {
        return bmu.m6309mo(getProperty("w.g.n"));
    }

    /* renamed from: c */
    public static void m6483c(String str) {
        setProperty("w.g.n", bmu.m6309mo(str));
    }

    /* renamed from: i */
    public static String m6478i() {
        return bmu.m6309mo(getProperty("w.b.n"));
    }

    /* renamed from: d */
    public static void m6482d(String str) {
        setProperty("w.b.n", bmu.m6309mo(str));
    }

    /* renamed from: me */
    private static Properties m6476me(String str) {
        ByteArrayInputStream byteArrayInputStream;
        Properties properties = new Properties();
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byte[] m6451mg = blt.C2506a.m6451mg(str);
            byte[] m6304U = bmv.m6304U(m6477j().getBytes());
            new bmv();
            byteArrayInputStream = new ByteArrayInputStream(bmv.m6302b(m6304U, m6451mg));
            try {
                try {
                    properties.load(byteArrayInputStream);
                    bmu.m6336a(byteArrayInputStream);
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    bmu.m6336a(byteArrayInputStream);
                    return properties;
                }
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream2 = byteArrayInputStream;
                bmu.m6336a(byteArrayInputStream2);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            byteArrayInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            bmu.m6336a(byteArrayInputStream2);
            throw th;
        }
        return properties;
    }

    /* renamed from: b */
    private static void m6485b(String str, Properties properties) {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                properties.store(byteArrayOutputStream, "");
                byte[] m6304U = bmv.m6304U(m6477j().getBytes());
                new bmv();
                byte[] m6303a = bmv.m6303a(m6304U, byteArrayOutputStream.toByteArray());
                byteArrayOutputStream.close();
                bmu.m6329b(m6303a, str);
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                } finally {
                    bmu.m6336a(byteArrayOutputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    private static synchronized String getProperty(String str) {
        String property;
        synchronized (blm.class) {
            property = bzY.getProperty(str);
            if (property == null) {
                Log.i("Ku", "Str:" + str + property);
            }
            if (property == null) {
                property = "";
            }
        }
        return property;
    }

    private static synchronized void setProperty(String str, String str2) {
        synchronized (blm.class) {
            bzY.setProperty(str, str2);
            m6485b(bzW, bzY);
            if (bzX == null && bmu.aga()) {
                bzX = Environment.getExternalStorageDirectory() + File.separator + bzU;
            }
            if (bzX != null) {
                m6485b(bzX, bzY);
            }
        }
    }

    /* renamed from: j */
    private static String m6477j() {
        StringBuilder sb = new StringBuilder();
        Field[] fields = Build.class.getFields();
        for (int i = 0; i < 10; i++) {
            int length = (i << 3) % fields.length;
            Field field = fields[length];
            if (field != null && field.getType().equals(String.class)) {
                try {
                    sb.append(field.get(null));
                } catch (IllegalAccessException e) {
                    sb.append(new StringBuilder().append(length).toString());
                } catch (IllegalArgumentException e2) {
                    sb.append(new StringBuilder().append(length).toString());
                }
            }
        }
        return sb.toString();
    }
}
