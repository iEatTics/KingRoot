package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.jd */
/* loaded from: classes.dex */
public class C3209jd {
    /* renamed from: a */
    public static <T> T m3430a(Context context, String str, String str2, String str3, T t, String str4) {
        Object obj;
        if (str2 != null && str3 != null) {
            try {
                obj = m3431a(context, str, str2, str4).m3068b(str3, t);
            } catch (Exception e) {
                obj = t;
            }
            return obj != null ? (T) obj : t;
        }
        return t;
    }

    /* renamed from: a */
    private static C3313mm m3431a(Context context, String str, String str2, String str3) {
        FileInputStream fileInputStream;
        C3313mm c3313mm = new C3313mm();
        File m3429b = m3429b(context, str, str2);
        if (m3429b.exists()) {
            try {
                fileInputStream = new FileInputStream(m3429b);
                try {
                    if (C3206ja.m3443c(fileInputStream) != null) {
                    }
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    if (bArr.length <= 0) {
                        throw new IllegalStateException("Can not decoding empty data");
                    }
                    byte[] m3369n = C3222jp.m3369n(bArr);
                    if (m3369n != null) {
                        if (str3 != null && str3.length() > 0) {
                            c3313mm.mo3067bu(str3);
                        }
                        c3313mm.mo3058s(m3369n);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e) {
                            }
                        }
                    } else if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (Exception e3) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                    return c3313mm;
                } catch (Throwable th) {
                    th = th;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e6) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        }
        return c3313mm;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000b, code lost:
        if (r5.equals("") != false) goto L4;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized File m3429b(Context context, String str, String str2) {
        File file;
        synchronized (C3209jd.class) {
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
