package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
/* renamed from: com.kingroot.kinguser.rs */
/* loaded from: classes.dex */
public final class C3563rs {
    /* renamed from: p */
    public static long m2347p(File file) {
        if (file.exists() && file.isFile()) {
            return C3564rt.m2327p(file);
        }
        return 0L;
    }

    public static String getFileMD5(File file) {
        return (file.exists() && file.isFile()) ? C3564rt.getFileMD5(file) : "";
    }

    /* renamed from: n */
    public static void m2348n(int i, String str) {
        m2368a(i, C3958zl.m1295pw(), str);
    }

    /* renamed from: y */
    public static void m2342y(String str, String str2) {
        m2365b(str, C3958zl.m1295pw(), str2);
    }

    /* renamed from: a */
    public static void m2368a(int i, File file, String str) {
        File file2 = new File(file, str);
        m2353d(i, file2);
        m2346q(file2);
    }

    /* renamed from: q */
    private static void m2346q(File file) {
        abi.m12831em("chmod 0764 " + file.getAbsolutePath());
    }

    /* renamed from: b */
    public static void m2365b(String str, File file, String str2) {
        File file2 = new File(file, str2);
        m2351f(str, file2);
        m2346q(file2);
    }

    /* renamed from: c */
    public static void m2364c(int i, File file) {
        C3564rt.m2339c(i, file);
    }

    /* renamed from: d */
    public static void m2353d(int i, File file) {
        C3564rt.m2333d(i, file);
    }

    /* renamed from: e */
    public static void m2352e(String str, File file) {
        C3564rt.m2332e(str, file);
    }

    /* renamed from: f */
    public static void m2351f(String str, File file) {
        C3564rt.m2330f(str, file);
    }

    /* renamed from: z */
    public static void m2341z(String str, String str2) {
        C3564rt.m2323z(str, str2);
    }

    /* renamed from: cv */
    public static byte[] m2358cv(String str) {
        return C3564rt.m2336cv(str);
    }

    /* renamed from: cw */
    public static byte[] m2357cw(String str) {
        return C3564rt.m2328n(str, false);
    }

    /* renamed from: cx */
    public static byte[] m2356cx(String str) {
        return C3564rt.m2328n(str, true);
    }

    /* renamed from: cy */
    public static byte[] m2355cy(String str) {
        return C3564rt.m2335cy(str);
    }

    /* renamed from: c */
    public static void m2362c(byte[] bArr, String str) {
        C3564rt.m2337c(bArr, str);
    }

    /* renamed from: g */
    public static void m2350g(String str, File file) {
        C3564rt.m2329g(str, file);
    }

    /* renamed from: cz */
    public static boolean m2354cz(String str) {
        return C3564rt.m2334cz(str);
    }

    public static boolean deleteFile(String str) {
        return C3564rt.deleteFile(str);
    }

    /* renamed from: r */
    public static void m2345r(File file) {
        if (file.exists()) {
            file.delete();
        }
    }

