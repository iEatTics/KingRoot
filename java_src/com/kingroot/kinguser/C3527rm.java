package com.kingroot.kinguser;

import android.os.Environment;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.rm */
/* loaded from: classes.dex */
public class C3527rm {

    /* renamed from: FY */
    private static final String f3477FY = Environment.getDataDirectory().getPath() + "/data/com.lenovo.safecenter/databases/perf_leemcenter.db";

    /* renamed from: FZ */
    private static final String f3478FZ = Environment.getDataDirectory().getPath() + "/data/com.lenovo.safecenter/databases/perf_leemcenter.db-journal";

    /* renamed from: Ga */
    private static final String f3479Ga = bzt.m5101ge().getDatabasePath("perf_leemcenter.db").getAbsolutePath();

    /* renamed from: Gb */
    private static final String f3480Gb = bzt.m5101ge().getDatabasePath("perf_leemcenter.db-journal").getAbsolutePath();
    private static final cce<C3527rm> sInstance = new cce<C3527rm>() { // from class: com.kingroot.kinguser.rm.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: iL */
        public C3527rm create() {
            return new C3527rm();
        }
    };

    /* renamed from: Gc */
    private int f3481Gc;

    /* renamed from: iG */
    public static C3527rm m2442iG() {
        return sInstance.get();
    }

    private C3527rm() {
        this.f3481Gc = 0;
    }

    /* renamed from: iH */
    public boolean m2441iH() {
        C3951zg.m1322d("LenovoAutoStart", "PERFDB_PATH_SYS = " + f3477FY);
        C3951zg.m1322d("LenovoAutoStart", "PERFDB_PATH_KM = " + f3479Ga);
        C3951zg.m1322d("LenovoAutoStart", "PERFDB_PATH_JOU_SYS = " + f3478FZ);
        C3951zg.m1322d("LenovoAutoStart", "PERFDB_PATH_JOU_KM = " + f3480Gb);
        try {
            return m2440iI();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: iI */
    private boolean m2440iI() {
        if (abc.m12845qK().m12846el("cat " + f3477FY + " > " + f3479Ga).success()) {
            abc.m12845qK().m12846el("cat " + f3478FZ + " > " + f3480Gb);
            int i = bzt.m5101ge().getApplicationInfo().uid;
            ArrayList arrayList = new ArrayList();
            m2443a(arrayList, i, f3479Ga);
            m2443a(arrayList, i, f3480Gb);
            abc.m12845qK().runRootCommands(arrayList);
            return m2439iJ();
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: iJ */
    private boolean m2439iJ() {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3527rm.m2439iJ():boolean");
    }

    /* renamed from: iK */
    private boolean m2438iK() {
        boolean success = abc.m12845qK().m12846el("cat " + f3479Ga + " > " + f3477FY).success();
        abc.m12845qK().m12846el("cat " + f3480Gb + " > " + f3478FZ);
        File file = new File(f3479Ga);
        if (file != null && file.exists()) {
            file.delete();
        }
        File file2 = new File(f3480Gb);
        if (file2 != null && file2.exists()) {
            file2.delete();
        }
        return success;
    }

    /* renamed from: a */
    private void m2443a(List<String> list, int i, String str) {
        list.add(String.format(Locale.US, "chown %d.%d %s", Integer.valueOf(i), Integer.valueOf(i), str));
        list.add(String.format(Locale.US, "chmod 0%o %s", 432, str));
        list.add(String.format(Locale.US, "restorecon -r %s", str));
    }
}
