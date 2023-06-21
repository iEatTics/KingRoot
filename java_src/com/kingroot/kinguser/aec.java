package com.kingroot.kinguser;

import com.kingroot.kinguser.bed;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class aec {
    private static volatile aec aeG;
    private bed aeH = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aec.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() > 0) {
                aec.this.m12275tY();
                Object obj = mo7445nF.get(0);
                if (obj != null) {
                    synchronized (obj) {
                        obj.notifyAll();
                    }
                }
            }
        }
    });
    private bed aeI = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aec.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            aec.this.m12279lW();
        }
    });
    private bed aeJ = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aec.3
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            aec.this.m12272ub();
        }
    });
    private bed aeK = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aec.4
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            aec.m12270ud();
            bag.m7960Vq();
        }
    });

    private aec() {
    }

    /* renamed from: tX */
    public static aec m12276tX() {
        if (aeG == null) {
            synchronized (aec.class) {
                if (aeG == null) {
                    aeG = new aec();
                }
            }
        }
        return aeG;
    }

    /* renamed from: tW */
    public void m12277tW() {
        C3799vt.m1728lT().m1727lU();
        if (!aiz.asU) {
            m12271uc();
        }
        m12273ua();
        if (adk.m12539b(aks.m11143BP().m10717ni(), System.currentTimeMillis(), 57600000L)) {
            beg.m7461Zj().m7450c(this.aeI);
        }
    }

    /* renamed from: cI */
    public void m12280cI(int i) {
        try {
            if (i > 0) {
                Object obj = new Object();
                ArrayList arrayList = new ArrayList();
                arrayList.add(obj);
                beg.m7461Zj().m7456a(this.aeH, arrayList);
                synchronized (obj) {
                    obj.wait(i);
                }
            } else {
                m12275tY();
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: tY */
    public void m12275tY() {
        if (m12279lW()) {
            m12272ub();
            m12270ud();
        }
    }

    /* renamed from: tZ */
    public void m12274tZ() {
        m12279lW();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lW */
    public boolean m12279lW() {
        List<C2037b> lB = ady.m12308tK().mo1745lB();
        lB.addAll(ady.m12308tK().mo1740lG());
        lB.addAll(ady.m12308tK().mo1738lI());
        lB.addAll(atd.m9308OU());
        lB.addAll(beh.m7443Zo().mo7439YZ());
        lB.addAll(aye.m8028UP().mo1745lB());
        lB.addAll(aye.m8028UP().mo1740lG());
        lB.addAll(aye.m8028UP().mo1738lI());
        if (cbj.akz().m5004bG(lB)) {
            aks.m11143BP().m10915T(System.currentTimeMillis());
            ady.m12308tK().mo1742lE();
            ady.m12308tK().mo1739lH();
            ady.m12308tK().mo1741lF();
            aye.m8028UP().mo1742lE();
            aye.m8028UP().mo1739lH();
            aye.m8028UP().mo1741lF();
            beh.m7443Zo().mo7438Za();
            return true;
        }
        return false;
    }

    /* renamed from: ua */
    public void m12273ua() {
        if (adk.m12539b(aks.m11143BP().m11085Cv(), System.currentTimeMillis(), 86400000L)) {
            beg.m7461Zj().m7450c(this.aeJ);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ub */
    public void m12272ub() {
        KUApplication.m13453ge();
        if (aiz.asU) {
            m12271uc();
        }
        ArrayList<C2037b> m12305tN = ady.m12308tK().m12305tN();
        m12305tN.addAll(ady.m12308tK().m12303tP());
        m12305tN.addAll(ady.m12308tK().mo1744lC());
        m12305tN.addAll(ady.m12308tK().m12301tR());
        m12305tN.addAll(aye.m8028UP().mo1744lC());
        if (!C3942yy.m1351d(m12305tN) && cbj.akz().m5004bG(m12305tN)) {
            aks.m11143BP().m10905aQ(System.currentTimeMillis());
            ady.m12308tK().m12306tM();
            ady.m12308tK().m12304tO();
            ady.m12308tK().mo1743lD();
            aks.m11143BP().m10865bO(false);
            aye.m8028UP().mo1743lD();
        }
    }

    /* renamed from: uc */
    public void m12271uc() {
        beg.m7461Zj().m7450c(this.aeK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ud */
    public static void m12270ud() {
        KUApplication.m13453ge();
        List<C2037b> lK = ady.m12308tK().mo1736lK();
        if (!C3942yy.m1351d(lK) && cbj.akz().m5004bG(lK)) {
            ady.m12308tK().mo1737lJ();
        }
    }
}
