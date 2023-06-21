package com.kingroot.kinguser;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes.dex */
public class byy {
    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: P */
    public static java.lang.String m5169P(java.io.File r4) {
        /*
            java.lang.String r0 = ""
            r2 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L1f
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L1f
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L1f
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L1f
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L19
            if (r1 == 0) goto L18
            m5166c(r1)
        L18:
            return r0
        L19:
            if (r1 == 0) goto L18
            m5166c(r1)
            goto L18
        L1f:
            r1 = move-exception
            r1 = r2
        L21:
            if (r1 == 0) goto L18
            m5166c(r1)
            goto L18
        L27:
            r0 = move-exception
        L28:
            if (r2 == 0) goto L2d
            m5166c(r2)
        L2d:
            throw r0
        L2e:
            r0 = move-exception
            r2 = r1
            goto L28
        L31:
            r2 = move-exception
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.byy.m5169P(java.io.File):java.lang.String");
    }

    /* renamed from: c */
    public static void m5166c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
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
    /* renamed from: c */
    public static void m5165c(java.lang.String r4, byte[] r5) {
        /*
            r1 = 0
            java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L15
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L15
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L15
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L15
            r0.write(r5)     // Catch: java.lang.Throwable -> L25
            r0.flush()     // Catch: java.lang.Throwable -> L25
            m5166c(r0)
        L14:
            return
        L15:
            r0 = move-exception
            r0 = r1
        L17:
            m5166c(r0)
            goto L14
        L1b:
            r0 = move-exception
        L1c:
            m5166c(r1)
            throw r0
        L20:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L1c
        L25:
            r1 = move-exception
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.byy.m5165c(java.lang.String, byte[]):void");
    }

    public static byte[] readFile(String str) {
        return m5168Q(new File(str));
    }

    /* renamed from: Q */
    public static byte[] m5168Q(File file) {
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        long length;
        int i;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                length = randomAccessFile.length();
                i = (int) length;
            } catch (Throwable th) {
                try {
                    bArr = new byte[0];
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return bArr;
                } finally {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            randomAccessFile = null;
        }
        if (i != length) {
            throw new IOException("");
        }
        bArr = new byte[i];
        randomAccessFile.readFully(bArr);
        return bArr;
    }

    /* renamed from: cy */
    public static byte[] m5164cy(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(fileInputStream2.available());
                try {
                    bxt.m5221d(fileInputStream2, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArray == null) {
                        byteArray = "".getBytes();
                    }
                    bxt.m5222c(fileInputStream2);
                    bxt.m5222c(byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    bxt.m5222c(fileInputStream);
                    bxt.m5222c(byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
                fileInputStream = fileInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: R */
    public static String m5167R(File file) {
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            return null;
        }
    }
}
