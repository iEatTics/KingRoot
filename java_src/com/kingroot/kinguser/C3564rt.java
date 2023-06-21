package com.kingroot.kinguser;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.CRC32;
import java.util.zip.GZIPInputStream;
/* renamed from: com.kingroot.kinguser.rt */
/* loaded from: classes.dex */
final class C3564rt {
    /* renamed from: c */
    public static final void m2338c(InputStream inputStream, OutputStream outputStream) {
        if (inputStream != null && outputStream != null) {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read >= 0) {
                    outputStream.write(bArr, 0, read);
                } else {
                    return;
                }
            }
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
    /* renamed from: cy */
    public static byte[] m2335cy(java.lang.String r5) {
        /*
            r0 = 0
            java.io.File r1 = new java.io.File
            r1.<init>(r5)
            boolean r1 = r1.exists()
            if (r1 != 0) goto Ld
        Lc:
            return r0
        Ld:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L32
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L32
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L54
            int r3 = r2.available()     // Catch: java.lang.Throwable -> L54
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L54
            m2338c(r2, r1)     // Catch: java.lang.Throwable -> L57
            byte[] r0 = r1.toByteArray()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L2b
        L24:
            com.kingroot.kinguser.C3945za.m1340c(r2)
            com.kingroot.kinguser.C3945za.m1340c(r1)
            goto Lc
        L2b:
            java.lang.String r0 = ""
            byte[] r0 = r0.getBytes()     // Catch: java.lang.Throwable -> L57
            goto L24
        L32:
            r1 = move-exception
            r1 = r0
        L34:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            com.kingroot.kinguser.C3945za.m1340c(r0)
            java.lang.String r0 = ""
            byte[] r0 = r0.getBytes()
            goto Lc
        L41:
            r1 = move-exception
            r2 = r0
            r4 = r0
            r0 = r1
            r1 = r4
        L46:
            com.kingroot.kinguser.C3945za.m1340c(r2)
            com.kingroot.kinguser.C3945za.m1340c(r1)
            throw r0
        L4d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L46
        L52:
            r0 = move-exception
            goto L46
        L54:
            r1 = move-exception
            r1 = r2
            goto L34
        L57:
            r0 = move-exception
            r0 = r1
            r1 = r2
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3564rt.m2335cy(java.lang.String):byte[]");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: c */
    public static void m2337c(byte[] r4, java.lang.String r5) {
        /*
            r1 = 0
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Le
            r2 = 0
            r0.<init>(r5, r2)     // Catch: java.lang.Throwable -> Le
            r0.write(r4)     // Catch: java.lang.Throwable -> L1e
            com.kingroot.kinguser.C3945za.m1340c(r0)
        Ld:
            return
        Le:
            r0 = move-exception
            r0 = r1
        L10:
            com.kingroot.kinguser.C3945za.m1340c(r0)
            goto Ld
        L14:
            r0 = move-exception
        L15:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            throw r0
        L19:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L15
        L1e:
            r1 = move-exception
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3564rt.m2337c(byte[], java.lang.String):void");
    }

    /* renamed from: c */
    public static void m2339c(int i, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream openRawResource = C3953zi.m1311pr().openRawResource(i);
            if (openRawResource == null) {
                C3945za.m1340c(openRawResource);
                C3945za.m1340c((Closeable) null);
                return;
            }
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
                inputStream = openRawResource;
            }
            try {
                m2338c(openRawResource, fileOutputStream);
                fileOutputStream.getChannel().force(true);
                fileOutputStream.flush();
                C3945za.m1340c(openRawResource);
                C3945za.m1340c(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                inputStream = openRawResource;
                C3945za.m1340c(inputStream);
                C3945za.m1340c(fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: d */
    public static void m2333d(int i, File file) {
        GZIPInputStream gZIPInputStream;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            InputStream openRawResource = C3953zi.m1311pr().openRawResource(i);
            if (openRawResource == null) {
                C3945za.m1340c((Closeable) null);
                C3945za.m1340c(openRawResource);
                C3945za.m1340c((Closeable) null);
                return;
            }
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    gZIPInputStream = new GZIPInputStream(openRawResource);
                } catch (Throwable th) {
                    th = th;
                    gZIPInputStream = null;
                    fileOutputStream2 = fileOutputStream;
                    inputStream = openRawResource;
                }
            } catch (Throwable th2) {
                th = th2;
                gZIPInputStream = null;
                inputStream = openRawResource;
            }
            try {
                m2338c(gZIPInputStream, fileOutputStream);
                fileOutputStream.getChannel().force(true);
                fileOutputStream.flush();
                C3945za.m1340c(gZIPInputStream);
                C3945za.m1340c(openRawResource);
                C3945za.m1340c(fileOutputStream);
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                inputStream = openRawResource;
                C3945za.m1340c(gZIPInputStream);
                C3945za.m1340c(inputStream);
                C3945za.m1340c(fileOutputStream2);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            gZIPInputStream = null;
            inputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cv */
    public static byte[] m2336cv(String str) {
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            inputStream = C3953zi.m1311pr().getAssets().open(str, 1);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(inputStream.available());
            } catch (Throwable th) {
                th = th;
            }
            try {
                m2338c(inputStream, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArray == null) {
                    byteArray = "".getBytes();
                }
                C3945za.m1340c(inputStream);
                C3945za.m1340c(byteArrayOutputStream);
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream2 = byteArrayOutputStream;
                C3945za.m1340c(inputStream);
                C3945za.m1340c(byteArrayOutputStream2);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m2332e(String str, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream open = C3953zi.m1311pr().getAssets().open(str, 1);
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
                inputStream = open;
            }
            try {
                m2338c(open, fileOutputStream);
                fileOutputStream.getChannel().force(true);
                fileOutputStream.flush();
                C3945za.m1340c(open);
                C3945za.m1340c(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                inputStream = open;
                C3945za.m1340c(inputStream);
                C3945za.m1340c(fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m2330f(String str, File file) {
        GZIPInputStream gZIPInputStream;
        InputStream inputStream;
        FileOutputStream fileOutputStream = null;
        try {
            InputStream open = C3953zi.m1311pr().getAssets().open(str, 1);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    gZIPInputStream = new GZIPInputStream(open);
                } catch (Throwable th) {
                    th = th;
                    gZIPInputStream = null;
                    fileOutputStream = fileOutputStream2;
                    inputStream = open;
                }
                try {
                    m2338c(gZIPInputStream, fileOutputStream2);
                    fileOutputStream2.getChannel().force(true);
                    fileOutputStream2.flush();
                    C3945za.m1340c(gZIPInputStream);
                    C3945za.m1340c(open);
                    C3945za.m1340c(fileOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    inputStream = open;
                    C3945za.m1340c(gZIPInputStream);
                    C3945za.m1340c(inputStream);
                    C3945za.m1340c(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                gZIPInputStream = null;
                inputStream = open;
            }
        } catch (Throwable th4) {
            th = th4;
            gZIPInputStream = null;
            inputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public static void m2323z(String str, String str2) {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream open = C3953zi.m1311pr().getAssets().open(str, 1);
            try {
                fileOutputStream = new FileOutputStream(str2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = open.read(bArr);
                        if (read >= 0) {
                            for (int i = 0; i < read; i++) {
                                bArr[i] = (byte) (bArr[i] ^ 205);
                            }
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            fileOutputStream.getChannel().force(true);
                            fileOutputStream.flush();
                            C3945za.m1340c(fileOutputStream);
                            C3945za.m1340c(open);
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = open;
                    C3945za.m1340c(fileOutputStream);
                    C3945za.m1340c(inputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                inputStream = open;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m2329g(String str, File file) {
        m2340a(str, file, true);
    }

    /* renamed from: a */
    static void m2340a(String str, File file, boolean z) {
        GZIPInputStream gZIPInputStream;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        if (file != null) {
            if (file.exists()) {
                if (z) {
                    file.delete();
                } else {
                    return;
                }
            }
            try {
                file.getParentFile().mkdirs();
                file.createNewFile();
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        gZIPInputStream = new GZIPInputStream(fileInputStream2);
                    } catch (Throwable th) {
                        th = th;
                        gZIPInputStream = null;
                        fileOutputStream = fileOutputStream2;
                        fileInputStream = fileInputStream2;
                    }
                    try {
                        m2338c(gZIPInputStream, fileOutputStream2);
                        fileOutputStream2.getChannel().force(true);
                        fileOutputStream2.flush();
                        C3945za.m1340c(fileOutputStream2);
                        C3945za.m1340c(gZIPInputStream);
                        C3945za.m1340c(fileInputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        fileInputStream = fileInputStream2;
                        C3945za.m1340c(fileOutputStream);
                        C3945za.m1340c(gZIPInputStream);
                        C3945za.m1340c(fileInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    gZIPInputStream = null;
                    fileInputStream = fileInputStream2;
                }
            } catch (Throwable th4) {
                th = th4;
                gZIPInputStream = null;
                fileInputStream = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static byte[] m2328n(String str, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream;
        GZIPInputStream gZIPInputStream;
        int m2325v;
        GZIPInputStream gZIPInputStream2 = null;
        try {
            InputStream open = C3953zi.m1311pr().getAssets().open(str, 1);
            if (z) {
                try {
                    byte[] bArr = new byte[16];
                    open.read(bArr);
                    if (m2325v(bArr) == -1) {
                        throw new IOException();
                    }
                    open.skip(m2325v << 2);
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = null;
                    inputStream = open;
                    C3945za.m1340c(gZIPInputStream2);
                    C3945za.m1340c(inputStream);
                    C3945za.m1340c(byteArrayOutputStream);
                    throw th;
                }
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(open.available());
            try {
                gZIPInputStream = new GZIPInputStream(open);
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = byteArrayOutputStream2;
                inputStream = open;
            }
            try {
                m2338c(gZIPInputStream, byteArrayOutputStream2);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (byteArray == null) {
                    byteArray = "".getBytes();
                }
                C3945za.m1340c(gZIPInputStream);
                C3945za.m1340c(open);
                C3945za.m1340c(byteArrayOutputStream2);
                return byteArray;
            } catch (Throwable th3) {
                th = th3;
                gZIPInputStream2 = gZIPInputStream;
                byteArrayOutputStream = byteArrayOutputStream2;
                inputStream = open;
                C3945za.m1340c(gZIPInputStream2);
                C3945za.m1340c(inputStream);
                C3945za.m1340c(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            inputStream = null;
        }
    }

    /* renamed from: v */
    static int m2325v(byte[] bArr) {
        if (bArr.length < 16) {
            return -1;
        }
        int[] iArr = new int[4];
        for (int i = 0; i < 16; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
        }
        if (iArr[0] == 268573306 && iArr[1] == 175 && iArr[3] >= 0) {
            return iArr[3];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cz */
    public static boolean m2334cz(String str) {
        boolean z;
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                z = true;
                for (File file2 : listFiles) {
                    if (file2.isFile()) {
                        z = deleteFile(file2.getAbsolutePath());
                        if (!z) {
                            break;
                        }
                    } else {
                        z = m2334cz(file2.getAbsolutePath());
                        if (!z) {
                            break;
                        }
                    }
                }
            } else {
                z = true;
            }
            if (z && file.delete()) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean deleteFile(String str) {
        try {
            return new File(str).delete();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static long m2327p(File file) {
        FileInputStream fileInputStream;
        long j = 0;
        try {
            CRC32 crc32 = new CRC32();
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    crc32.update(bArr, 0, read);
                }
                j = crc32.getValue();
                C3945za.m1340c(fileInputStream);
            } catch (Exception e) {
                C3945za.m1340c(fileInputStream);
                return j;
            } catch (Throwable th) {
                th = th;
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static String m2331f(InputStream inputStream) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return m2324w(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getFileMD5(File file) {
        FileInputStream fileInputStream;
        String str = "";
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                str = m2324w(messageDigest.digest());
                C3945za.m1340c(fileInputStream);
            } catch (Exception e) {
                C3945za.m1340c(fileInputStream);
                return str;
            } catch (Throwable th) {
                th = th;
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        return str;
    }

    /* renamed from: w */
    static String m2324w(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append("0123456789abcdef".charAt((b >> 4) & 15)).append("0123456789abcdef".charAt(b & 15));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static boolean m2326s(File file) {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }
}
