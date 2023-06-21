package com.kingroot.kinguser;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.kingroot.kinguser.ls */
/* loaded from: classes.dex */
public final class C3287ls {

    /* renamed from: va */
    private static volatile C3287ls f3018va;

    /* renamed from: ec */
    public static C3287ls m3151ec() {
        if (f3018va == null) {
            synchronized (C3287ls.class) {
                if (f3018va == null) {
                    f3018va = new C3287ls();
                }
            }
        }
        return f3018va;
    }

    /* renamed from: ed */
    public void m3150ed() {
        File file = new File("/data/local/tmp/.uranus");
        if (!file.exists() || !file.isDirectory()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("mkdir /data/local/tmp/.uranus");
            arrayList.add("chown 2000:2000 /data/local/tmp/.uranus");
            arrayList.add("chmod 0777 /data/local/tmp/.uranus");
            InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
            if (interfaceC3195it.mo3126h(true)) {
                interfaceC3195it.mo3125l(arrayList);
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
    /* renamed from: bf */
    private static java.util.ArrayList<java.lang.String> m3152bf(java.lang.String r5) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.io.File r3 = new java.io.File
            r3.<init>(r5)
            boolean r1 = r3.exists()
            if (r1 != 0) goto L11
        L10:
            return r0
        L11:
            r2 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L46
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L46
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L46
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L46
        L1c:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto L2f
            r0.add(r2)     // Catch: java.lang.Throwable -> L26
            goto L1c
        L26:
            r2 = move-exception
        L27:
            if (r1 == 0) goto L10
            r1.close()     // Catch: java.lang.Throwable -> L2d
            goto L10
        L2d:
            r1 = move-exception
            goto L10
        L2f:
            r1.close()     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L10
            r1.close()     // Catch: java.lang.Throwable -> L38
            goto L10
        L38:
            r1 = move-exception
            goto L10
        L3a:
            r0 = move-exception
        L3b:
            if (r2 == 0) goto L40
            r2.close()     // Catch: java.lang.Throwable -> L41
        L40:
            throw r0
        L41:
            r1 = move-exception
            goto L40
        L43:
            r0 = move-exception
            r2 = r1
            goto L3b
        L46:
            r1 = move-exception
            r1 = r2
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3287ls.m3152bf(java.lang.String):java.util.ArrayList");
    }

    /* renamed from: ee */
    public boolean m3149ee() {
        String str = "/data/local/tmp/.uranus" + File.separator + "system";
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        interfaceC3195it.mo3126h(true);
        interfaceC3195it.mo3131aC("chmod 0777 " + str);
        Iterator<String> it = m3152bf(str).iterator();
        while (it.hasNext()) {
            if ("1".equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ef */
    public void m3148ef() {
        String str = "/data/local/tmp/.uranus" + File.separator + "system";
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (interfaceC3195it.mo3126h(true)) {
            interfaceC3195it.mo3131aC("rm " + str);
        }
    }
}
