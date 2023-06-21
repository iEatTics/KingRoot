package com.kingroot.kinguser;

import java.util.Properties;
/* loaded from: classes.dex */
public class akz {
    private static volatile akz avN = null;

    /* renamed from: GA */
    private Properties f1466GA;

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    private akz() {
        /*
            r4 = this;
            r4.<init>()
            java.util.Properties r0 = new java.util.Properties
            r0.<init>()
            r4.f1466GA = r0
            r0 = 0
            android.content.Context r1 = com.kingroot.master.app.KUApplication.m13453ge()     // Catch: java.lang.Throwable -> L1e
            java.lang.String r2 = "kinguser.cfg"
            java.io.FileInputStream r0 = r1.openFileInput(r2)     // Catch: java.lang.Throwable -> L1e
            java.util.Properties r1 = r4.f1466GA     // Catch: java.lang.Throwable -> L1e
            r1.load(r0)     // Catch: java.lang.Throwable -> L1e
            com.kingroot.kinguser.C3945za.m1340c(r0)
        L1d:
            return
        L1e:
            r1 = move-exception
            com.kingroot.kinguser.C3945za.m1340c(r0)
            goto L1d
        L23:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
        L27:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            throw r0
        L2b:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.akz.<init>():void");
    }

    /* renamed from: GJ */
    public static akz m10670GJ() {
        if (avN == null) {
            synchronized (akz.class) {
                if (avN == null) {
                    avN = new akz();
                }
            }
        }
        return avN;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: am */
    public void m10669am(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            r0 = 0
            java.util.Properties r1 = r5.f1466GA
            r1.setProperty(r6, r7)
            android.content.Context r1 = com.kingroot.master.app.KUApplication.m13453ge()     // Catch: java.lang.Throwable -> L1b
            java.lang.String r2 = "kinguser.cfg"
            r3 = 0
            java.io.FileOutputStream r0 = r1.openFileOutput(r2, r3)     // Catch: java.lang.Throwable -> L1b
            java.util.Properties r1 = r5.f1466GA     // Catch: java.lang.Throwable -> L1b
            r2 = 0
            r1.store(r0, r2)     // Catch: java.lang.Throwable -> L1b
            com.kingroot.kinguser.C3945za.m1340c(r0)
        L1a:
            return
        L1b:
            r1 = move-exception
            com.kingroot.kinguser.C3945za.m1340c(r0)
            goto L1a
        L20:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L24:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            throw r0
        L28:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.akz.m10669am(java.lang.String, java.lang.String):void");
    }

    /* renamed from: eV */
    public void m10668eV(int i) {
        m10669am(bha.bpv, Integer.toString(i));
    }
}
