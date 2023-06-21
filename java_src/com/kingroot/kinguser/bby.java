package com.kingroot.kinguser;

import com.kingroot.kinguser.model.RootMgrAppModel;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class bby {
    private static final String TAG = aiq.asa + "_RootAuthRecycler";

    /* renamed from: WY */
    public static void m7752WY() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bby.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bby.m7751WZ();
                bby.m7750hW(1);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: WZ */
    public static synchronized void m7751WZ() {
        synchronized (bby.class) {
            List<RootMgrAppModel> allAppsInfo = bbt.m7780WG().getAllAppsInfo();
            HashSet hashSet = new HashSet();
            for (RootMgrAppModel rootMgrAppModel : allAppsInfo) {
                String packageName = rootMgrAppModel.aQQ.getPackageName();
                if (!m7748kr(packageName)) {
                    hashSet.add(packageName);
                }
            }
            if (hashSet.size() != 0) {
                bbz.m7742c(hashSet, new HashSet());
            }
        }
    }

    /* renamed from: kr */
    private static boolean m7748kr(String str) {
        int m8886jn = auw.m8886jn(str);
        return m8886jn == 2 || m8886jn == 6;
    }

    /* renamed from: ks */
    public static void m7747ks(final String str) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bby.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bby.m7746kt(str);
                bby.m7750hW(1);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: kt */
    public static synchronized void m7746kt(String str) {
        synchronized (bby.class) {
            if (!m7748kr(str)) {
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                bbz.m7742c(hashSet, new HashSet());
            }
        }
    }

    /* renamed from: hW */
    public static synchronized void m7750hW(int i) {
        synchronized (bby.class) {
            bca m7738Xa = bca.m7738Xa();
            List<String> m7735hg = m7738Xa.m7735hg(i);
            List<String> m7734hh = m7738Xa.m7734hh(i);
            if (m7735hg.size() != 0 || m7734hh.size() != 0) {
                bbz.m7742c(new HashSet(m7735hg), new HashSet(m7734hh));
            }
        }
    }
}
