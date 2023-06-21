package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.uh */
/* loaded from: classes.dex */
public class C3694uh {

    /* renamed from: Io */
    private static C3694uh f3623Io = null;

    /* renamed from: ky */
    public static C3694uh m2035ky() {
        if (f3623Io == null) {
            synchronized (C3694uh.class) {
                if (f3623Io == null) {
                    f3623Io = new C3694uh();
                }
            }
        }
        return f3623Io;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: i */
    public java.lang.CharSequence m2036i(java.lang.String r8, int r9) {
        /*
            r7 = this;
            r6 = 0
            android.content.Context r0 = com.kingroot.common.app.KApplication.m13453ge()
            android.content.ContentResolver r0 = r0.getContentResolver()
            int r1 = com.kingroot.kinguser.abd.m12839qb()
            r2 = 11
            if (r1 >= r2) goto L4d
            java.lang.String r1 = com.kingroot.kinguser.C3693ug.m2037jq()     // Catch: java.lang.Throwable -> L41
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L41
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L41
            r3 = 0
            r2[r3] = r8     // Catch: java.lang.Throwable -> L41
            r3 = 1
            java.lang.String r4 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L41
            r2[r3] = r4     // Catch: java.lang.Throwable -> L41
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L41
            if (r1 == 0) goto L7f
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = "value"
            int r0 = r1.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L7c
        L3c:
            com.kingroot.kinguser.C3945za.m1338d(r1)
        L3f:
            r6 = r0
        L40:
            return r6
        L41:
            r0 = move-exception
            r0 = r6
        L43:
            com.kingroot.kinguser.C3945za.m1338d(r0)
            r0 = r6
            goto L3f
        L48:
            r0 = move-exception
        L49:
            com.kingroot.kinguser.C3945za.m1338d(r6)
            throw r0
        L4d:
            android.os.Bundle r1 = new android.os.Bundle     // Catch: java.lang.Throwable -> L77
            r1.<init>()     // Catch: java.lang.Throwable -> L77
            java.lang.String r2 = "pkg"
            r1.putString(r2, r8)     // Catch: java.lang.Throwable -> L77
            java.lang.String r2 = "resid"
            r1.putInt(r2, r9)     // Catch: java.lang.Throwable -> L77
            java.lang.String r2 = com.kingroot.kinguser.C3693ug.m2037jq()     // Catch: java.lang.Throwable -> L77
            android.net.Uri r2 = android.net.Uri.parse(r2)     // Catch: java.lang.Throwable -> L77
            java.lang.String r3 = com.kingroot.kinguser.C3693ug.m2037jq()     // Catch: java.lang.Throwable -> L77
            java.lang.String r4 = ""
            android.os.Bundle r0 = r0.call(r2, r3, r4, r1)     // Catch: java.lang.Throwable -> L77
            if (r0 == 0) goto L40
            java.lang.String r1 = "text"
            java.lang.CharSequence r6 = r0.getCharSequence(r1)     // Catch: java.lang.Throwable -> L77
            goto L40
        L77:
            r0 = move-exception
            goto L40
        L79:
            r0 = move-exception
            r6 = r1
            goto L49
        L7c:
            r0 = move-exception
            r0 = r1
            goto L43
        L7f:
            r0 = r6
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3694uh.m2036i(java.lang.String, int):java.lang.CharSequence");
    }
}
