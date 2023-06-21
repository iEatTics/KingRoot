package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class avk {
    protected int aTx;
    protected final Object mLock = new Object();
    private final C2585br aTy = new C2585br();
    private long aTz = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public avk(int i) {
        this.aTx = -1;
        this.aTx = i;
        this.aTy.f2063kU = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    /* renamed from: Ry */
    public final C2585br m8826Ry() {
        C2585br c2585br;
        synchronized (this.mLock) {
            File m8827RB = m8827RB();
            if (m8827RB.exists() && this.aTz != m8827RB.lastModified()) {
                m8828RA();
            }
            if (this.aTy.f2063kU == null) {
                this.aTy.f2063kU = new ArrayList<>();
            }
            c2585br = this.aTy;
        }
        return c2585br;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: Rz */
    protected void m8825Rz() {
        /*
            r8 = this;
            com.kingroot.kinguser.br r0 = r8.aTy
            if (r0 == 0) goto L9
            int r0 = r8.aTx
            r1 = -1
            if (r0 != r1) goto La
        L9:
            return
        La:
            int r0 = r8.aTx
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r1 = r1.append(r0)
            java.lang.String r2 = ".xdat"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.io.File r3 = new java.io.File
            android.content.Context r2 = com.kingroot.master.app.KUApplication.m13453ge()
            java.io.File r2 = r2.getFilesDir()
            r3.<init>(r2, r1)
            r2 = 0
            com.qq.jce.wup.UniAttribute r1 = new com.qq.jce.wup.UniAttribute     // Catch: java.lang.Throwable -> L94
            r1.<init>()     // Catch: java.lang.Throwable -> L94
            java.lang.String r4 = "UTF-8"
            r1.setEncodeName(r4)     // Catch: java.lang.Throwable -> L94
            com.kingroot.kinguser.br r4 = r8.aTy     // Catch: java.lang.Throwable -> L94
            r1.put(r0, r4)     // Catch: java.lang.Throwable -> L94
            byte[] r0 = r1.encode()     // Catch: java.lang.Throwable -> L94
            if (r0 != 0) goto L4a
            com.kingroot.kinguser.C3945za.m1340c(r2)
            goto L9
        L4a:
            com.kingroot.kinguser.aae$a r1 = com.kingroot.kinguser.aae.EnumC0609a.XXTEA2     // Catch: java.lang.Throwable -> L94
            com.kingroot.kinguser.aaf r1 = com.kingroot.kinguser.aae.m13007a(r1)     // Catch: java.lang.Throwable -> L94
            byte[] r0 = r1.mo12989C(r0)     // Catch: java.lang.Throwable -> L94
            if (r0 != 0) goto L5a
            com.kingroot.kinguser.C3945za.m1340c(r2)
            goto L9
        L5a:
            com.kingroot.kinguser.aen r4 = new com.kingroot.kinguser.aen     // Catch: java.lang.Throwable -> L94
            r1 = 1
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L94
            int r5 = (int) r6     // Catch: java.lang.Throwable -> L94
            r6 = 16
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L94
            r4.<init>(r1, r5, r6)     // Catch: java.lang.Throwable -> L94
            java.lang.Object r5 = r8.mLock     // Catch: java.lang.Throwable -> L94
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L94
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L82
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L82
            com.kingroot.kinguser.aen.m12181a(r4, r1)     // Catch: java.lang.Throwable -> L96
            r1.write(r0)     // Catch: java.lang.Throwable -> L96
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L96
            com.kingroot.kinguser.C3945za.m1340c(r1)
        L7b:
            long r0 = r3.lastModified()
            r8.aTz = r0
            goto L9
        L82:
            r0 = move-exception
            r1 = r2
        L84:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L96
            throw r0     // Catch: java.lang.Throwable -> L86
        L86:
            r0 = move-exception
            r2 = r1
        L88:
            com.kingroot.kinguser.C3945za.m1340c(r2)
            goto L7b
        L8c:
            r0 = move-exception
        L8d:
            com.kingroot.kinguser.C3945za.m1340c(r2)
            throw r0
        L91:
            r0 = move-exception
            r2 = r1
            goto L8d
        L94:
            r0 = move-exception
            goto L88
        L96:
            r0 = move-exception
            goto L84
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.avk.m8825Rz():void");
    }

    /* renamed from: RA */
    private void m8828RA() {
        if (this.aTx != -1) {
            Context ge = KUApplication.m13453ge();
            synchronized (this.mLock) {
                File m8827RB = m8827RB();
                if (m8827RB.exists()) {
                    this.aTz = m8827RB.lastModified();
                }
                C2585br c2585br = (C2585br) aeq.m12173b(ge, m8827RB.getParent(), m8827RB.getName(), String.valueOf(this.aTx), new C2585br(), "UTF-8");
                if (c2585br != null && c2585br.f2063kU != null) {
                    this.aTy.f2063kU.clear();
                    this.aTy.f2063kU.addAll(c2585br.f2063kU);
                    mo8705a(this.aTy);
                }
            }
        }
    }

    @NonNull
    /* renamed from: RB */
    private File m8827RB() {
        return new File(KUApplication.m13453ge().getFilesDir(), String.valueOf(this.aTx) + ".xdat");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo8705a(@NonNull C2585br c2585br) {
    }
}
