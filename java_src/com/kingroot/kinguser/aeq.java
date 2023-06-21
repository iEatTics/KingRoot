package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguser.aae;
import com.p019qq.jce.wup.UniAttribute;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
public class aeq {
    /* renamed from: b */
    public static <T> T m12173b(Context context, String str, String str2, String str3, T t, String str4) {
        Object obj;
        if (str2 != null && str3 != null) {
            try {
                obj = m12172c(context, str, str2, str4).getByClass(str3, t);
            } catch (Exception e) {
                obj = t;
            }
            return obj != null ? (T) obj : t;
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m12174a(String str, String str2, T t, String str3) {
        Object obj;
        if (str != null && str2 != null) {
            try {
                obj = m12175T(str, str3).getByClass(str2, t);
            } catch (Exception e) {
                obj = t;
            }
            return obj != null ? (T) obj : t;
        }
        return t;
    }

    /* renamed from: c */
    private static UniAttribute m12172c(Context context, String str, String str2, String str3) {
        FileInputStream fileInputStream;
        int i = 0;
        UniAttribute uniAttribute = new UniAttribute();
        File m12171d = m12171d(context, str, str2);
        if (m12171d.exists()) {
            try {
                fileInputStream = new FileInputStream(m12171d);
            } catch (Exception e) {
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                fileInputStream = null;
            }
            try {
                aen.m12180i(fileInputStream);
                int available = fileInputStream.available();
                byte[] bArr = new byte[available];
                int i2 = 0;
                while (i >= 0) {
                    i2 += i;
                    if (i2 >= available) {
                        break;
                    }
                    i = fileInputStream.read(bArr, i2, available - i2);
                }
                if (i2 > 0) {
                    byte[] mo12988D = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr);
                    if (str3 != null && str3.length() > 0) {
                        uniAttribute.setEncodeName(str3);
                    }
                    uniAttribute.decode(mo12988D);
                    C3945za.m1340c(fileInputStream);
                } else {
                    throw new IllegalStateException("Can not decoding empty data");
                }
            } catch (Exception e2) {
                C3945za.m1340c(fileInputStream);
                return uniAttribute;
            } catch (Throwable th2) {
                th = th2;
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        }
        return uniAttribute;
    }

    /* renamed from: T */
    private static UniAttribute m12175T(String str, String str2) {
        InputStream inputStream;
        Throwable th;
        InputStream open;
        byte[] bArr;
        int i = 0;
        UniAttribute uniAttribute = new UniAttribute();
        try {
            try {
                open = C3953zi.m1311pr().getAssets().open(str, 1);
                try {
                    aen.m12180i(open);
                    int available = open.available();
                    bArr = new byte[available];
                    int i2 = 0;
                    while (i2 >= 0) {
                        i += i2;
                        if (i >= available) {
                            break;
                        }
                        i2 = open.read(bArr, i, available - i);
                    }
                } catch (Throwable th2) {
                    inputStream = open;
                    th = th2;
                    C3945za.m1340c(inputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                inputStream = null;
                th = th3;
            }
        } catch (Exception e) {
            C3945za.m1340c((Closeable) null);
        }
        if (i > 0) {
            byte[] mo12988D = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr);
            if (mo12988D != null && mo12988D.length > 0) {
                if (str2 != null && str2.length() > 0) {
                    uniAttribute.setEncodeName(str2);
                }
                uniAttribute.decode(mo12988D);
            }
            C3945za.m1340c(open);
            return uniAttribute;
        }
        throw new IllegalStateException("Can not decoding empty data");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000b, code lost:
        if (r5.equals("") != false) goto L4;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized File m12171d(Context context, String str, String str2) {
        File file;
        synchronized (aeq.class) {
            if (str != null) {
            }
            str = context.getFilesDir().getAbsolutePath();
            File file2 = new File(str);
            if (!file2.exists() || !file2.isDirectory()) {
                file2.mkdirs();
            }
            file = new File(str + File.separator + str2);
        }
        return file;
    }
}
