package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.kingroot.loader.common.KlConst;
import java.io.Serializable;
/* renamed from: com.kingroot.kinguser.sm */
/* loaded from: classes.dex */
public class C3600sm implements InterfaceC3598sk {

    /* renamed from: GG */
    private String f3526GG;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3600sm(String str) {
        this.f3526GG = str;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // com.kingroot.kinguser.InterfaceC3598sk
    /* renamed from: jp */
    public java.lang.Object mo2254jp() {
        /*
            r7 = this;
            r6 = 0
            android.content.Context r0 = com.kingroot.kinguser.bzt.m5101ge()
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r1.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r2 = com.kingroot.kinguser.C3601sn.m2256jq()     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r2 = r7.f3526GG     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L5a
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L5a
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L5a
            if (r1 == 0) goto L53
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L74
            if (r0 == 0) goto L53
            java.lang.String r0 = "value"
            int r0 = r1.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L74
            byte[] r0 = r1.getBlob(r0)     // Catch: java.lang.Throwable -> L74
            if (r0 != 0) goto L47
            if (r1 == 0) goto L45
            r1.close()     // Catch: java.lang.Throwable -> L6b
        L45:
            r0 = r6
        L46:
            return r0
        L47:
            java.lang.Object r0 = com.kingroot.kinguser.C3604sq.m2243y(r0)     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L46
            r1.close()     // Catch: java.lang.Throwable -> L51
            goto L46
        L51:
            r1 = move-exception
            goto L46
        L53:
            if (r1 == 0) goto L58
            r1.close()     // Catch: java.lang.Throwable -> L6d
        L58:
            r0 = r6
            goto L46
        L5a:
            r0 = move-exception
            r0 = r6
        L5c:
            if (r0 == 0) goto L58
            r0.close()     // Catch: java.lang.Throwable -> L62
            goto L58
        L62:
            r0 = move-exception
            goto L58
        L64:
            r0 = move-exception
        L65:
            if (r6 == 0) goto L6a
            r6.close()     // Catch: java.lang.Throwable -> L6f
        L6a:
            throw r0
        L6b:
            r0 = move-exception
            goto L45
        L6d:
            r0 = move-exception
            goto L58
        L6f:
            r1 = move-exception
            goto L6a
        L71:
            r0 = move-exception
            r6 = r1
            goto L65
        L74:
            r0 = move-exception
            r0 = r1
            goto L5c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3600sm.mo2254jp():java.lang.Object");
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    /* renamed from: b */
    public boolean mo2255b(Object obj) {
        byte[] m2248c;
        if ((obj instanceof Serializable) && (m2248c = C3604sq.m2248c(obj)) != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(KlConst.PLUGIN_DATA_DIR_NAME, m2248c);
            try {
                return bzt.m5101ge().getContentResolver().update(Uri.parse(new StringBuilder().append(C3601sn.m2256jq()).append(this.f3526GG).toString()), contentValues, null, null) == 1;
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    public boolean exists() {
        Cursor cursor = null;
        try {
            Cursor query = bzt.m5101ge().getContentResolver().query(Uri.parse(C3601sn.m2256jq() + this.f3526GG), null, null, null, null);
            boolean z = query != null;
            if (query != null) {
                try {
                    query.close();
                    return z;
                } catch (Throwable th) {
                    return z;
                }
            }
            return z;
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    cursor.close();
                } catch (Throwable th3) {
                }
            }
            return false;
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    public boolean delete() {
        int i = -1;
        try {
            i = bzt.m5101ge().getContentResolver().delete(Uri.parse(C3601sn.m2256jq() + this.f3526GG), null, null);
        } catch (Throwable th) {
        }
        return i == 0;
    }
}
