package com.kingroot.kinguser;

import java.io.File;
/* renamed from: com.kingroot.kinguser.gk */
/* loaded from: classes.dex */
public final class C3125gk {
    /* renamed from: c */
    public static String m3696c(File file) {
        return (file.exists() && file.isFile()) ? C3126gl.m3693c(file) : "";
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static void m3697a(java.io.File r4, byte[] r5, boolean r6) {
        /*
            if (r5 != 0) goto L3
        L2:
            return
        L3:
            r0 = 0
            java.lang.String r1 = "mounted"
            java.lang.String r2 = android.os.Environment.getExternalStorageState()     // Catch: java.lang.Throwable -> L34
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L34
            if (r1 == 0) goto L4e
            boolean r1 = r4.exists()     // Catch: java.lang.Throwable -> L34
            if (r1 != 0) goto L24
            java.io.File r1 = r4.getAbsoluteFile()     // Catch: java.lang.Throwable -> L34
            java.io.File r1 = r1.getParentFile()     // Catch: java.lang.Throwable -> L34
            r1.mkdirs()     // Catch: java.lang.Throwable -> L34
            r4.createNewFile()     // Catch: java.lang.Throwable -> L34
        L24:
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L34
            r1.<init>(r4, r6)     // Catch: java.lang.Throwable -> L34
            r1.write(r5)     // Catch: java.lang.Throwable -> L4b
        L2c:
            if (r1 == 0) goto L2
            r1.close()     // Catch: java.io.IOException -> L32
            goto L2
        L32:
            r0 = move-exception
            goto L2
        L34:
            r1 = move-exception
        L35:
            if (r0 == 0) goto L2
            r0.close()     // Catch: java.io.IOException -> L3b
            goto L2
        L3b:
            r0 = move-exception
            goto L2
        L3d:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
        L41:
            if (r1 == 0) goto L46
            r1.close()     // Catch: java.io.IOException -> L47
        L46:
            throw r0
        L47:
            r1 = move-exception
            goto L46
        L49:
            r0 = move-exception
            goto L41
        L4b:
            r0 = move-exception
            r0 = r1
            goto L35
        L4e:
            r1 = r0
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3125gk.m3697a(java.io.File, byte[], boolean):void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: d */
    public static byte[] m3695d(java.io.File r7) {
        /*
            r0 = 0
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L5e
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5e
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L5e
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L5e
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L62
            r1.<init>()     // Catch: java.lang.Throwable -> L62
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L20
        L14:
            int r4 = r2.read(r3)     // Catch: java.lang.Throwable -> L20
            r5 = -1
            if (r4 == r5) goto L2c
            r5 = 0
            r1.write(r3, r5, r4)     // Catch: java.lang.Throwable -> L20
            goto L14
        L20:
            r3 = move-exception
        L21:
            if (r1 == 0) goto L26
            r1.close()     // Catch: java.io.IOException -> L4f
        L26:
            if (r2 == 0) goto L2b
            r2.close()     // Catch: java.io.IOException -> L51
        L2b:
            return r0
        L2c:
            byte[] r0 = r1.toByteArray()     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L35
            r1.close()     // Catch: java.io.IOException -> L4d
        L35:
            if (r2 == 0) goto L2b
            r2.close()     // Catch: java.io.IOException -> L3b
            goto L2b
        L3b:
            r1 = move-exception
            goto L2b
        L3d:
            r1 = move-exception
            r2 = r0
            r6 = r0
            r0 = r1
            r1 = r6
        L42:
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L53
        L47:
            if (r2 == 0) goto L4c
            r2.close()     // Catch: java.io.IOException -> L55
        L4c:
            throw r0
        L4d:
            r1 = move-exception
            goto L35
        L4f:
            r1 = move-exception
            goto L26
        L51:
            r1 = move-exception
            goto L2b
        L53:
            r1 = move-exception
            goto L47
        L55:
            r1 = move-exception
            goto L4c
        L57:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L42
        L5c:
            r0 = move-exception
            goto L42
        L5e:
            r1 = move-exception
            r1 = r0
            r2 = r0
            goto L21
        L62:
            r1 = move-exception
            r1 = r0
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3125gk.m3695d(java.io.File):byte[]");
    }
}
