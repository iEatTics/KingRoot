package com.kingroot.kinguser;

import java.util.Properties;
/* loaded from: classes.dex */
public class akk {
    private static final cce<akq> sInstance = new cce<akq>() { // from class: com.kingroot.kinguser.akk.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: AP */
        public akq create() {
            return (akq) C3729uv.m1971kM().m1973a(C1041a.m11260AQ(), akq.class);
        }
    };

    /* renamed from: AO */
    public static akq m11262AO() {
        return sInstance.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.akk$a */
    /* loaded from: classes.dex */
    public static class C1041a implements akq {
        private static final cce<C1041a> sInstance = new cce<C1041a>() { // from class: com.kingroot.kinguser.akk.a.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: AR */
            public C1041a create() {
                return new C1041a();
            }
        };

        /* renamed from: GA */
        private Properties f1463GA;
        private final Object avz;

        private C1041a() {
            this.f1463GA = null;
            this.avz = new Object();
        }

        @InterfaceC3726ut
        /* renamed from: AQ */
        public static C1041a m11260AQ() {
            return sInstance.get();
        }

        @Override // com.kingroot.kinguser.akq
        /* renamed from: a */
        public boolean mo11156a(String str, String str2, int i, boolean z) {
            return m11259ai(aah.m13002cO(str), System.currentTimeMillis() + "|" + str2 + "|" + i + "|" + (z ? "1" : "0"));
        }

        @Override // com.kingroot.kinguser.akq
        /* renamed from: gJ */
        public boolean mo11155gJ(String str) {
            return m11259ai(aah.m13002cO(str), "");
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
            	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
            	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        @android.annotation.SuppressLint({"WorldReadableFiles"})
        /* renamed from: ai */
        private boolean m11259ai(java.lang.String r8, java.lang.String r9) {
            /*
                r7 = this;
                r1 = 1
                r0 = 0
                r3 = 0
                boolean r2 = android.text.TextUtils.isEmpty(r8)
                if (r2 == 0) goto La
            L9:
                return r0
            La:
                java.lang.Object r4 = r7.avz
                monitor-enter(r4)
                java.util.Properties r2 = r7.f1463GA     // Catch: java.lang.Throwable -> L4c
                if (r2 != 0) goto L2a
                java.util.Properties r2 = new java.util.Properties     // Catch: java.lang.Throwable -> L4c
                r2.<init>()     // Catch: java.lang.Throwable -> L4c
                r7.f1463GA = r2     // Catch: java.lang.Throwable -> L4c
                android.content.Context r2 = com.kingroot.master.app.KUApplication.m13453ge()     // Catch: java.lang.Throwable -> L46
                java.lang.String r5 = "air.dat"
                java.io.FileInputStream r2 = r2.openFileInput(r5)     // Catch: java.lang.Throwable -> L46
                java.util.Properties r5 = r7.f1463GA     // Catch: java.lang.Throwable -> L62
                r5.load(r2)     // Catch: java.lang.Throwable -> L62
                com.kingroot.kinguser.C3945za.m1340c(r2)     // Catch: java.lang.Throwable -> L4c
            L2a:
                java.util.Properties r2 = r7.f1463GA     // Catch: java.lang.Throwable -> L4c
                r2.put(r8, r9)     // Catch: java.lang.Throwable -> L4c
                android.content.Context r2 = com.kingroot.master.app.KUApplication.m13453ge()     // Catch: java.lang.Throwable -> L54
                java.lang.String r5 = "air.dat"
                r6 = 1
                java.io.FileOutputStream r3 = r2.openFileOutput(r5, r6)     // Catch: java.lang.Throwable -> L54
                java.util.Properties r2 = r7.f1463GA     // Catch: java.lang.Throwable -> L54
                r5 = 0
                r2.store(r3, r5)     // Catch: java.lang.Throwable -> L54
                com.kingroot.kinguser.C3945za.m1340c(r3)     // Catch: java.lang.Throwable -> L4c
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L4c
                r0 = r1
                goto L9
            L46:
                r2 = move-exception
                r2 = r3
            L48:
                com.kingroot.kinguser.C3945za.m1340c(r2)     // Catch: java.lang.Throwable -> L4c
                goto L2a
            L4c:
                r0 = move-exception
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L4c
                throw r0
            L4f:
                r0 = move-exception
            L50:
                com.kingroot.kinguser.C3945za.m1340c(r3)     // Catch: java.lang.Throwable -> L4c
                throw r0     // Catch: java.lang.Throwable -> L4c
            L54:
                r1 = move-exception
                com.kingroot.kinguser.C3945za.m1340c(r3)     // Catch: java.lang.Throwable -> L4c
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L4c
                goto L9
            L5a:
                r0 = move-exception
                com.kingroot.kinguser.C3945za.m1340c(r3)     // Catch: java.lang.Throwable -> L4c
                throw r0     // Catch: java.lang.Throwable -> L4c
            L5f:
                r0 = move-exception
                r3 = r2
                goto L50
            L62:
                r5 = move-exception
                goto L48
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.akk.C1041a.m11259ai(java.lang.String, java.lang.String):boolean");
        }
    }
}
