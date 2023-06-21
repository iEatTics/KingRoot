package com.kingroot.kinguser;

import java.util.Properties;
/* renamed from: com.kingroot.kinguser.sh */
/* loaded from: classes.dex */
class C3593sh extends AbstractC3591sf {

    /* renamed from: GA */
    private Properties f3520GA;

    /* renamed from: GB */
    private Runnable f3521GB;

    /* renamed from: a */
    static /* synthetic */ Properties m2264a(C3593sh c3593sh) {
        return c3593sh.f3520GA;
    }

    public C3593sh(String str) {
        super(str);
        this.f3520GA = null;
        this.f3521GB = new Runnable() { // from class: com.kingroot.kinguser.sh.1
            @Override // java.lang.Runnable
            public void run() {
                new Thread(new Runnable() { // from class: com.kingroot.kinguser.sh.1.1
                    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
                        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
                        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
                        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
                        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
                        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
                        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
                        */
                    @Override // java.lang.Runnable
                    public void run() {
                        /*
                            r6 = this;
                            com.kingroot.kinguser.sh$1 r0 = com.kingroot.kinguser.C3593sh.RunnableC35941.this
                            com.kingroot.kinguser.sh r2 = com.kingroot.kinguser.C3593sh.this
                            monitor-enter(r2)
                            r1 = 0
                            com.kingroot.kinguser.sh$1 r0 = com.kingroot.kinguser.C3593sh.RunnableC35941.this     // Catch: java.lang.Throwable -> L37
                            com.kingroot.kinguser.sh r0 = com.kingroot.kinguser.C3593sh.this     // Catch: java.lang.Throwable -> L37
                            java.lang.String r3 = r0.m2266jk()     // Catch: java.lang.Throwable -> L37
                            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L37
                            if (r0 == 0) goto L19
                            com.kingroot.kinguser.C3945za.m1340c(r1)     // Catch: java.lang.Throwable -> L34
                            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
                        L18:
                            return
                        L19:
                            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L37
                            r4 = 0
                            r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L37
                            com.kingroot.kinguser.sh$1 r1 = com.kingroot.kinguser.C3593sh.RunnableC35941.this     // Catch: java.lang.Throwable -> L47
                            com.kingroot.kinguser.sh r1 = com.kingroot.kinguser.C3593sh.this     // Catch: java.lang.Throwable -> L47
                            java.util.Properties r1 = com.kingroot.kinguser.C3593sh.m2264a(r1)     // Catch: java.lang.Throwable -> L47
                            java.lang.String r3 = ""
                            r1.store(r0, r3)     // Catch: java.lang.Throwable -> L47
                            r0.close()     // Catch: java.lang.Throwable -> L47
                            com.kingroot.kinguser.C3945za.m1340c(r0)     // Catch: java.lang.Throwable -> L34
                        L32:
                            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
                            goto L18
                        L34:
                            r0 = move-exception
                            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
                            throw r0
                        L37:
                            r0 = move-exception
                            r0 = r1
                        L39:
                            com.kingroot.kinguser.C3945za.m1340c(r0)     // Catch: java.lang.Throwable -> L34
                            goto L32
                        L3d:
                            r0 = move-exception
                        L3e:
                            com.kingroot.kinguser.C3945za.m1340c(r1)     // Catch: java.lang.Throwable -> L34
                            throw r0     // Catch: java.lang.Throwable -> L34
                        L42:
                            r1 = move-exception
                            r5 = r1
                            r1 = r0
                            r0 = r5
                            goto L3e
                        L47:
                            r1 = move-exception
                            goto L39
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3593sh.RunnableC35941.RunnableC35951.run():void");
                    }
                }).start();
            }
        };
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: jl */
    private void m2263jl() {
        /*
            r4 = this;
            java.util.Properties r0 = r4.f3520GA
            if (r0 != 0) goto L27
            java.lang.String r2 = r4.m2266jk()
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto Lf
        Le:
            return
        Lf:
            r1 = 0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L33
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L33
            java.util.Properties r1 = new java.util.Properties     // Catch: java.lang.Throwable -> L43
            r1.<init>()     // Catch: java.lang.Throwable -> L43
            r4.f3520GA = r1     // Catch: java.lang.Throwable -> L43
            java.util.Properties r1 = r4.f3520GA     // Catch: java.lang.Throwable -> L43
            r1.load(r0)     // Catch: java.lang.Throwable -> L43
            r0.close()     // Catch: java.lang.Throwable -> L43
            com.kingroot.kinguser.C3945za.m1340c(r0)
        L27:
            java.util.Properties r0 = r4.f3520GA
            if (r0 != 0) goto Le
            java.util.Properties r0 = new java.util.Properties
            r0.<init>()
            r4.f3520GA = r0
            goto Le
        L33:
            r0 = move-exception
            r0 = r1
        L35:
            com.kingroot.kinguser.C3945za.m1340c(r0)
            goto L27
        L39:
            r0 = move-exception
        L3a:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            throw r0
        L3e:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L3a
        L43:
            r1 = move-exception
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3593sh.m2263jl():void");
    }

    @Override // com.kingroot.kinguser.AbstractC3591sf
    public synchronized void put(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                m2263jl();
                this.f3520GA.setProperty(str, str2);
                m2262jm();
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3591sf
    public synchronized String getString(String str) {
        String str2 = null;
        synchronized (this) {
            if (str != null) {
                try {
                    m2263jl();
                    str2 = this.f3520GA.getProperty(str);
                } catch (Throwable th) {
                }
            }
        }
        return str2;
    }

    /* renamed from: jm */
    private void m2262jm() {
        C3840wl.m1550d(this.f3521GB);
        C3840wl.m1551c(this.f3521GB, 5000L);
    }
}