    /* renamed from: c */
    public static synchronized String m2363c(Context context, String str, String str2) {
        String m2366b;
        synchronized (C3563rs.class) {
            m2366b = m2366b(context, str, null, str2);
        }
        return m2366b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
        if (r11.equals("") != false) goto L4;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized String m2366b(Context context, String str, String str2, String str3) {
        String str4;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        InputStream inputStream2;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3 = null;
        synchronized (C3563rs.class) {
            if (str3 != null) {
            }
            str3 = context.getFilesDir().toString();
            if (TextUtils.isEmpty(str2)) {
                str2 = str;
            }
            str4 = str3 + File.separator + str2;
            try {
                File file = new File(str4);
                if (file.exists()) {
                    fileOutputStream2 = null;
                    inputStream = null;
                } else {
                    m2345r(file);
                    inputStream = C3953zi.m1311pr().getAssets().open(str, 1);
                    try {
                        fileOutputStream2 = new FileOutputStream(file);
                    } catch (Exception e) {
                        fileOutputStream = null;
                        inputStream2 = inputStream;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        }
                        fileOutputStream2.getChannel().force(true);
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        inputStream.close();
                    } catch (Exception e2) {
                        fileOutputStream = fileOutputStream2;
                        inputStream2 = inputStream;
                        C3945za.m1340c(inputStream2);
                        C3945za.m1340c(fileOutputStream);
                        str4 = null;
                        return str4;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream3 = fileOutputStream2;
                        C3945za.m1340c(inputStream);
                        C3945za.m1340c(fileOutputStream3);
                        throw th;
                    }
                }
                C3945za.m1340c(inputStream);
                C3945za.m1340c(fileOutputStream2);
            } catch (Exception e3) {
                fileOutputStream = null;
                inputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        }
        return str4;
    }

    /* renamed from: cA */
    public static String m2361cA(String str) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        BufferedInputStream bufferedInputStream2;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (FileNotFoundException e) {
                bufferedInputStream2 = bufferedInputStream;
            } catch (IOException e2) {
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                byteArrayOutputStream = null;
                th = th2;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        String str2 = new String(byteArrayOutputStream.toByteArray());
                        C3945za.m1340c(bufferedInputStream);
                        C3945za.m1340c(byteArrayOutputStream);
                        return str2;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (FileNotFoundException e3) {
                byteArrayOutputStream2 = byteArrayOutputStream;
                bufferedInputStream2 = bufferedInputStream;
                C3945za.m1340c(bufferedInputStream2);
                C3945za.m1340c(byteArrayOutputStream2);
                return "";
            } catch (IOException e4) {
                C3945za.m1340c(bufferedInputStream);
                C3945za.m1340c(byteArrayOutputStream);
                return "";
            } catch (Throwable th3) {
                th = th3;
                C3945za.m1340c(bufferedInputStream);
                C3945za.m1340c(byteArrayOutputStream);
                throw th;
            }
        } catch (FileNotFoundException e5) {
            bufferedInputStream2 = null;
        } catch (IOException e6) {
            byteArrayOutputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th4) {
            bufferedInputStream = null;
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: h */
    public static byte[] m2349h(java.lang.String r7, int r8) {
        /*
            r0 = 0
            r2 = 0
            java.io.File r1 = new java.io.File
            r1.<init>(r7)
            boolean r3 = r1.exists()
            if (r3 != 0) goto Lf
            r0 = r2
        Le:
            return r0
        Lf:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L37
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L37
            byte[] r1 = new byte[r8]     // Catch: java.lang.Throwable -> L46
        L16:
            int r4 = r8 - r0
            int r4 = r3.read(r1, r0, r4)     // Catch: java.lang.Throwable -> L46
            r5 = -1
            if (r4 == r5) goto L4b
            int r0 = r0 + r4
            if (r0 < r8) goto L16
            r4 = r0
        L23:
            if (r4 != 0) goto L2a
            com.kingroot.kinguser.C3945za.m1340c(r3)
            r0 = r2
            goto Le
        L2a:
            if (r4 >= r8) goto L49
            byte[] r0 = new byte[r4]     // Catch: java.lang.Throwable -> L46
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r1, r5, r0, r6, r4)     // Catch: java.lang.Throwable -> L46
        L33:
            com.kingroot.kinguser.C3945za.m1340c(r3)
            goto Le
        L37:
            r0 = move-exception
            r0 = r2
        L39:
            com.kingroot.kinguser.C3945za.m1340c(r0)
            r0 = r2
            goto Le
        L3e:
            r0 = move-exception
            r3 = r2
        L40:
            com.kingroot.kinguser.C3945za.m1340c(r3)
            throw r0
        L44:
            r0 = move-exception
            goto L40
        L46:
            r0 = move-exception
            r0 = r3
            goto L39
        L49:
            r0 = r1
            goto L33
        L4b:
            r4 = r0
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3563rs.m2349h(java.lang.String, int):byte[]");
    }

    /* renamed from: s */
    public static boolean m2344s(File file) {
        return C3564rt.m2326s(file);
    }

    /* renamed from: t */
    public static String m2343t(File file) {
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
            str = C3945za.m1334h(fileInputStream);
            C3945za.m1340c(fileInputStream);
        } catch (IOException e2) {
            C3945za.m1340c(fileInputStream);
            return str;
        } catch (Throwable th3) {
            th = th3;
            C3945za.m1340c(fileInputStream);
            throw th;
        }
        return str;
    }

    /* renamed from: b */
    public static String m2367b(Context context, long j) {
        return j == -1 ? "0" : Formatter.formatFileSize(context, j);
    }

    /* renamed from: A */
    public static boolean m2370A(String str, String str2) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            try {
                String fileMD5 = getFileMD5(file);
                String m2359cC = m2359cC(str2);
                if (TextUtils.isEmpty(fileMD5)) {
                    return false;
                }
                return fileMD5.equalsIgnoreCase(m2359cC);
            } catch (IOException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: B */
    public static boolean m2369B(String str, String str2) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            try {
                String fileMD5 = getFileMD5(file);
                String m2360cB = m2360cB(str2);
                if (TextUtils.isEmpty(fileMD5)) {
                    return false;
                }
                return fileMD5.equalsIgnoreCase(m2360cB);
            } catch (IOException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: cB */
    public static String m2360cB(String str) {
        InputStream open = C3953zi.m1311pr().getAssets().open(str);
        try {
            return C3564rt.m2331f(open);
        } finally {
            C3945za.m1340c(open);
        }
    }

    /* renamed from: cC */
    public static String m2359cC(String str) {
        GZIPInputStream gZIPInputStream;
        InputStream inputStream = null;
        try {
            InputStream open = C3953zi.m1311pr().getAssets().open(str, 1);
            try {
                gZIPInputStream = new GZIPInputStream(open);
            } catch (Throwable th) {
                th = th;
                gZIPInputStream = null;
                inputStream = open;
            }
            try {
                String m2331f = C3564rt.m2331f(gZIPInputStream);
                C3945za.m1340c(gZIPInputStream);
                C3945za.m1340c(open);
                return m2331f;
            } catch (Throwable th2) {
                th = th2;
                inputStream = open;
                C3945za.m1340c(gZIPInputStream);
                C3945za.m1340c(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            gZIPInputStream = null;
        }
    }
}
