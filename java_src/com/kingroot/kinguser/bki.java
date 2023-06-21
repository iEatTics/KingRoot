package com.kingroot.kinguser;

import com.kingroot.kinguser.bwb;
import com.kingroot.loader.sdk.KlInfo;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class bki {

    /* renamed from: b */
    private static final String f1719b = bki.class.getName();

    /* renamed from: c */
    private static ArrayList<C2668by> f1720c = null;

    /* renamed from: a */
    static boolean f1718a = false;

    /* renamed from: b */
    public static boolean m6567b(KlInfo klInfo) {
        int m5351il = bvz.m5351il();
        int aiG = bvz.aiG();
        bkq.m6545i(f1719b, "isSupportKl, Pi[" + klInfo.packageName + "] isSupport ? Host id: " + m5351il + " | ver: " + aiG);
        if (m5351il == klInfo.buildHostId && aiG == klInfo.buildHostVersion) {
            bkq.m6545i(f1719b, "isSupportKl, Pi[" + klInfo.packageName + "] isSupport? true, matches current host");
            return true;
        }
        ArrayList<C2668by> aeK = aeK();
        if (aeK != null && aeK.size() > 0) {
            Iterator<C2668by> it = aeK.iterator();
            while (it.hasNext()) {
                C2668by next = it.next();
                bkq.m6545i(f1719b, "isSupportKl, Pi[" + klInfo.packageName + "] isSupport? Support host id: " + next.f2154id + " | ver: " + next.f2155lp + " - " + next.f2156lq);
                if (klInfo.buildHostId == next.f2154id && klInfo.buildHostVersion >= next.f2155lp && klInfo.buildHostVersion <= next.f2156lq) {
                    bkq.m6545i(f1719b, "isSupportKl, Pi[" + klInfo.packageName + "] isSupport? true, matches support host list");
                    return true;
                }
            }
        } else {
            bkq.m6545i(f1719b, "isSupportKl, support host list is empty");
        }
        return false;
    }

    private static ArrayList<C2668by> aeK() {
        m6568a();
        return f1720c;
    }

    /* renamed from: a */
    static void m6568a() {
        if (!f1718a) {
            try {
                bwb.C2643a aiH = bvz.aiH();
                if (aiH != null) {
                    if (f1720c == null) {
                        f1720c = new ArrayList<>();
                        f1720c.addAll(aiH.f2138xt);
                    }
                    if (bkd.aeF()) {
                        if (f1720c != null) {
                            bkq.m6545i(f1719b, "-------Support Host--------");
                            Iterator<C2668by> it = f1720c.iterator();
                            while (it.hasNext()) {
                                C2668by next = it.next();
                                bkq.m6545i(f1719b, "" + next.f2154id + " | " + next.f2155lp + " | " + next.f2156lq);
                            }
                            bkq.m6545i(f1719b, "------------------------------");
                        } else {
                            bkq.m6545i(f1719b, "support host list is null");
                        }
                    }
                    f1718a = true;
                    return;
                }
                bkq.m6548e(f1719b, "MeriAppGen.getMeriAppBase() is null");
            } catch (Throwable th) {
                bkq.m6545i(f1719b, "read support msg, err: " + th.getMessage());
                f1718a = false;
            }
        }
    }
}
