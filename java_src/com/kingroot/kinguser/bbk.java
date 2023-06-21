package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes.dex */
public class bbk {
    private static final cce<bbk> sInstance = new cce<bbk>() { // from class: com.kingroot.kinguser.bbk.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Wr */
        public bbk create() {
            return new bbk();
        }
    };
    private static int bff = 0;
    private static String bfg = "http://mp.kingroot.net/qrcode?desc=%s&sceneType=fp&app=3";

    /* renamed from: bF */
    static /* synthetic */ int m7813bF(int i) {
        bff = i;
        return i;
    }

    private bbk() {
    }

    /* renamed from: Wo */
    public static bbk m7817Wo() {
        return sInstance.get();
    }

    /* renamed from: bk */
    public void m7812bk(Context context) {
        if (m7815Wq()) {
            new C2072a(context).m1530ny();
        }
    }

    /* renamed from: bl */
    public String m7811bl(Context context) {
        if (m7816Wp()) {
            File file = new File(context.getCacheDir(), "wechat_qrcode");
            if (file.exists() && file.length() > 0) {
                return file.getAbsolutePath();
            }
            bff = -1;
            return null;
        }
        return null;
    }

    /* renamed from: com.kingroot.kinguser.bbk$a */
    /* loaded from: classes.dex */
    static class C2072a extends RunnableC3845wo {
        private Context mContext;

        public C2072a(Context context) {
            this.mContext = context;
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
            	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
            	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            /*
                r8 = this;
                r1 = 0
                r0 = 1
                com.kingroot.kinguser.bbk.m7813bF(r0)
                java.lang.String r0 = com.kingroot.kinguser.bbm.m7801Wu()
                java.lang.String r2 = com.kingroot.kinguser.bbm.m7800dI()
                java.lang.String r0 = com.kingroot.kinguser.bbk.m7814aK(r0, r2)
                java.io.File r4 = new java.io.File
                android.content.Context r2 = r8.mContext
                java.io.File r2 = r2.getCacheDir()
                java.lang.String r3 = "wechat_qrcode"
                r4.<init>(r2, r3)
                java.lang.String r2 = "Android"
                android.content.Context r3 = r8.mContext     // Catch: java.lang.Throwable -> L65
                android.net.http.AndroidHttpClient r3 = android.net.http.AndroidHttpClient.newInstance(r2, r3)     // Catch: java.lang.Throwable -> L65
                org.apache.http.params.HttpParams r2 = r3.getParams()     // Catch: java.lang.Throwable -> L98
                java.lang.String r5 = "http.protocol.handle-redirects"
                r6 = 1
                java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)     // Catch: java.lang.Throwable -> L98
                r2.setParameter(r5, r6)     // Catch: java.lang.Throwable -> L98
                org.apache.http.client.methods.HttpGet r2 = new org.apache.http.client.methods.HttpGet     // Catch: java.lang.Throwable -> L98
                r2.<init>(r0)     // Catch: java.lang.Throwable -> L98
                org.apache.http.HttpResponse r0 = r3.execute(r2)     // Catch: java.lang.Throwable -> L98
                org.apache.http.HttpEntity r0 = r0.getEntity()     // Catch: java.lang.Throwable -> L98
                java.io.InputStream r2 = r0.getContent()     // Catch: java.lang.Throwable -> L98
                java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L9c
                r0.<init>(r4)     // Catch: java.lang.Throwable -> L9c
                com.kingroot.kinguser.C3945za.m1335e(r2, r0)     // Catch: java.lang.Throwable -> La1
                java.nio.channels.FileChannel r1 = r0.getChannel()     // Catch: java.lang.Throwable -> La1
                r4 = 1
                r1.force(r4)     // Catch: java.lang.Throwable -> La1
                r1 = 2
                com.kingroot.kinguser.bbk.m7813bF(r1)     // Catch: java.lang.Throwable -> La1
                com.kingroot.kinguser.C3945za.m1340c(r0)
                com.kingroot.kinguser.C3945za.m1340c(r2)
                if (r3 == 0) goto L64
                r3.close()
            L64:
                return
            L65:
                r0 = move-exception
                r0 = r1
                r2 = r1
            L68:
                r3 = -1
                com.kingroot.kinguser.bbk.m7813bF(r3)     // Catch: java.lang.Throwable -> L91
                com.kingroot.kinguser.C3945za.m1340c(r0)
                com.kingroot.kinguser.C3945za.m1340c(r1)
                if (r2 == 0) goto L64
                r2.close()
                goto L64
            L78:
                r0 = move-exception
                r2 = r1
                r3 = r1
            L7b:
                com.kingroot.kinguser.C3945za.m1340c(r1)
                com.kingroot.kinguser.C3945za.m1340c(r2)
                if (r3 == 0) goto L86
                r3.close()
            L86:
                throw r0
            L87:
                r0 = move-exception
                r2 = r1
                goto L7b
            L8a:
                r0 = move-exception
                goto L7b
            L8c:
                r1 = move-exception
                r7 = r1
                r1 = r0
                r0 = r7
                goto L7b
            L91:
                r3 = move-exception
                r7 = r3
                r3 = r2
                r2 = r1
                r1 = r0
                r0 = r7
                goto L7b
            L98:
                r0 = move-exception
                r0 = r1
                r2 = r3
                goto L68
            L9c:
                r0 = move-exception
                r0 = r1
                r1 = r2
                r2 = r3
                goto L68
            La1:
                r1 = move-exception
                r1 = r2
                r2 = r3
                goto L68
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bbk.C2072a.run():void");
        }
    }

    /* renamed from: Wp */
    public boolean m7816Wp() {
        return bff == 2;
    }

    /* renamed from: Wq */
    public boolean m7815Wq() {
        return bff == 0 || bff == -1;
    }

    /* renamed from: aK */
    public static String m7814aK(String str, String str2) {
        try {
            return String.format(bfg, URLEncoder.encode(str + "|" + str2 + "|100101", "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }
}
