package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class buu {
    private static final char[] bOM = "0123456789abcdef".toCharArray();

    /* renamed from: C */
    public static byte[] m5460C(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: Y */
    public static String m5459Y(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 3);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append(bOM[i >> 4]);
            sb.append(bOM[i & 15]);
        }
        return sb.toString().toUpperCase();
    }

    /* renamed from: Z */
    public static String m5458Z(byte[] bArr) {
        return m5459Y(m5460C(bArr));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: nk */
    public static java.lang.String m5455nk(java.lang.String r4) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L13
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L13
            java.lang.String r0 = m5456l(r1)     // Catch: java.lang.Throwable -> L2d
            r1.close()     // Catch: java.lang.Exception -> Le
        Ld:
            return r0
        Le:
            r1 = move-exception
            r1.printStackTrace()
            goto Ld
        L13:
            r1 = move-exception
            r1 = r0
        L15:
            r1.close()     // Catch: java.lang.Exception -> L19
            goto Ld
        L19:
            r1 = move-exception
            r1.printStackTrace()
            goto Ld
        L1e:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
        L22:
            r1.close()     // Catch: java.lang.Exception -> L26
        L25:
            throw r0
        L26:
            r1 = move-exception
            r1.printStackTrace()
            goto L25
        L2b:
            r0 = move-exception
            goto L22
        L2d:
            r2 = move-exception
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.buu.m5455nk(java.lang.String):java.lang.String");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: l */
    public static java.lang.String m5456l(java.io.InputStream r5) {
        /*
            r0 = 0
            r2 = 262144(0x40000, float:3.67342E-40)
            java.lang.String r1 = "MD5"
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r1)     // Catch: java.lang.Throwable -> L33
            java.security.DigestInputStream r1 = new java.security.DigestInputStream     // Catch: java.lang.Throwable -> L33
            r1.<init>(r5, r3)     // Catch: java.lang.Throwable -> L33
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L5d
        L10:
            int r3 = r1.read(r2)     // Catch: java.lang.Throwable -> L5d
            if (r3 > 0) goto L10
            java.security.MessageDigest r2 = r1.getMessageDigest()     // Catch: java.lang.Throwable -> L5d
            byte[] r2 = r2.digest()     // Catch: java.lang.Throwable -> L5d
            java.lang.String r0 = m5457aa(r2)     // Catch: java.lang.Throwable -> L5d
            r1.close()     // Catch: java.lang.Exception -> L29
        L25:
            r5.close()     // Catch: java.lang.Exception -> L2e
        L28:
            return r0
        L29:
            r1 = move-exception
            r1.printStackTrace()
            goto L25
        L2e:
            r1 = move-exception
            r1.printStackTrace()
            goto L28
        L33:
            r1 = move-exception
            r1 = r0
        L35:
            r1.close()     // Catch: java.lang.Exception -> L41
        L38:
            r5.close()     // Catch: java.lang.Exception -> L3c
            goto L28
        L3c:
            r1 = move-exception
            r1.printStackTrace()
            goto L28
        L41:
            r1 = move-exception
            r1.printStackTrace()
            goto L38
        L46:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L4a:
            r1.close()     // Catch: java.lang.Exception -> L51
        L4d:
            r5.close()     // Catch: java.lang.Exception -> L56
        L50:
            throw r0
        L51:
            r1 = move-exception
            r1.printStackTrace()
            goto L4d
        L56:
            r1 = move-exception
            r1.printStackTrace()
            goto L50
        L5b:
            r0 = move-exception
            goto L4a
        L5d:
            r2 = move-exception
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.buu.m5456l(java.io.InputStream):java.lang.String");
    }

    /* renamed from: aa */
    public static String m5457aa(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            cArr2[i] = cArr[(b >>> 4) & 15];
            i = i2 + 1;
            cArr2[i2] = cArr[b & 15];
        }
        return new String(cArr2);
    }
}
