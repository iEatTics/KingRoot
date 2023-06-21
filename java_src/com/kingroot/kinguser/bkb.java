package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.loader.sdk.KlConfig;
import com.kingroot.loader.sdk.KlInfo;
/* loaded from: classes.dex */
public class bkb {
    private bka byR;

    public bkb(Context context) {
        this.byR = bka.m6589bA(context);
    }

    /* renamed from: b */
    public void m6580b(KlInfo klInfo, KlConfig klConfig) {
        if (klInfo != null) {
            this.byR.m6585d("kl_info_table_1", klInfo.transferToContentValues());
        }
        if (klConfig != null) {
            this.byR.m6585d("kl_config_1", klConfig.transferToContentValues());
        }
    }

    /* renamed from: a */
    public void m6584a(int i) {
        this.byR.m6586c("kl_config_1", "xa = ?", new String[]{"" + i});
    }

    /* renamed from: b */
    public void m6581b(int i) {
        String[] strArr = {"" + i};
        this.byR.m6586c("kl_info_table_1", "xl = ?", strArr);
        this.byR.m6586c("kl_config_1", "xa = ?", strArr);
    }

    /* renamed from: a */
    public void m6582a(KlInfo klInfo) {
        this.byR.m6587c("kl_info_table_1", klInfo.transferToContentValues(), "xl = ?", new String[]{"" + klInfo.pluginId});
    }

    /* renamed from: a */
    public void m6583a(KlConfig klConfig) {
        this.byR.m6587c("kl_config_1", klConfig.transferToContentValues(), "xa = ?", new String[]{"" + klConfig.getPluginId()});
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public java.util.List<com.kingroot.loader.sdk.KlInfo> aeD() {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bkb.aeD():java.util.List");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public java.util.List<com.kingroot.loader.sdk.KlConfig> aeE() {
        /*
            r11 = this;
            r8 = 0
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r0 = 2
            java.lang.String[] r2 = new java.lang.String[r0]
            r0 = 0
            java.lang.String r1 = "xa"
            r2[r0] = r1
            r0 = 1
            java.lang.String r1 = "xb"
            r2[r0] = r1
            com.kingroot.kinguser.bka r0 = r11.byR     // Catch: java.lang.Throwable -> L98
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch: java.lang.Throwable -> L98
            java.lang.String r1 = "kl_config_1"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L9b
            if (r2 == 0) goto L51
            int r1 = r2.getCount()     // Catch: java.lang.Throwable -> L61
            if (r1 <= 0) goto L51
            r2.moveToFirst()     // Catch: java.lang.Throwable -> L61
        L2f:
            java.lang.String r1 = "xa"
            int r1 = r2.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L5c
            int r1 = r2.getInt(r1)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = "xb"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L5c
            int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> L5c
            com.kingroot.loader.sdk.KlConfig r4 = new com.kingroot.loader.sdk.KlConfig     // Catch: java.lang.Throwable -> L5c
            r4.<init>(r1, r3)     // Catch: java.lang.Throwable -> L5c
            r9.add(r4)     // Catch: java.lang.Throwable -> L5c
        L4b:
            boolean r1 = r2.moveToNext()     // Catch: java.lang.Throwable -> L61
            if (r1 != 0) goto L2f
        L51:
            if (r2 == 0) goto L56
            r2.close()     // Catch: java.lang.Throwable -> L82
        L56:
            if (r0 == 0) goto L5b
            r0.close()     // Catch: java.lang.Throwable -> L84
        L5b:
            return r9
        L5c:
            r1 = move-exception
            com.kingroot.kinguser.bkq.m6550d(r1)     // Catch: java.lang.Throwable -> L61
            goto L4b
        L61:
            r1 = move-exception
            r8 = r0
            r0 = r1
            r1 = r2
        L65:
            com.kingroot.kinguser.bkq.m6550d(r0)     // Catch: java.lang.Throwable -> L95
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.lang.Throwable -> L86
        L6d:
            if (r8 == 0) goto L5b
            r8.close()     // Catch: java.lang.Throwable -> L73
            goto L5b
        L73:
            r0 = move-exception
            goto L5b
        L75:
            r0 = move-exception
            r2 = r8
        L77:
            if (r2 == 0) goto L7c
            r2.close()     // Catch: java.lang.Throwable -> L88
        L7c:
            if (r8 == 0) goto L81
            r8.close()     // Catch: java.lang.Throwable -> L8a
        L81:
            throw r0
        L82:
            r1 = move-exception
            goto L56
        L84:
            r0 = move-exception
            goto L5b
        L86:
            r0 = move-exception
            goto L6d
        L88:
            r1 = move-exception
            goto L7c
        L8a:
            r1 = move-exception
            goto L81
        L8c:
            r1 = move-exception
            r2 = r8
            r8 = r0
            r0 = r1
            goto L77
        L91:
            r1 = move-exception
            r8 = r0
            r0 = r1
            goto L77
        L95:
            r0 = move-exception
            r2 = r1
            goto L77
        L98:
            r0 = move-exception
            r1 = r8
            goto L65
        L9b:
            r1 = move-exception
            r10 = r1
            r1 = r8
            r8 = r0
            r0 = r10
            goto L65
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bkb.aeE():java.util.List");
    }
}
