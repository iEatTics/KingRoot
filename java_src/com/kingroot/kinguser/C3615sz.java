package com.kingroot.kinguser;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.sz */
/* loaded from: classes.dex */
public class C3615sz implements InterfaceC3610su {
    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public void mo2208a(C3613sx c3613sx) {
        if (c3613sx != null) {
            try {
                bzt.m5101ge().getContentResolver().insert(Uri.parse(C3617ta.m2212jq()), c3613sx.m2220L(false));
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public void mo2206a(C3613sx[] c3613sxArr) {
        if (c3613sxArr != null && c3613sxArr.length != 0) {
            ContentValues[] contentValuesArr = new ContentValues[c3613sxArr.length];
            for (int i = 0; i < c3613sxArr.length; i++) {
                contentValuesArr[i] = c3613sxArr[i].m2220L(false);
            }
            try {
                KApplication.m13453ge().getContentResolver().bulkInsert(Uri.parse(C3617ta.m2212jq()), contentValuesArr);
            } catch (Throwable th) {
            }
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
    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: ju */
    public java.util.List<com.kingroot.kinguser.C3613sx> mo2201ju() {
        /*
            r7 = this;
            r6 = 0
            android.content.Context r0 = com.kingroot.kinguser.bzt.m5101ge()     // Catch: java.lang.Throwable -> L28
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L28
            java.lang.String r1 = com.kingroot.kinguser.C3617ta.m2212jq()     // Catch: java.lang.Throwable -> L28
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L28
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L28
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L41
            r0.<init>()     // Catch: java.lang.Throwable -> L41
            r2 = 0
            com.kingroot.kinguser.C3613sx.m2216a(r0, r1, r2)     // Catch: java.lang.Throwable -> L41
            if (r1 == 0) goto L27
            r1.close()     // Catch: java.lang.Throwable -> L38
        L27:
            return r0
        L28:
            r0 = move-exception
            r0 = r6
        L2a:
            if (r0 == 0) goto L2f
            r0.close()     // Catch: java.lang.Throwable -> L3a
        L2f:
            r0 = r6
            goto L27
        L31:
            r0 = move-exception
        L32:
            if (r6 == 0) goto L37
            r6.close()     // Catch: java.lang.Throwable -> L3c
        L37:
            throw r0
        L38:
            r1 = move-exception
            goto L27
        L3a:
            r0 = move-exception
            goto L2f
        L3c:
            r1 = move-exception
            goto L37
        L3e:
            r0 = move-exception
            r6 = r1
            goto L32
        L41:
            r0 = move-exception
            r0 = r1
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3615sz.mo2201ju():java.util.List");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: aS */
    public java.util.List<com.kingroot.kinguser.C3613sx> mo2205aS(int r8) {
        /*
            r7 = this;
            r6 = 0
            android.content.Context r0 = com.kingroot.kinguser.bzt.m5101ge()     // Catch: java.lang.Throwable -> L2b
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r1 = com.kingroot.kinguser.C3617ta.m2212jq()     // Catch: java.lang.Throwable -> L2b
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L2b
            r2 = 0
            java.lang.String r3 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L2b
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L2b
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L44
            r0.<init>()     // Catch: java.lang.Throwable -> L44
            r2 = 0
            com.kingroot.kinguser.C3613sx.m2216a(r0, r1, r2)     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L2a
            r1.close()     // Catch: java.lang.Throwable -> L3b
        L2a:
            return r0
        L2b:
            r0 = move-exception
            r0 = r6
        L2d:
            if (r0 == 0) goto L32
            r0.close()     // Catch: java.lang.Throwable -> L3d
        L32:
            r0 = r6
            goto L2a
        L34:
            r0 = move-exception
        L35:
            if (r6 == 0) goto L3a
            r6.close()     // Catch: java.lang.Throwable -> L3f
        L3a:
            throw r0
        L3b:
            r1 = move-exception
            goto L2a
        L3d:
            r0 = move-exception
            goto L32
        L3f:
            r1 = move-exception
            goto L3a
        L41:
            r0 = move-exception
            r6 = r1
            goto L35
        L44:
            r0 = move-exception
            r0 = r1
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3615sz.mo2205aS(int):java.util.List");
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    public void clear() {
        clear(false);
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    public void clear(boolean z) {
        try {
            ContentResolver contentResolver = bzt.m5101ge().getContentResolver();
            if (z) {
                contentResolver.delete(Uri.parse(C3617ta.m2212jq()), null, new String[]{"0"});
            } else {
                contentResolver.delete(Uri.parse(C3617ta.m2212jq()), null, null);
            }
        } catch (Throwable th) {
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: c */
    public void mo2202c(int[] iArr) {
        if (iArr != null) {
            Context m5101ge = bzt.m5101ge();
            try {
                StringBuilder sb = new StringBuilder();
                for (int i : iArr) {
                    sb.append(i).append(",");
                }
                m5101ge.getContentResolver().delete(Uri.parse(C3617ta.m2212jq()), sb.substring(0, sb.lastIndexOf(",")), null);
            } catch (Throwable th) {
            }
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
    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: b */
    public java.util.List<com.kingroot.kinguser.C3613sx> mo2204b(int r9, int r10, java.lang.String r11) {
        /*
            r8 = this;
            r6 = 0
            android.content.Context r0 = com.kingroot.kinguser.bzt.m5101ge()     // Catch: java.lang.Throwable -> L37
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L37
            java.lang.String r1 = com.kingroot.kinguser.C3617ta.m2212jq()     // Catch: java.lang.Throwable -> L37
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L37
            r2 = 0
            java.lang.String r3 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L37
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L37
            r5 = 0
            java.lang.String r7 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L37
            r4[r5] = r7     // Catch: java.lang.Throwable -> L37
            r5 = 1
            r4[r5] = r11     // Catch: java.lang.Throwable -> L37
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L37
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L50
            r0.<init>()     // Catch: java.lang.Throwable -> L50
            r2 = 0
            com.kingroot.kinguser.C3613sx.m2216a(r0, r1, r2)     // Catch: java.lang.Throwable -> L50
            if (r1 == 0) goto L36
            r1.close()     // Catch: java.lang.Throwable -> L47
        L36:
            return r0
        L37:
            r0 = move-exception
            r0 = r6
        L39:
            if (r0 == 0) goto L3e
            r0.close()     // Catch: java.lang.Throwable -> L49
        L3e:
            r0 = r6
            goto L36
        L40:
            r0 = move-exception
        L41:
            if (r6 == 0) goto L46
            r6.close()     // Catch: java.lang.Throwable -> L4b
        L46:
            throw r0
        L47:
            r1 = move-exception
            goto L36
        L49:
            r0 = move-exception
            goto L3e
        L4b:
            r1 = move-exception
            goto L46
        L4d:
            r0 = move-exception
            r6 = r1
            goto L41
        L50:
            r0 = move-exception
            r0 = r1
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3615sz.mo2204b(int, int, java.lang.String):java.util.List");
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public void mo2209a(int i, String[] strArr, C3613sx c3613sx) {
        if (strArr != null && c3613sx != null) {
            try {
                bzt.m5101ge().getContentResolver().update(Uri.parse(C3617ta.m2212jq()), c3613sx.m2220L(false), String.valueOf(i), strArr);
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public void mo2210a(int i, String[] strArr, int i2, int i3, C3613sx c3613sx) {
        if (strArr != null) {
            Context m5101ge = bzt.m5101ge();
            try {
                m5101ge.getContentResolver().update(Uri.parse(C3617ta.m2212jq()), c3613sx == null ? null : c3613sx.m2220L(false), String.valueOf(i) + ";" + i2 + ";" + i3, strArr);
            } catch (Throwable th) {
            }
        }
    }
}
