package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.File;
/* renamed from: com.kingroot.kinguser.fo */
/* loaded from: classes.dex */
public final class C3063fo {
    private static final String TAG = C3063fo.class.getSimpleName();

    /* renamed from: a */
    public static void m3840a(File file) {
        File[] listFiles;
        if (file != null && file.exists()) {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    m3840a(file2);
                }
            }
            file.delete();
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
    /* renamed from: a */
    public static void m3837a(java.io.File r6, java.lang.String r7, long r8) {
        /*
            r1 = 0
            if (r6 == 0) goto L9
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 == 0) goto La
        L9:
            return
        La:
            r2 = 0
            int r0 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r0 <= 0) goto L21
            boolean r0 = r6.exists()
            if (r0 == 0) goto L21
            long r2 = r6.length()
            int r0 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r0 <= 0) goto L21
            r6.delete()
        L21:
            java.io.FileWriter r2 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L4d
            r0 = 1
            r2.<init>(r6, r0)     // Catch: java.lang.Throwable -> L4d
            java.io.BufferedWriter r0 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L66
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> L6a
            byte[] r3 = r7.getBytes()     // Catch: java.lang.Throwable -> L6a
            r4 = 2
            byte[] r3 = android.util.Base64.encode(r3, r4)     // Catch: java.lang.Throwable -> L6a
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L6a
            java.io.Writer r1 = r0.append(r1)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = "\n"
            r1.append(r3)     // Catch: java.lang.Throwable -> L6a
            r0.flush()     // Catch: java.lang.Throwable -> L6a
            com.kingroot.kinguser.C3066fr.m3833b(r0)
            com.kingroot.kinguser.C3066fr.m3833b(r2)
            goto L9
        L4d:
            r0 = move-exception
            r0 = r1
        L4f:
            com.kingroot.kinguser.C3066fr.m3833b(r0)
            com.kingroot.kinguser.C3066fr.m3833b(r1)
            goto L9
        L56:
            r0 = move-exception
            r2 = r1
        L58:
            com.kingroot.kinguser.C3066fr.m3833b(r1)
            com.kingroot.kinguser.C3066fr.m3833b(r2)
            throw r0
        L5f:
            r0 = move-exception
            goto L58
        L61:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L58
        L66:
            r0 = move-exception
            r0 = r1
            r1 = r2
            goto L4f
        L6a:
            r1 = move-exception
            r1 = r2
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3063fo.m3837a(java.io.File, java.lang.String, long):void");
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
    public static void m3836a(java.io.File r8, java.util.List<java.lang.String> r9, long r10) {
        /*
            r0 = 0
            if (r8 == 0) goto Lb
            if (r9 == 0) goto Lb
            boolean r1 = r9.isEmpty()
            if (r1 == 0) goto Lc
        Lb:
            return
        Lc:
            r2 = 0
            int r1 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r1 <= 0) goto L23
            boolean r1 = r8.exists()
            if (r1 == 0) goto L23
            long r2 = r8.length()
            int r1 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r1 <= 0) goto L23
            r8.delete()
        L23:
            java.io.FileWriter r2 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L86
            r1 = 1
            r2.<init>(r8, r1)     // Catch: java.lang.Throwable -> L86
            java.io.BufferedWriter r1 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L89
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L89
            java.util.Iterator r4 = r9.iterator()     // Catch: java.lang.Throwable -> L5f
        L32:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Throwable -> L5f
            if (r0 == 0) goto L69
            java.lang.Object r0 = r4.next()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L5f
            if (r0 == 0) goto L32
            int r3 = r0.length()     // Catch: java.lang.Throwable -> L5f
            if (r3 <= 0) goto L55
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Throwable -> L5f
            byte[] r0 = r0.getBytes()     // Catch: java.lang.Throwable -> L5f
            r5 = 2
            byte[] r0 = android.util.Base64.encode(r0, r5)     // Catch: java.lang.Throwable -> L5f
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L5f
            r0 = r3
        L55:
            java.io.Writer r0 = r1.append(r0)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r3 = "\n"
            r0.append(r3)     // Catch: java.lang.Throwable -> L5f
            goto L32
        L5f:
            r0 = move-exception
            r0 = r1
            r1 = r2
        L62:
            com.kingroot.kinguser.C3066fr.m3833b(r0)
            com.kingroot.kinguser.C3066fr.m3833b(r1)
            goto Lb
        L69:
            r1.flush()     // Catch: java.lang.Throwable -> L5f
            com.kingroot.kinguser.C3066fr.m3833b(r1)
            com.kingroot.kinguser.C3066fr.m3833b(r2)
            goto Lb
        L73:
            r1 = move-exception
            r2 = r0
            r6 = r0
            r0 = r1
            r1 = r6
        L78:
            com.kingroot.kinguser.C3066fr.m3833b(r1)
            com.kingroot.kinguser.C3066fr.m3833b(r2)
            throw r0
        L7f:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L78
        L84:
            r0 = move-exception
            goto L78
        L86:
            r1 = move-exception
            r1 = r0
            goto L62
        L89:
            r1 = move-exception
            r1 = r2
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3063fo.m3836a(java.io.File, java.util.List, long):void");
    }

    /* renamed from: a */
    public static void m3839a(File file, InterfaceC3064fp interfaceC3064fp) {
        m3838a(file, interfaceC3064fp, true);
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
    private static void m3838a(java.io.File r6, com.kingroot.kinguser.InterfaceC3064fp r7, boolean r8) {
        /*
            r1 = 0
            if (r6 == 0) goto L5
            if (r7 != 0) goto L6
        L5:
            return
        L6:
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L33
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L33
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L4c
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L4c
        L10:
            java.lang.String r3 = r0.readLine()     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L2c
            if (r8 == 0) goto L53
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> L50
            byte[] r3 = r3.getBytes()     // Catch: java.lang.Throwable -> L50
            r4 = 2
            byte[] r3 = android.util.Base64.decode(r3, r4)     // Catch: java.lang.Throwable -> L50
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L50
        L26:
            boolean r1 = r7.mo3725a(r1)     // Catch: java.lang.Throwable -> L50
            if (r1 != 0) goto L10
        L2c:
            com.kingroot.kinguser.C3066fr.m3834a(r2)
            com.kingroot.kinguser.C3066fr.m3834a(r0)
            goto L5
        L33:
            r0 = move-exception
            r0 = r1
        L35:
            com.kingroot.kinguser.C3066fr.m3834a(r1)
            com.kingroot.kinguser.C3066fr.m3834a(r0)
            goto L5
        L3c:
            r0 = move-exception
            r2 = r1
        L3e:
            com.kingroot.kinguser.C3066fr.m3834a(r2)
            com.kingroot.kinguser.C3066fr.m3834a(r1)
            throw r0
        L45:
            r0 = move-exception
            goto L3e
        L47:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L3e
        L4c:
            r0 = move-exception
            r0 = r1
            r1 = r2
            goto L35
        L50:
            r1 = move-exception
            r1 = r2
            goto L35
        L53:
            r1 = r3
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3063fo.m3838a(java.io.File, com.kingroot.kinguser.fp, boolean):void");
    }

    /* renamed from: a */
    public static void m3835a(String str, InterfaceC3065fq interfaceC3065fq) {
        File[] listFiles;
        if (!TextUtils.isEmpty(str) && interfaceC3065fq != null) {
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length > 0) {
                for (File file2 : listFiles) {
                    if (file2 != null && file2.exists()) {
                        interfaceC3065fq.mo3726b(file2);
                    }
                }
            }
        }
    }
}
