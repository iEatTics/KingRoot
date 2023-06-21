package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
/* renamed from: com.kingroot.kinguser.nk */
/* loaded from: classes.dex */
public final class C3353nk {
    private static Context getContext() {
        return C3183ih.getContext();
    }

    /* renamed from: bn */
    public static boolean m2858bn(String str) {
        return new File(str).exists();
    }

    /* renamed from: m */
    public static long m2855m(File file) {
        if (file.exists() && file.isFile()) {
            try {
                return m2853o(file);
            } catch (IOException e) {
            }
        }
        return 0L;
    }

    /* renamed from: a */
    public static void m2864a(int i, File file) {
        C3354nl.m2852a(getContext(), i, file);
    }

    /* renamed from: b */
    public static void m2862b(int i, File file) {
        C3354nl.m2850b(getContext(), i, file);
    }

    /* renamed from: c */
    public static void m2857c(String str, File file) {
        C3354nl.m2851a(getContext(), str, file);
    }

    /* renamed from: d */
    public static void m2856d(String str, File file) {
        C3354nl.m2848b(getContext(), str, file);
    }

    /* renamed from: bL */
    public static byte[] m2860bL(String str) {
        return C3354nl.m2849b(getContext(), str);
    }

    /* renamed from: bM */
    public static byte[] m2859bM(String str) {
        return C3354nl.m2846bM(str);
    }

    /* renamed from: b */
    public static void m2861b(byte[] bArr, String str) {
        C3354nl.m2847b(bArr, str);
    }

    /* renamed from: n */
    public static String m2854n(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        String str = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException e) {
            fileInputStream = null;
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            str = C3356nn.m2835e(fileInputStream);
            C3356nn.m2841a(fileInputStream);
        } catch (IOException e2) {
            C3356nn.m2841a(fileInputStream);
            return str;
        } catch (Throwable th3) {
            th = th3;
            C3356nn.m2841a(fileInputStream);
            throw th;
        }
        return str;
    }

    /* renamed from: o */
    public static long m2853o(File file) {
        CRC32 crc32 = new CRC32();
        m2863a(file, crc32);
        return crc32.getValue();
    }

    /* renamed from: a */
    static Checksum m2863a(File file, Checksum checksum) {
        C3359nq c3359nq;
        CheckedInputStream checkedInputStream = null;
        if (file.isDirectory()) {
            throw new IllegalArgumentException("Checksum can't be computed on directories");
        }
        try {
            CheckedInputStream checkedInputStream2 = new CheckedInputStream(new FileInputStream(file), checksum);
            try {
                c3359nq = new C3359nq();
            } catch (Throwable th) {
                th = th;
                c3359nq = null;
                checkedInputStream = checkedInputStream2;
            }
            try {
                C3356nn.m2837b(checkedInputStream2, c3359nq);
                C3356nn.m2841a(checkedInputStream2);
                C3356nn.m2841a(c3359nq);
                return checksum;
            } catch (Throwable th2) {
                th = th2;
                checkedInputStream = checkedInputStream2;
                C3356nn.m2841a(checkedInputStream);
                C3356nn.m2841a(c3359nq);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            c3359nq = null;
        }
    }
}
