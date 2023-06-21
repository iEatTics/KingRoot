package com.kingroot.kinguser;

import android.os.Environment;
import com.kingroot.common.utils.system.VTCmdResult;
import java.io.File;
/* renamed from: com.kingroot.kinguser.rp */
/* loaded from: classes.dex */
public class C3559rp {

    /* renamed from: Gh */
    private static final String f3496Gh = Environment.getDataDirectory().getPath() + "/oppo/boot/bootallow.txt";

    /* renamed from: Gi */
    private static final String f3497Gi = Environment.getDataDirectory().getPath() + "/oppo/boot/bootoption.txt";

    /* renamed from: Gj */
    private static final String f3498Gj = Environment.getDataDirectory().getPath() + "/oppo/boot/bootwhitelist.txt";

    /* renamed from: Gk */
    private static final String f3499Gk = bzt.m5101ge().getDatabasePath("bootallow.txt").getAbsolutePath();

    /* renamed from: Gl */
    private static final String f3500Gl = bzt.m5101ge().getDatabasePath("bootoption.txt").getAbsolutePath();

    /* renamed from: Gm */
    private static final String f3501Gm = bzt.m5101ge().getDatabasePath("bootwhitelist.txt").getAbsolutePath();
    private static final cce<C3559rp> sInstance = new cce<C3559rp>() { // from class: com.kingroot.kinguser.rp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: iT */
        public C3559rp create() {
            return new C3559rp();
        }
    };

    /* renamed from: iN */
    public static C3559rp m2380iN() {
        return sInstance.get();
    }

    private C3559rp() {
    }

    /* renamed from: iO */
    public boolean m2379iO() {
        C3951zg.m1322d("OppoAutoStart", "ALLOW_PATH_SYS = " + f3496Gh);
        C3951zg.m1322d("OppoAutoStart", "OPTION_PATH_SYS = " + f3497Gi);
        C3951zg.m1322d("OppoAutoStart", "WHITELIST_PATH_SYS = " + f3498Gj);
        C3951zg.m1322d("OppoAutoStart", "ALLOW_PATH_KING = " + f3499Gk);
        C3951zg.m1322d("OppoAutoStart", "OPTION_PATH_KING = " + f3500Gl);
        C3951zg.m1322d("OppoAutoStart", "WHITELIST_PATH_KING = " + f3501Gm);
        try {
            VTCmdResult m12846el = abc.m12845qK().m12846el("cat " + f3496Gh + " > " + f3499Gk);
            VTCmdResult m12846el2 = abc.m12845qK().m12846el("cat " + f3497Gi + " > " + f3500Gl);
            if (m12846el.success() && m12846el2.success()) {
                abc.m12845qK().m12846el("cat " + f3498Gj + " > " + f3501Gm);
                abc.m12845qK().m12846el("chmod 777 -R " + f3499Gk);
                abc.m12845qK().m12846el("chmod 777 -R " + f3500Gl);
                abc.m12845qK().m12846el("chmod 777 -R " + f3501Gm);
                return m2378iP();
            }
        } catch (Throwable th) {
        }
        return false;
    }

    /* renamed from: iP */
    private boolean m2378iP() {
        boolean m2383cr = m2383cr(f3499Gk);
        boolean m2382cs = m2382cs(f3500Gl);
        m2383cr(f3501Gm);
        return m2383cr && m2382cs;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: cr */
    private boolean m2383cr(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3559rp.m2383cr(java.lang.String):boolean");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: cs */
    private boolean m2382cs(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3559rp.m2382cs(java.lang.String):boolean");
    }

    /* renamed from: ct */
    private boolean m2381ct(String str) {
        if (str.equals(f3499Gk)) {
            return m2377iQ();
        }
        if (str.equals(f3500Gl)) {
            return m2376iR();
        }
        if (str.equals(f3501Gm)) {
            return m2375iS();
        }
        return false;
    }

    /* renamed from: iQ */
    private boolean m2377iQ() {
        String str = "cat " + f3499Gk + " > " + f3496Gh;
        C3951zg.m1322d("OppoAutoStart", "copyKmTxtToSys | cmdAllow = " + str);
        boolean success = abc.m12845qK().m12846el(str).success();
        File file = new File(f3499Gk);
        if (file != null && file.exists()) {
            file.delete();
        }
        return success;
    }

    /* renamed from: iR */
    private boolean m2376iR() {
        String str = "cat " + f3500Gl + " > " + f3497Gi;
        C3951zg.m1322d("OppoAutoStart", "copyKmTxtToSys | cmdOption = " + str);
        boolean success = abc.m12845qK().m12846el(str).success();
        File file = new File(f3500Gl);
        if (file != null && file.exists()) {
            file.delete();
        }
        return success;
    }

    /* renamed from: iS */
    private boolean m2375iS() {
        String str = "cat " + f3501Gm + " > " + f3498Gj;
        C3951zg.m1322d("OppoAutoStart", "copyKmTxtToSys | cmdWhitelist = " + str);
        boolean success = abc.m12845qK().m12846el(str).success();
        File file = new File(f3501Gm);
        if (file != null && file.exists()) {
            file.delete();
        }
        return success;
    }
}
