package com.kingroot.kinguser;

import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;
/* loaded from: classes.dex */
public final class bnl {
    /* renamed from: ae */
    public static String m6227ae(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: ag */
    public static String m6226ag(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: aj */
    public static String m6225aj(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            return "";
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
    /* renamed from: eq */
    public static java.lang.String m6224eq(boolean r7) {
        /*
            r3 = 0
            if (r7 == 0) goto L66
            java.lang.String r1 = "/sys/block/mmcblk0/device/"
            java.lang.String r0 = "MMC"
        L7:
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L79
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L79
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L79
            r5.<init>()     // Catch: java.lang.Throwable -> L79
            java.lang.StringBuilder r5 = r5.append(r1)     // Catch: java.lang.Throwable -> L79
            java.lang.String r6 = "type"
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: java.lang.Throwable -> L79
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L79
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L79
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = r4.readLine()     // Catch: java.lang.Throwable -> La8
            if (r2 == 0) goto L6c
            java.lang.String r2 = r2.toUpperCase()     // Catch: java.lang.Throwable -> La8
            boolean r0 = r2.equals(r0)     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto L6c
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> La8
            java.io.FileReader r0 = new java.io.FileReader     // Catch: java.lang.Throwable -> La8
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La8
            r5.<init>()     // Catch: java.lang.Throwable -> La8
            java.lang.StringBuilder r1 = r5.append(r1)     // Catch: java.lang.Throwable -> La8
            java.lang.String r5 = "cid"
            java.lang.StringBuilder r1 = r1.append(r5)     // Catch: java.lang.Throwable -> La8
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La8
            r0.<init>(r1)     // Catch: java.lang.Throwable -> La8
            r2.<init>(r0)     // Catch: java.lang.Throwable -> La8
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> Lac
            if (r0 == 0) goto L6b
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> Lac
            if (r4 == 0) goto L60
            r4.close()     // Catch: java.io.IOException -> L95
        L60:
            if (r2 == 0) goto L65
            r2.close()     // Catch: java.io.IOException -> L97
        L65:
            return r0
        L66:
            java.lang.String r1 = "/sys/block/mmcblk1/device/"
            java.lang.String r0 = "SD"
            goto L7
        L6b:
            r3 = r2
        L6c:
            if (r4 == 0) goto L71
            r4.close()     // Catch: java.io.IOException -> L99
        L71:
            if (r3 == 0) goto L76
            r3.close()     // Catch: java.io.IOException -> L9b
        L76:
            java.lang.String r0 = ""
            goto L65
        L79:
            r0 = move-exception
            r0 = r3
        L7b:
            if (r3 == 0) goto L80
            r3.close()     // Catch: java.io.IOException -> L9d
        L80:
            if (r0 == 0) goto L76
            r0.close()     // Catch: java.io.IOException -> L86
            goto L76
        L86:
            r0 = move-exception
            goto L76
        L88:
            r0 = move-exception
            r4 = r3
        L8a:
            if (r4 == 0) goto L8f
            r4.close()     // Catch: java.io.IOException -> L9f
        L8f:
            if (r3 == 0) goto L94
            r3.close()     // Catch: java.io.IOException -> La1
        L94:
            throw r0
        L95:
            r1 = move-exception
            goto L60
        L97:
            r1 = move-exception
            goto L65
        L99:
            r0 = move-exception
            goto L71
        L9b:
            r0 = move-exception
            goto L76
        L9d:
            r1 = move-exception
            goto L80
        L9f:
            r1 = move-exception
            goto L8f
        La1:
            r1 = move-exception
            goto L94
        La3:
            r0 = move-exception
            goto L8a
        La5:
            r0 = move-exception
            r3 = r2
            goto L8a
        La8:
            r0 = move-exception
            r0 = r3
            r3 = r4
            goto L7b
        Lac:
            r0 = move-exception
            r0 = r2
            r3 = r4
            goto L7b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bnl.m6224eq(boolean):java.lang.String");
    }
}
