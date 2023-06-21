package com.kingroot.kinguser;

import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class asj {
    private static volatile AtomicBoolean aMP = new AtomicBoolean(false);
    private static final bed aMQ = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.asj.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (!MainExitReceiver.m13401jI() && abc.m12845qK().isRootPermition()) {
                ArrayList arrayList = new ArrayList();
                arq.m9523gK();
                arrayList.add(new aqi());
                arrayList.add(new aqw());
                arrayList.add(new arh());
                arrayList.add(new arg());
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (!((aqb) it.next()).mo9529My()) {
                        ady.m12308tK().mo1746bi(100406);
                        aho.m11708k(KUApplication.m13453ge(), 1);
                        aks.m11143BP().m10861bS(true);
                        break;
                    }
                }
                asj.aMP.set(false);
            }
        }
    });
    private static final bed aMR = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.asj.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ArrayList<aqb> arrayList = new ArrayList();
            arq.m9523gK();
            arrayList.add(new aqi());
            arrayList.add(new aqw());
            arrayList.add(new arh());
            arrayList.add(new arg());
            for (aqb aqbVar : arrayList) {
                if (!aqbVar.mo9529My()) {
                    return;
                }
            }
            aho.m11711aO(KUApplication.m13453ge());
            aks.m11143BP().m10861bS(false);
        }
    });

    /* renamed from: NT */
    public static void m9463NT() {
        if (!aks.m11143BP().m10987Ep()) {
            long currentTimeMillis = System.currentTimeMillis();
            if (adk.m12539b(aks.m11143BP().m10988Eo(), currentTimeMillis, 86400000L) && aMP.compareAndSet(false, true)) {
                aks.m11143BP().m10835bk(currentTimeMillis);
                beg.m7461Zj().m7450c(aMQ);
            }
        }
    }

    /* renamed from: NU */
    public static void m9462NU() {
        beg.m7461Zj().m7450c(aMR);
    }
}
