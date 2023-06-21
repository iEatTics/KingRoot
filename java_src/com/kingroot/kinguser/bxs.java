package com.kingroot.kinguser;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public class bxs {
    private static final byte[] atT = {Byte.MAX_VALUE, 69, 76, 70};

    /* renamed from: lg */
    public static boolean m5223lg(String str) {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[atT.length];
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            if (fileInputStream.read(bArr, 0, atT.length) != bArr.length) {
                throw new IOException("Read bytes less than " + bArr.length);
            }
            for (int i = 0; i < atT.length; i++) {
                if (atT[i] != bArr[i]) {
                    bxt.m5222c(fileInputStream);
                    return false;
                }
            }
            bxt.m5222c(fileInputStream);
            return true;
        } catch (Throwable th2) {
            th = th2;
            bxt.m5222c(fileInputStream);
            throw th;
        }
    }

    /* renamed from: cy */
    public static byte[] m5225cy(String str) {
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

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: h */
    public static byte[] m5224h(java.lang.String r7, int r8) {
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
            com.kingroot.kinguser.bxt.m5222c(r3)
            r0 = r2
            goto Le
        L2a:
            if (r4 >= r8) goto L49
            byte[] r0 = new byte[r4]     // Catch: java.lang.Throwable -> L46
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r1, r5, r0, r6, r4)     // Catch: java.lang.Throwable -> L46
        L33:
            com.kingroot.kinguser.bxt.m5222c(r3)
            goto Le
        L37:
            r0 = move-exception
            r0 = r2
        L39:
            com.kingroot.kinguser.bxt.m5222c(r0)
            r0 = r2
            goto Le
        L3e:
            r0 = move-exception
            r3 = r2
        L40:
            com.kingroot.kinguser.bxt.m5222c(r3)
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
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bxs.m5224h(java.lang.String, int):byte[]");
    }
}
