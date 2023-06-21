package com.kingroot.kinguser;

import android.text.TextUtils;
import android.view.View;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.afv;
import com.tencent.qqpim.discovery.AdDisplayModel;
import com.tencent.qqpim.discovery.AdRequestData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class afu {
    private AdRequestData ajj;
    private brk ajk;
    private List<AdDisplayModel> ajl;
    private afv ajm;

    /* renamed from: com.kingroot.kinguser.afu$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0829a {
        /* renamed from: a */
        void mo8437a(AdDisplayModel adDisplayModel);

        /* renamed from: cT */
        void mo8436cT(int i);
    }

    /* renamed from: com.kingroot.kinguser.afu$b */
    /* loaded from: classes.dex */
    static class C0830b {
        private static final afu ajp = new afu();
    }

    /* renamed from: vB */
    public static afu m12017vB() {
        return C0830b.ajp;
    }

    private afu() {
        this.ajl = new ArrayList();
        init();
    }

    public void init() {
        if (aks.m11143BP().m10952FY()) {
            this.ajm = (afv) C3729uv.m1971kM().m1973a(afv.C0832a.m12012vE(), afv.class);
            bre.m5698n(KApplication.m13453ge(), 1);
            bre.m5699eD(false);
            bre.ahy().m5700a(new afy());
            bre.ahy().m5701a(new afx());
            bre.ahy().m5702a(new afw());
            this.ajj = new AdRequestData();
            this.ajj.bJp = 90001001;
            this.ajj.bJL = 1;
            this.ajj.bJM = new ArrayList<>();
            this.ajj.bJM.add(25);
            this.ajk = new brk(this.ajj);
            aea.m12288g(1, 0, 0);
        }
    }

    /* renamed from: a */
    public void m12021a(boolean z, final InterfaceC0829a interfaceC0829a) {
        if (!bre.isInitialized()) {
            if (interfaceC0829a != null) {
                interfaceC0829a.mo8436cT(-1);
            }
        } else if (z || acu.m12571g(aks.m11143BP().m10955FV(), 86400000L)) {
            this.ajk.m5695a(new brd() { // from class: com.kingroot.kinguser.afu.1
                @Override // com.kingroot.kinguser.brd
                /* renamed from: a */
                public void mo5706a(brc brcVar) {
                    ArrayList<String> arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    List<AdDisplayModel> ahD = ((brk) brcVar).ahD();
                    if (!C3942yy.m1351d(ahD)) {
                        for (AdDisplayModel adDisplayModel : ahD) {
                            if (adDisplayModel != null) {
                                arrayList.add(adDisplayModel.bJv);
                            }
                        }
                        for (String str : arrayList) {
                            if (!TextUtils.isEmpty(str) && !apv.m9735LO().m9720ia(str)) {
                                arrayList2.add(str);
                            }
                        }
                        afu.this.ajm.mo12014ad(arrayList);
                    }
                    aks.m11143BP().m10873bJ(System.currentTimeMillis());
                    if (interfaceC0829a != null) {
                        interfaceC0829a.mo8437a(null);
                    }
                }

                @Override // com.kingroot.kinguser.brd
                /* renamed from: c */
                public void mo5704c(AdDisplayModel adDisplayModel) {
                    aea.m12288g(5, 0, 1);
                }

                @Override // com.kingroot.kinguser.brd
                /* renamed from: d */
                public void mo5703d(AdDisplayModel adDisplayModel) {
                }

                @Override // com.kingroot.kinguser.brd
                /* renamed from: a */
                public void mo5705a(brc brcVar, int i) {
                    if (interfaceC0829a != null) {
                        interfaceC0829a.mo8436cT(i);
                    }
                }
            });
            this.ajk.ahC();
            aea.m12294b(8, z ? 1 : 2, 0, 0);
        }
    }

    /* renamed from: a */
    public void m12025a(View view, AdDisplayModel adDisplayModel) {
        if (bre.isInitialized()) {
            this.ajk.m5688b(view, adDisplayModel);
        }
    }

    /* renamed from: a */
    public void m12024a(final InterfaceC0829a interfaceC0829a) {
        if (bre.isInitialized()) {
            this.ajk.m5695a(new brd() { // from class: com.kingroot.kinguser.afu.2
                @Override // com.kingroot.kinguser.brd
                /* renamed from: a */
                public void mo5706a(brc brcVar) {
                    afu.this.ajl = ((brk) brcVar).ahD();
                    if (!C3942yy.m1351d(afu.this.ajl)) {
                        AdDisplayModel m12016vC = afu.this.m12016vC();
                        if (m12016vC != null) {
                            if (interfaceC0829a != null) {
                                interfaceC0829a.mo8437a(m12016vC);
                            }
                        } else if (interfaceC0829a != null) {
                            interfaceC0829a.mo8436cT(-1);
                        }
                    }
                }

                @Override // com.kingroot.kinguser.brd
                /* renamed from: c */
                public void mo5704c(AdDisplayModel adDisplayModel) {
                    aea.m12288g(5, 0, 1);
                }

                @Override // com.kingroot.kinguser.brd
                /* renamed from: d */
                public void mo5703d(AdDisplayModel adDisplayModel) {
                }

                @Override // com.kingroot.kinguser.brd
                /* renamed from: a */
                public void mo5705a(brc brcVar, int i) {
                    if (interfaceC0829a != null) {
                        interfaceC0829a.mo8436cT(i);
                    }
                }
            });
            this.ajk.ahE();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: vC */
    public AdDisplayModel m12016vC() {
        for (AdDisplayModel adDisplayModel : this.ajl) {
            if (m12019b(adDisplayModel)) {
                return adDisplayModel;
            }
        }
        return null;
    }

    /* renamed from: b */
    private boolean m12019b(AdDisplayModel adDisplayModel) {
        boolean z = false;
        if (adDisplayModel != null) {
            if (adDisplayModel.bJG == 0) {
                z = System.currentTimeMillis() >= ((long) adDisplayModel.bJB);
            } else {
                z = System.currentTimeMillis() - adDisplayModel.bJG >= ((((long) adDisplayModel.bJD) > 0L ? 1 : (((long) adDisplayModel.bJD) == 0L ? 0 : -1)) == 0 ? 14400000L : (long) (adDisplayModel.bJD * 1000));
            }
            if (z && !(z = apv.m9735LO().m9720ia(adDisplayModel.bJv))) {
                this.ajm.mo12013fj(adDisplayModel.bJv);
            }
        }
        return z;
    }
}
