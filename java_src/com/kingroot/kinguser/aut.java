package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.widget.Button;
import com.kingroot.kinguser.auk;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.security.ProtectRecorder;
import com.kingroot.kinguser.security.entity.ActionRecord;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguser.xmod.dao.ExploitLog;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.Set;
/* loaded from: classes.dex */
public class aut implements auk.InterfaceC1614a {
    private static final String TAG = aiq.asc + "_Presenter";
    private static final List<bcy> aSJ = new ArrayList();
    private final auk.InterfaceC1615b aSI;
    private final List<bcy> alI = new ArrayList();
    private final bdd aSK = new bdd();
    private boolean aSL = true;
    private boolean aSM = false;
    private bis acW = new bis(KUApplication.m13453ge());
    private bed aSN = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aut.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            final List m8928db = aut.this.m8928db(((Boolean) interfaceC2117a.mo7445nF().get(0)).booleanValue());
            aut.this.m8949br(m8928db);
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aut.1.1
                @Override // java.lang.Runnable
                public void run() {
                    aut.this.alI.clear();
                    aut.this.alI.add(aut.this.aSK);
                    aut.this.alI.addAll(m8928db);
                    aut.this.m8950bq(aut.this.alI);
                    aut.this.aSI.mo8175bm(aut.this.alI);
                }
            });
        }
    });

    public aut(@NonNull auk.InterfaceC1615b interfaceC1615b) {
        this.aSI = (auk.InterfaceC1615b) C3948zd.m1327k(interfaceC1615b);
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: cU */
    public void mo8940cU(boolean z) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Boolean.valueOf(z));
        beg.m7461Zj().m7456a(this.aSN, arrayList);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: a */
    public void mo8963a(int i, bcy bcyVar, boolean z) {
        m8942c(this.alI.get(i));
        aks.m11143BP().m10855bY(z);
        m8952b(bcyVar);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: c */
    public void mo8941c(final bdg bdgVar) {
        String title = bdgVar.getTitle();
        if (!C3952zh.m1312pq().m1314du(title)) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aut.2
                @Override // java.lang.Runnable
                public void run() {
                    aut.this.m8942c((bcy) bdgVar);
                }
            });
            bcs.m7594Yc().m7609h(Arrays.asList(title), 1);
        }
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: a */
    public void mo8961a(Button button, final int i) {
        final bcy bcyVar;
        if (i >= 0 && !C3942yy.m1352c(this.alI) && i < this.alI.size() && (bcyVar = this.alI.get(i)) != null) {
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aut.3
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    boolean z;
                    super.run();
                    if (bcyVar instanceof bdg) {
                        z = aut.this.m8951b((bdg) bcyVar, i);
                    } else if (bcyVar instanceof bdi) {
                        ady.m12308tK().mo1746bi(100467);
                        bdi bdiVar = (bdi) bcyVar;
                        apd.m9836ao(bdiVar.getTitle(), "RootSafe");
                        aut.this.aSI.mo8167f(bdiVar.m7552YC());
                        z = true;
                    } else if (bcyVar instanceof bdc) {
                        ady.m12308tK().mo1746bi(100464);
                        aut.this.aSI.mo8189Qp();
                        z = true;
                    } else if (bcyVar instanceof bda) {
                        z = false;
                        aut.this.aSI.mo8173cV(true);
                    } else {
                        z = true;
                    }
                    if (z) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aut.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                aut.this.m8942c(bcyVar);
                            }
                        });
                    }
                }
            }));
        }
    }

    /* renamed from: a */
    private void m8956a(bdg bdgVar, int i) {
        bdgVar.m7553ik(1);
        this.aSI.mo8183a(i, bdgVar);
        long currentTimeMillis = System.currentTimeMillis();
        if (bdgVar.m7561YB()) {
            bcs.m7594Yc().m7609h(Arrays.asList(bdgVar.getTitle()), 1);
        } else {
            bcr.m7604XT().m7609h(Arrays.asList(bdgVar.getTitle()), 1);
        }
        m8922f(2, System.currentTimeMillis() - currentTimeMillis);
        bdgVar.m7553ik(2);
        this.aSI.mo8183a(i, bdgVar);
        m8922f(1, 0L);
        bdgVar.m7553ik(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m8951b(bdg bdgVar, int i) {
        ady.m12308tK().mo1746bi(100458);
        if (bdgVar.m7561YB() && !abc.m12845qK().isRootPermition()) {
            this.aSI.mo8170d(bdgVar);
            return false;
        }
        m8956a(bdgVar, i);
        return true;
    }

    /* renamed from: f */
    private static void m8922f(int i, long j) {
        long nextInt = ((new Random().nextInt(i) + 1) * 1000) - j;
        if (nextInt >= 0) {
            try {
                Thread.sleep(nextInt);
            } catch (InterruptedException e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: gR */
    public void mo8920gR(int i) {
        bcy bcyVar = this.alI.get(i);
        if (bcyVar != null) {
            ady.m12308tK().mo1746bi(100459);
            if (aks.m11143BP().m11008EU()) {
                m8942c(bcyVar);
                m8952b(bcyVar);
                return;
            }
            this.aSI.mo8185a(i, bcyVar);
        }
    }

    /* renamed from: b */
    private static void m8952b(final bcy bcyVar) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aut.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (bcy.this instanceof bdg) {
                    bdg bdgVar = (bdg) bcy.this;
                    if (bdgVar.m7561YB()) {
                        ProtectRecorder.m2296XX().m2297P(bdgVar.getTitle(), 1);
                        bcs.m7594Yc().mo7589kE(bdgVar.getTitle());
                        return;
                    }
                    ProtectRecorder.m2296XX().m2297P(bdgVar.getTitle(), 2);
                    bcr.m7604XT().mo7589kE(bdgVar.getTitle());
                } else if (bcy.this instanceof bda) {
                    ProtectRecorder.m2296XX().m2297P(C3953zi.m1311pr().getString(R.string.security_protect_cve_card_name), 3);
                    aks.m11143BP().m10787cp(true);
                }
            }
        }));
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: gS */
    public void mo8919gS(int i) {
        final bcy bcyVar = this.alI.get(i);
        if (bcyVar != null) {
            m8942c(bcyVar);
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aut.5
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    if (bcyVar instanceof bdg) {
                        ady.m12308tK().mo1746bi(100460);
                        bdg bdgVar = (bdg) bcyVar;
                        if (bdgVar.m7561YB()) {
                            bcs.m7594Yc().m7606kD(bdgVar.getTitle());
                        } else {
                            bcr.m7604XT().m7606kD(bdgVar.getTitle());
                        }
                    } else if (bcyVar instanceof bdi) {
                        ady.m12308tK().mo1746bi(100468);
                        apc.m9842KS().m9840hH(((bdi) bcyVar).m7552YC().pkgName);
                        aks.m11143BP().m10891bA(System.currentTimeMillis());
                    } else if (bcyVar instanceof bdc) {
                        ady.m12308tK().mo1746bi(100465);
                        aks.m11143BP().m10871bK(System.currentTimeMillis());
                        aks.m11143BP().m10763eR(aks.m11143BP().m10917Gh() + 1);
                    } else if (bcyVar instanceof bda) {
                        ady.m12308tK().mo1746bi(100460);
                        aks.m11143BP().m10787cp(false);
                    }
                }
            }));
        }
    }

    /* renamed from: c */
    public void m8942c(bcy bcyVar) {
        int indexOf = this.alI.indexOf(bcyVar);
        this.alI.remove(bcyVar);
        this.aSI.notifyItemRemoved(indexOf);
        m8949br(this.alI);
        this.aSI.mo8176b(this.aSK);
        m8950bq(this.alI);
        if ((bcyVar instanceof bcz) && !m8964QT()) {
            this.aSI.mo8186Qs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bq */
    public void m8950bq(List<bcy> list) {
        if (list.size() == 1) {
            this.aSI.mo8172cW(true);
        } else {
            this.aSI.mo8172cW(false);
        }
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1614a
    /* renamed from: gJ */
    public void mo8921gJ(int i) {
        bcy bcyVar = this.alI.get(i);
        if (bcyVar != null) {
            if ((bcyVar instanceof bcv) || (bcyVar instanceof bcx)) {
                this.aSI.mo8188Qq();
            } else if (bcyVar instanceof bcw) {
                this.aSI.mo8187Qr();
            } else if (bcyVar instanceof bdb) {
                bdb bdbVar = (bdb) bcyVar;
                this.aSL = bdbVar.m7563gI() ? false : true;
                bdbVar.m7564dG(this.aSL);
                this.aSI.mo8184a(i, bdbVar);
            } else if (bcyVar instanceof bda) {
                this.aSI.mo8173cV(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: db */
    public List<bcy> m8928db(boolean z) {
        List<bcy> m8918gW = m8918gW(13);
        if (!this.aSM && m8918gW.size() > 0) {
            ady.m12308tK().mo1746bi(100457);
        }
        if (!z) {
            boolean isRootPermition = abc.m12845qK().isRootPermition();
            m8918gW.addAll(m8925de(isRootPermition));
            m8918gW.addAll(m8967QQ());
            m8918gW.addAll(m8923dg(isRootPermition));
            m8918gW.addAll(m8924df(isRootPermition));
            m8945bv(m8918gW);
            this.aSM = true;
        }
        return m8918gW;
    }

    /* renamed from: gW */
    private List<bcy> m8918gW(int i) {
        boolean m1331pk = C3946zb.m1331pk();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m8927dc(m1331pk));
        arrayList.addAll(m8926dd(m1331pk));
        bcy m8966QR = m8966QR();
        if (m8966QR != null) {
            arrayList.add(m8966QR);
        }
        m8945bv(arrayList);
        return m8929d(arrayList, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: br */
    public void m8949br(List<bcy> list) {
        String string;
        Drawable drawable;
        C3953zi m1311pr = C3953zi.m1311pr();
        this.aSK.m7566kK(m1311pr.getString(R.string.security_protect_top_panel_secondary));
        int m8948bs = m8948bs(list);
        if (m8948bs > 0) {
            m8962a(m1311pr.getDrawable(R.drawable.safety_protective_warning), String.format(m1311pr.getString(R.string.security_protect_top_primary_warning), Integer.valueOf(m8948bs)), m1311pr.getColor(R.color.top_panel_primary_text_warning));
        } else if (m8947bt(list)) {
            m8962a(m1311pr.getDrawable(R.drawable.safety_protective_closed), m1311pr.getString(R.string.security_protect_top_primary_closed), m1311pr.getColor(R.color.black_1));
        } else if (m8946bu(list)) {
            m8962a(m1311pr.getDrawable(R.drawable.safety_protective_closed), m1311pr.getString(R.string.security_protect_recommand_app_not_installed), m1311pr.getColor(R.color.black_1));
        } else {
            if (ahl.m11725xm().m11723xo()) {
                string = m1311pr.getString(R.string.security_protect_top_primary_opened);
                drawable = m1311pr.getDrawable(R.drawable.safety_protective_main_spuer);
            } else {
                string = m1311pr.getString(R.string.security_protect_top_primary_normal);
                drawable = m1311pr.getDrawable(R.drawable.safety_protective_main);
            }
            m8962a(drawable, string, m1311pr.getColor(R.color.green_1));
        }
    }

    /* renamed from: bs */
    private static int m8948bs(List<bcy> list) {
        int i = 0;
        Iterator<bcy> it = list.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next() instanceof bcz ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    /* renamed from: bt */
    private static boolean m8947bt(List<bcy> list) {
        for (bcy bcyVar : list) {
            if ((bcyVar instanceof bdc) && !(bcyVar instanceof bdi)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: bu */
    private static boolean m8946bu(List<bcy> list) {
        for (bcy bcyVar : list) {
            if (bcyVar instanceof bdi) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private void m8962a(Drawable drawable, String str, int i) {
        this.aSK.setIcon(drawable);
        this.aSK.setTitleColor(i);
        this.aSK.setTitle(str);
    }

    /* renamed from: dc */
    private List<bcy> m8927dc(boolean z) {
        HashSet<bdh> hashSet = new HashSet(bcs.m7594Yc().m7610dF(true).values());
        if (C3942yy.m1352c(hashSet)) {
            return aSJ;
        }
        ArrayList arrayList = new ArrayList();
        for (bdh bdhVar : hashSet) {
            arrayList.add(m8955a(z, bdhVar, R.string.security_protect_uninstall_now, true));
        }
        return arrayList;
    }

    /* renamed from: dd */
    private List<bcy> m8926dd(boolean z) {
        HashSet<bdh> hashSet = new HashSet(bcr.m7604XT().m7610dF(true).values());
        if (C3942yy.m1352c(hashSet)) {
            return aSJ;
        }
        ArrayList arrayList = new ArrayList();
        for (bdh bdhVar : hashSet) {
            arrayList.add(m8955a(z, bdhVar, R.string.security_protect_clear_now, false));
        }
        return arrayList;
    }

    /* renamed from: d */
    private List<bcy> m8929d(List<bcy> list, int i) {
        return list.size() <= i ? list : list.subList(0, i);
    }

    /* renamed from: a */
    public bdg m8955a(boolean z, @NonNull bdh bdhVar, int i, boolean z2) {
        C3953zi m1311pr = C3953zi.m1311pr();
        String string = m1311pr.getString(i);
        String string2 = m1311pr.getString(R.string.security_protect_risk_level);
        String m8917gX = m8917gX(bdhVar.level);
        String string3 = m1311pr.getString(z2 ? R.string.security_protect_uninstalling_apk : R.string.security_protect_deleting_file);
        String string4 = m1311pr.getString(z2 ? R.string.security_protect_uninstall_completed : R.string.security_protect_delete_completed);
        String string5 = TextUtils.isEmpty(bdhVar.desc) ? m1311pr.getString(R.string.security_protect_risk_default_desc) : bdhVar.desc;
        if (!z) {
            string5 = m1311pr.getString(R.string.security_protect_risk_default_desc);
        }
        return new bdg(R.drawable.safety_dange, bdhVar.name, bdhVar.level, string2 + m8917gX, string5, string, string3, string4, z2);
    }

    /* renamed from: de */
    private List<bcy> m8925de(boolean z) {
        if (!z) {
            return aSJ;
        }
        if (!bfw.aaS().abe()) {
            return aSJ;
        }
        return m8968QP();
    }

    /* renamed from: QP */
    private List<bcy> m8968QP() {
        aks m11143BP = aks.m11143BP();
        if (bfw.aaS().aaU() && bfp.aay().isEnable()) {
            return aSJ;
        }
        if (Math.abs(System.currentTimeMillis() - m11143BP.m10918Gg()) <= 432000000) {
            return aSJ;
        }
        if (m11143BP.m10917Gh() >= 2) {
            return aSJ;
        }
        if (bfw.aaS().abg() >= 2) {
            return aSJ;
        }
        if (!this.aSM) {
            ady.m12308tK().mo1746bi(100463);
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        bdc bdcVar = new bdc(m1311pr.getDrawable(R.drawable.safety_protective_super), m1311pr.getString(R.string.urlcheck_main_page_option_enable), m1311pr.getString(R.string.urlcheck_guide_card_content), m1311pr.getString(R.string.security_protect_open));
        ArrayList arrayList = new ArrayList();
        arrayList.add(bdcVar);
        return arrayList;
    }

    /* renamed from: gX */
    private static String m8917gX(int i) {
        if (i == 2) {
            return C3953zi.m1311pr().getString(R.string.security_protect_risk_low);
        }
        if (i == 1) {
            return C3953zi.m1311pr().getString(R.string.security_protect_risk_middle);
        }
        if (i == 0) {
            return C3953zi.m1311pr().getString(R.string.security_protect_risk_high);
        }
        return C3953zi.m1311pr().getString(R.string.security_protect_risk_middle);
    }

    /* renamed from: df */
    private List<bcy> m8924df(boolean z) {
        if (!z) {
            return aSJ;
        }
        if (!aii.m11642xL().m11639xO() && !aks.m11143BP().m10964FM()) {
            return aSJ;
        }
        ahl m11725xm = ahl.m11725xm();
        if ((!m11725xm.m11723xo() || !m11725xm.m2124jX().asBinder().isBinderAlive()) && !aks.m11143BP().m10964FM()) {
            return aSJ;
        }
        List<AntiInjectLogModel> allLogs = ahl.m11725xm().getAllLogs();
        LinkedList linkedList = new LinkedList();
        int size = allLogs.size();
        for (int i = 0; i < size; i++) {
            if (!acu.m12573b(allLogs.get(i).time, System.currentTimeMillis(), 2592000000L)) {
                linkedList.add(allLogs.get(i));
            }
        }
        LinkedList linkedList2 = new LinkedList();
        for (ExploitLog exploitLog : this.acW.adj()) {
            if (!acu.m12573b(exploitLog.mTimeStamp, System.currentTimeMillis(), 2592000000L)) {
                linkedList2.add(exploitLog);
            }
        }
        if (!this.aSM) {
            ady.m12308tK().mo1746bi(100476);
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        String string = m1311pr.getString(R.string.security_protect_anti_inject_protect);
        Drawable drawable = m1311pr.getDrawable(R.drawable.engine_logs_black);
        String string2 = m1311pr.getString(R.string.security_protect_count);
        String str = "";
        int size2 = linkedList2.size() + linkedList.size();
        if (size2 != 0) {
            str = size2 + string2;
        }
        bcw bcwVar = new bcw(drawable, string, str, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(bcwVar);
        return arrayList;
    }

    /* renamed from: QQ */
    private List<bcy> m8967QQ() {
        if (!m8939ca(aks.m11143BP().m10934Fq())) {
            return aSJ;
        }
        if (!m8939ca(aks.m11143BP().m10935Fp())) {
            return aSJ;
        }
        List<ExamRecommendAppInfo> mo9843JY = apc.m9842KS().mo9843JY();
        ArrayList arrayList = new ArrayList();
        for (ExamRecommendAppInfo examRecommendAppInfo : C3942yy.m1350e(mo9843JY)) {
            if (examRecommendAppInfo != null && examRecommendAppInfo.m4105Km()) {
                arrayList.add(examRecommendAppInfo);
            }
        }
        if (arrayList.isEmpty()) {
            return aSJ;
        }
        ExamRecommendAppInfo examRecommendAppInfo2 = null;
        String m10936Fo = aks.m11143BP().m10936Fo();
        if (!TextUtils.isEmpty(m10936Fo)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ExamRecommendAppInfo examRecommendAppInfo3 = (ExamRecommendAppInfo) it.next();
                if (examRecommendAppInfo3.pkgName.equals(m10936Fo)) {
                    examRecommendAppInfo2 = examRecommendAppInfo3;
                    break;
                }
            }
        }
        if (examRecommendAppInfo2 == null) {
            ExamRecommendAppInfo examRecommendAppInfo4 = (ExamRecommendAppInfo) arrayList.get(bdi.m7551ag(0, arrayList.size() - 1));
            aks.m11143BP().m10725hl(examRecommendAppInfo4.pkgName);
            examRecommendAppInfo2 = examRecommendAppInfo4;
        }
        if (!this.aSM) {
            ady.m12308tK().mo1746bi(100466);
        }
        bdi bdiVar = new bdi(examRecommendAppInfo2, bdi.m7550f(apv.m9735LO().m9718ic(examRecommendAppInfo2.iconUrl)), examRecommendAppInfo2.mainTitle, examRecommendAppInfo2.softTitle, C3953zi.m1311pr().getString(R.string.security_protect_open));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(bdiVar);
        return arrayList2;
    }

    /* renamed from: QR */
    public bcy m8966QR() {
        if (!biq.ada().adb() || aks.m11143BP().m10965FL()) {
            return null;
        }
        int adc = biq.ada().adc();
        ady.m12308tK().mo1746bi(100573);
        return new bda(biq.ada().m6847jf(3), Math.min(13, adc));
    }

    /* renamed from: ca */
    private static boolean m8939ca(long j) {
        return adk.m12539b(j, System.currentTimeMillis(), 259200000L);
    }

    /* renamed from: dg */
    private List<bcy> m8923dg(boolean z) {
        bde m8930cj;
        bde m8936cd;
        bde m8938cb;
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        if (z && (m8938cb = m8938cb(currentTimeMillis)) != null) {
            arrayList.add(m8938cb);
        }
        bde m8937cc = m8937cc(currentTimeMillis);
        if (m8937cc != null) {
            arrayList.add(m8937cc);
        }
        if (z && (m8936cd = m8936cd(currentTimeMillis)) != null) {
            arrayList.add(m8936cd);
        }
        bde m8935ce = m8935ce(currentTimeMillis);
        if (m8935ce != null) {
            arrayList.add(m8935ce);
        }
        if (z && (m8930cj = m8930cj(currentTimeMillis)) != null) {
            arrayList.add(m8930cj);
        }
        bde m8932ch = m8932ch(currentTimeMillis);
        if (m8932ch != null) {
            arrayList.add(m8932ch);
        }
        arrayList.addAll(m8931ci(currentTimeMillis));
        arrayList.addAll(m8933cg(currentTimeMillis));
        bde m8934cf = m8934cf(currentTimeMillis);
        if (m8934cf != null) {
            arrayList.add(m8934cf);
        }
        bde m8965QS = m8965QS();
        if (m8965QS != null) {
            arrayList.add(m8965QS);
        }
        ArrayList arrayList2 = new ArrayList();
        if (arrayList.size() > 0) {
            C3953zi m1311pr = C3953zi.m1311pr();
            Drawable drawable = m1311pr.getDrawable(R.drawable.history_black);
            String string = m1311pr.getString(R.string.security_protect_log_module_already_fixed);
            String string2 = m1311pr.getString(R.string.security_protect_count);
            m8944bw(arrayList);
            bdb bdbVar = new bdb(drawable, string, arrayList.size() + string2, arrayList);
            bdbVar.m7564dG(this.aSL);
            arrayList2.add(bdbVar);
        }
        return arrayList2;
    }

    /* renamed from: cb */
    private bde m8938cb(long j) {
        long m10916Gi = aks.m11143BP().m10916Gi();
        if (m8916h(j, m10916Gi) && bfw.aaS().aaU() && bfp.aay().isEnable()) {
            return new bde(C3953zi.m1311pr().getString(R.string.urlcheck_root_protect_page_log_desc), m10916Gi);
        }
        return null;
    }

    /* renamed from: cc */
    private bde m8937cc(long j) {
        long m11005EX = aks.m11143BP().m11005EX();
        if (!m8916h(j, m11005EX)) {
            return null;
        }
        return new bde(C3953zi.m1311pr().getString(R.string.security_protect_log_unit_fixed_system), m11005EX);
    }

    /* renamed from: cd */
    private bde m8936cd(long j) {
        long m10950Fa = aks.m11143BP().m10950Fa();
        if (!m8916h(j, m10950Fa)) {
            return null;
        }
        return new bde(C3953zi.m1311pr().getString(R.string.security_protect_fixed_system_root_auth), m10950Fa);
    }

    /* renamed from: ce */
    private bde m8935ce(long j) {
        List<ActionRecord> XL = bcs.m7594Yc().m7620XL();
        List<ActionRecord> XL2 = bcr.m7604XT().m7620XL();
        if (XL.isEmpty() && XL2.isEmpty()) {
            return null;
        }
        ArrayList<ActionRecord> arrayList = new ArrayList();
        arrayList.addAll(XL);
        arrayList.addAll(XL2);
        long j2 = 0;
        int i = 0;
        for (ActionRecord actionRecord : arrayList) {
            if (m8916h(j, actionRecord.when)) {
                i++;
                if (actionRecord.when > j2) {
                    j2 = actionRecord.when;
                }
            }
            i = i;
            j2 = j2;
        }
        if (i == 0) {
            return null;
        }
        return new bde(String.format(C3953zi.m1311pr().getString(R.string.security_protect_resolved_log), Integer.valueOf(i)), j2);
    }

    /* renamed from: cf */
    private bde m8934cf(long j) {
        int min;
        if (aks.m11143BP().m10964FM()) {
            long m10962FO = aks.m11143BP().m10962FO();
            if (!m8916h(j, m10962FO) || (min = Math.min(biq.ada().adc(), 13)) == 0) {
                return null;
            }
            return new bde(String.format(C3953zi.m1311pr().getString(R.string.security_protect_cve_fix_log), Integer.valueOf(min)), m10962FO);
        }
        return null;
    }

    /* renamed from: QS */
    private bde m8965QS() {
        if (bfw.aaS().aaU()) {
            List<UrlCheckLog> m7235a = bfs.aaI().m7235a(true, 3600000L);
            if (C3942yy.m1351d(m7235a)) {
                return null;
            }
            return new bde(C3953zi.m1311pr().getString(R.string.urlcheck_security_protect_tips, Integer.valueOf(m7235a.size())), m7235a.get(0).bnv);
        }
        return null;
    }

    /* renamed from: cg */
    private List<bde> m8933cg(long j) {
        ArrayList arrayList = new ArrayList();
        Set<ProtectRecorder.TrustRiskInfo> m2295XY = ProtectRecorder.m2296XX().m2295XY();
        C3952zh m1312pq = C3952zh.m1312pq();
        String string = C3953zi.m1311pr().getString(R.string.security_protect_trust_risk_apk);
        for (ProtectRecorder.TrustRiskInfo trustRiskInfo : m2295XY) {
            if (m8916h(j, trustRiskInfo.when)) {
                String str = trustRiskInfo.name;
                if (trustRiskInfo.type == 1) {
                    try {
                        str = (String) m1312pq.getApplicationLabel(m1312pq.getApplicationInfo(trustRiskInfo.name, 0));
                    } catch (Throwable th) {
                    }
                }
                arrayList.add(new bde(string + str, trustRiskInfo.when));
            }
        }
        return arrayList;
    }

    /* renamed from: ch */
    private bde m8932ch(long j) {
        long m7576Yk = bcu.m7576Yk();
        if (!m8916h(j, m7576Yk)) {
            return null;
        }
        return new bde(C3953zi.m1311pr().getString(R.string.security_protect_anti_virus_updated), m7576Yk);
    }

    /* renamed from: ci */
    private List<bde> m8931ci(long j) {
        ArrayList arrayList = new ArrayList();
        Set<ProtectRecorder.SafeApk> m2294XZ = ProtectRecorder.m2296XX().m2294XZ();
        C3952zh m1312pq = C3952zh.m1312pq();
        String string = C3953zi.m1311pr().getString(R.string.security_protect_safe_apk);
        for (ProtectRecorder.SafeApk safeApk : m2294XZ) {
            if (m8916h(j, safeApk.when)) {
                try {
                    arrayList.add(new bde(((String) m1312pq.getApplicationLabel(m1312pq.getApplicationInfo(safeApk.pkgName, 0))) + string, safeApk.when));
                } catch (Throwable th) {
                }
            }
        }
        return arrayList;
    }

    /* renamed from: cj */
    private bde m8930cj(long j) {
        Set<ProtectRecorder.RiskApkDeniedRootAuth> m2293Ya = ProtectRecorder.m2296XX().m2293Ya();
        if (m2293Ya.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ProtectRecorder.RiskApkDeniedRootAuth riskApkDeniedRootAuth : m2293Ya) {
            if (m8916h(j, riskApkDeniedRootAuth.when)) {
                arrayList.add(riskApkDeniedRootAuth);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Collections.sort(arrayList, new Comparator<ProtectRecorder.RiskApkDeniedRootAuth>() { // from class: com.kingroot.kinguser.aut.6
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(ProtectRecorder.RiskApkDeniedRootAuth riskApkDeniedRootAuth2, ProtectRecorder.RiskApkDeniedRootAuth riskApkDeniedRootAuth3) {
                return (int) (riskApkDeniedRootAuth3.when - riskApkDeniedRootAuth2.when);
            }
        });
        return new bde(String.format(C3953zi.m1311pr().getString(R.string.security_protect_recycle_risk_root_auth), Integer.valueOf(arrayList.size())), ((ProtectRecorder.RiskApkDeniedRootAuth) arrayList.get(0)).when);
    }

    /* renamed from: h */
    private static boolean m8916h(long j, long j2) {
        return j - j2 <= 2592000000L;
    }

    /* renamed from: bv */
    private static void m8945bv(List<bcy> list) {
        Collections.sort(list, new Comparator<bcy>() { // from class: com.kingroot.kinguser.aut.7
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(bcy bcyVar, bcy bcyVar2) {
                return bcyVar.mo7560Yo() - bcyVar2.mo7560Yo();
            }
        });
    }

    /* renamed from: bw */
    private static void m8944bw(List<bde> list) {
        Collections.sort(list, new Comparator<bde>() { // from class: com.kingroot.kinguser.aut.8
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(bde bdeVar, bde bdeVar2) {
                return (int) (bdeVar2.getTimestamp() - bdeVar.getTimestamp());
            }
        });
    }

    /* renamed from: QT */
    public boolean m8964QT() {
        for (bcy bcyVar : this.alI) {
            if (bcyVar instanceof bcz) {
                return true;
            }
        }
        return false;
    }
}
