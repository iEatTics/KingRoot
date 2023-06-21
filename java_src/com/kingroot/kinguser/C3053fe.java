package com.kingroot.kinguser;

import android.os.Build;
import cloudsdk.shell.VTCommand;
/* renamed from: com.kingroot.kinguser.fe */
/* loaded from: classes.dex */
public final class C3053fe {
    /* renamed from: Y */
    public static C3055fg m3864Y(String str) {
        C3055fg c3055fg;
        try {
            c3055fg = new C3055fg(str);
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 14 && i < 20) {
                    c3055fg.m3856Z("export LD_LIBRARY_PATH=/vendor/lib:/system/lib");
                    return c3055fg;
                }
                return c3055fg;
            } catch (Throwable th) {
                if (c3055fg != null) {
                    c3055fg.shutdown();
                    return null;
                }
                return c3055fg;
            }
        } catch (Throwable th2) {
            c3055fg = null;
        }
    }

    /* renamed from: Z */
    public static C3057fi m3863Z(String str) {
        return m3861b(str, true);
    }

    /* renamed from: b */
    public static C3057fi m3861b(String str, boolean z) {
        return m3862a(new C3058fj(str, str, z ? VTCommand.TIMEOUT_DEFAULT : 0L));
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
    public static com.kingroot.kinguser.C3057fi m3862a(com.kingroot.kinguser.C3058fj r6) {
        /*
            r1 = 0
            java.lang.String r0 = "sh"
            com.kingroot.kinguser.fg r0 = m3864Y(r0)     // Catch: java.lang.Throwable -> L26
            if (r0 == 0) goto Ld
            com.kingroot.kinguser.fi r1 = r0.m3854a(r6)     // Catch: java.lang.Throwable -> L3b
        Ld:
            if (r0 == 0) goto L3f
            r0.shutdown()
            r0 = r1
        L13:
            if (r0 != 0) goto L25
            com.kingroot.kinguser.fi r0 = new com.kingroot.kinguser.fi
            java.lang.String r1 = r6.f2671ag
            r2 = 2
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            r0.<init>(r1, r2, r3, r4)
        L25:
            return r0
        L26:
            r0 = move-exception
            r0 = r1
        L28:
            if (r0 == 0) goto L3d
            r0.shutdown()
            r0 = r1
            goto L13
        L2f:
            r0 = move-exception
        L30:
            if (r1 == 0) goto L35
            r1.shutdown()
        L35:
            throw r0
        L36:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L30
        L3b:
            r2 = move-exception
            goto L28
        L3d:
            r0 = r1
            goto L13
        L3f:
            r0 = r1
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3053fe.m3862a(com.kingroot.kinguser.fj):com.kingroot.kinguser.fi");
    }
}
