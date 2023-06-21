package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.activitys.AppsMarketWellChosenAppsActivity;
import com.kingroot.kinguser.common.check.DaemonRunningCheckUnit;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public class bbe extends AbstractC3634th {
    public static final String beB = AbstractC3976zt.get("ia2");
    public static final String beC = AbstractC3976zt.get("ia1");
    public static final String beD = AbstractC3976zt.get("ia3");
    private static final bed beI = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbe.6
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            arv.m9501NB();
            if (aks.m11143BP().m10978Ey() != 2) {
                arv m9499Nz = arv.m9499Nz();
                if (!arv.m9499Nz().isWeSecureInstalled() && m9499Nz.getAllRiskApps().size() != 0 && C3748vb.m1921O(KUApplication.m13453ge()) == 0) {
                    m9499Nz.downloadWeSecure();
                }
            }
        }
    });
    private static bed beJ = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbe.7
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bbe.7.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    int m11519aP = aix.m11519aP(true);
                    if (m11519aP != 0 && m11519aP != 16) {
                        adm.m12480st().m12502cx(m11519aP);
                        aks.m11143BP().m10906aP(System.currentTimeMillis());
                        return null;
                    }
                    return null;
                }
            }, new Object[0]);
        }
    });
    private bed beE = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbe.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            C3840wl.m1550d(bbe.this.beK);
            boolean m11522yz = aiv.m11525yw().m11522yz();
            if (m11522yz) {
                akl m11257AS = akl.m11257AS();
                m11257AS.m11188ed(0);
                m11257AS.m11216aA(0L);
                m11257AS.m11189ec(0);
                m11257AS.m11196az(0L);
            }
            baj.m7936Vv().pullPluginOrderAsync(true);
            if (aii.m11642xL().m11639xO() && ahl.m11725xm().m11723xo() && akr.m11154BL().m11153BM()) {
                adm.m12480st().m12475sy();
            }
            aon.m9911Kg().m9909Ki();
            bct.m7586Yf();
            aih.m11645xI().m11646aK(m11522yz);
            avd.m8853Rq().mo8850Rl();
            ahg.m11770wT().refresh();
            bfo.aau().aav();
            bfp.aay().aaz();
            ama.m10466HV().mo10399rW();
            bfm.aah().mo7276ZU();
            alv.m10524Hq().mo10415Hu();
            alv.m10524Hq().mo10416Ht();
            if (acu.m12571g(akl.m11257AS().m11243BG(), 86400000L)) {
                als.m10538Hi().mo10417Hm();
                akl.m11257AS().m11210aG(System.currentTimeMillis());
            }
        }
    });
    private bed beF = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbe.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aks m11143BP = aks.m11143BP();
            bdx.m7488jS();
            aih.m11645xI().m11644xJ();
            ava.m8873Rg();
            asw.m9355OB();
            avv.m8742Sj().mo8731uv();
            aeb.m12285tV().m12284tW();
            bbe.m7850Wj();
            ajz.m11359dU(0);
            ail.m11618xT().m11619p(0, false);
            long currentTimeMillis = System.currentTimeMillis();
            if (adk.m12539b(m11143BP.m11105Cb(), currentTimeMillis, 14400000L)) {
                m11143BP.m10911aK(currentTimeMillis);
                beg.m7461Zj().m7450c(bbe.this.beG);
                bbo.m7795Wv().clearTimeOutLogs();
                aeg.m12265um().mo12196uj();
                adm.m12480st().m12487sI();
            }
            ajy.m11366zJ();
            ajv.m11387zD().m11384zG();
            adm.m12480st().m12486sJ();
            adm.m12480st().m12483sM();
            if (aii.m11642xL().m11639xO() && ahl.m11725xm().m11723xo() && akr.m11154BL().m11153BM()) {
                adm.m12480st().m12474sz();
            }
            awg.m8662SL();
            bfn.aaq();
            try {
                bbe.this.m7852Wh();
            } catch (Throwable th) {
            }
            if (AppsMarketWellChosenAppsActivity.m12634vs()) {
                int intValue = alx.m10508HB().mo10407HD().intValue();
                alx.m10508HB().mo10401fl(intValue);
                alx.m10508HB().mo10400fm(intValue);
            }
        }
    });
    private bed beG = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbe.4
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ajr.m11429zu();
            DaemonRunningCheckUnit.m4274zf();
        }
    });
    private bed beH = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbe.5
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ajb.m11487yT().checkAsync(false, true, null);
            bdx.m7488jS();
            aig.m11655xA();
            aba.m12857qD();
            asj.m9463NT();
            beg.m7461Zj().m7450c(bbe.beI);
            bbx.m7755WW();
            bcr.m7604XT().m7608ig(2);
            ayg.m8019UZ();
            C3840wl.m1551c(bbe.this.beK, 10000L);
            awj.m8644ST();
        }
    });
    private Runnable beK = new Runnable() { // from class: com.kingroot.kinguser.bbe.8
        @Override // java.lang.Runnable
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            if (adk.m12539b(aks.m11143BP().m11050De(), currentTimeMillis, 14400000L)) {
                aks.m11143BP().m10853ba(currentTimeMillis);
                aiv.m11525yw().m11538dC(0);
                return;
            }
            aiv.m11525yw().m11537dD(0);
        }
    };

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(final Context context, final Intent intent) {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bbe.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                String action = intent.getAction();
                if (action != null) {
                    try {
                        if (bbe.beB.equalsIgnoreCase(action)) {
                            bbe.this.m7842bj(context);
                        } else if (bbe.beC.equalsIgnoreCase(action)) {
                            bbe.this.m7844bh(context);
                        } else if (bbe.beD.equalsIgnoreCase(action)) {
                            bbe.this.m7843bi(context);
                        }
                        return null;
                    } catch (Exception e) {
                        return null;
                    }
                }
                return null;
            }
        }, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bh */
    public void m7844bh(Context context) {
        beg.m7461Zj().m7450c(this.beE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    @WorkerThread
    /* renamed from: Wh */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m7852Wh() {
        boolean m8008Ve;
        akw m10690Gx = akw.m10690Gx();
        if (!m10690Gx.m10693GB() && !m7851Wi()) {
            int m10694GA = m10690Gx.m10694GA();
            switch (m10694GA) {
                case 0:
                    try {
                        m8008Ve = ayl.m8008Ve();
                        m10690Gx.m10687bO(System.currentTimeMillis());
                        aye.m8028UP().mo1746bi(262913);
                        m10690Gx.m10686eT(!m8008Ve ? 1 : 2);
                        if (!m8008Ve) {
                            if (m10694GA == 0) {
                                baj.m7936Vv().pullPluginOrderSync(true);
                                baj.m7936Vv().processLocalOrderSync(1);
                            }
                            if (((IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class)).getInstalledKlPackage(5004) == null) {
                                try {
                                    ayv.m7982Vm();
                                    akw.m10690Gx().m10692GC();
                                    ady.m12308tK().mo1746bi(100561);
                                    return;
                                } catch (ayi e) {
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    } catch (ayh e2) {
                        return;
                    } catch (ayi e3) {
                        return;
                    } catch (ayk e4) {
                        return;
                    }
                case 1:
                    if (((IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class)).getInstalledKlPackage(5004) == null) {
                    }
                    break;
                case 2:
                    if (!adk.m12538g(m10690Gx.m10691GD(), 864000000L)) {
                        return;
                    }
                    m8008Ve = ayl.m8008Ve();
                    m10690Gx.m10687bO(System.currentTimeMillis());
                    aye.m8028UP().mo1746bi(262913);
                    m10690Gx.m10686eT(!m8008Ve ? 1 : 2);
                    if (!m8008Ve) {
                    }
                    break;
                default:
                    m10690Gx.m10692GC();
                    return;
            }
        }
    }

    /* renamed from: Wi */
    private boolean m7851Wi() {
        try {
            ApplicationInfo applicationInfo = C3952zh.m1312pq().getApplicationInfo("com.tencent.qqpimsecure", 0);
            if (applicationInfo != null) {
                File file = new File(applicationInfo.sourceDir);
                if (file.exists()) {
                    r0 = acu.m12571g(file.lastModified(), 86400000L) ? false : true;
                    if (r0) {
                        aye.m8028UP().mo1746bi(265180);
                    } else {
                        aye.m8028UP().mo1746bi(265181);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return r0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bi */
    public void m7843bi(Context context) {
        beg.m7461Zj().m7450c(this.beF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bj */
    public void m7842bj(Context context) {
        beg.m7461Zj().m7450c(this.beH);
    }

    /* renamed from: Wj */
    public static void m7850Wj() {
        if (adk.m12539b(aks.m11143BP().m11087Ct(), System.currentTimeMillis(), 604800000L)) {
            beg.m7461Zj().m7450c(beJ);
        }
    }
}
