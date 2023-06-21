package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager.AppBackupTool;
import com.kingroot.kinguser.adf;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguser.afe;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.bjj;
import com.kingroot.kinguser.bjm;
import com.kingroot.kinguser.blj;
import com.kingroot.kinguser.ztool.uninstall.SoftWareRecycleActivity;
import com.kingroot.kinguses.R;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes.dex */
public class bjr extends AbstractC3930yo implements afe.InterfaceC0802a, bjj.InterfaceC2403b, bjj.InterfaceC2404c, bjj.InterfaceC2405d, bjj.InterfaceC2406e, blj.InterfaceC2503a {
    private ArrayList<View> aBS;
    private ArrayList<TextView> aBT;
    private ImageView acx;
    private TextView acy;
    private Animation acz;
    private adi ahB;
    private ImageView ahC;
    private bed ahF;
    private TextView baA;
    private boolean bxO;
    private int bxT;
    private SharedPreferences byb;
    private boolean byc;
    private SparseArray<List<TcPkgInfo>> byd;
    private final HashSet<aex.C0796a> bye;
    private final Set<aex.C0796a> byf;
    private bid byg;
    private bif byh;
    private AppBackupTool byi;
    private int byj;
    private int byk;
    private bed byl;
    private bed bym;
    private bed byn;
    private bed byo;
    private bed byp;
    private bed byq;

    /* renamed from: o */
    static /* synthetic */ int m6636o(bjr bjrVar) {
        int i = bjrVar.byj;
        bjrVar.byj = i + 1;
        return i;
    }

    public bjr(Context context) {
        super(context);
        this.bye = new HashSet<>();
        this.byf = new HashSet();
        this.byg = null;
        this.byh = null;
        this.byj = 0;
        this.bxO = false;
        this.byl = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjr.17
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    bjr.this.m6642i(false, true);
                } catch (Exception e) {
                    bjr.this.getHandler().sendEmptyMessage(18);
                }
            }
        });
        this.ahF = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjr.18
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (abc.m12845qK().isRootPermition()) {
                    Message obtainMessage = bjr.this.getHandler().obtainMessage(16);
                    if (mo7445nF != null && mo7445nF.size() > 0) {
                        obtainMessage.obj = mo7445nF.get(0);
                    } else {
                        obtainMessage.obj = null;
                    }
                    obtainMessage.sendToTarget();
                    return;
                }
                Message obtainMessage2 = bjr.this.getHandler().obtainMessage(15);
                if (mo7445nF != null && mo7445nF.size() > 1) {
                    obtainMessage2.obj = mo7445nF.get(1);
                } else {
                    obtainMessage2.obj = null;
                }
                obtainMessage2.sendToTarget();
            }
        });
        this.bym = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjr.19
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (bjr.this.byj == 0) {
                    bjr.m6636o(bjr.this);
                    int m12131aw = aez.m12131aw(bjr.this.getContext());
                    if (m12131aw == 1) {
                        Message obtainMessage = bjr.this.getHandler().obtainMessage(12);
                        obtainMessage.obj = bjr.this.m1417V(2131166123L);
                        obtainMessage.sendToTarget();
                        if (aez.m12132av(bjr.this.getContext())) {
                            afc.m12122uT().m12121uU();
                            bjr.this.m6642i(true, false);
                            Message obtainMessage2 = bjr.this.getHandler().obtainMessage(12);
                            obtainMessage2.obj = bjr.this.m1417V(2131166124L);
                            obtainMessage2.sendToTarget();
                            return;
                        }
                        Message obtainMessage3 = bjr.this.getHandler().obtainMessage(12);
                        obtainMessage3.obj = bjr.this.m1417V(2131166122L);
                        obtainMessage3.sendToTarget();
                    } else if (m12131aw == 2) {
                        ArrayList arrayList = new ArrayList();
                        if (bjs.byC != null) {
                            for (TcPkgInfo tcPkgInfo : bjs.byC) {
                                if (!tcPkgInfo.isPersonApp && tcPkgInfo.checkCacheFail) {
                                    arrayList.add(tcPkgInfo);
                                }
                            }
                            if (arrayList.size() > 0) {
                                Message obtainMessage4 = bjr.this.getHandler().obtainMessage(12);
                                obtainMessage4.obj = bjr.this.m1417V(2131166123L);
                                obtainMessage4.sendToTarget();
                                if (afc.m12122uT().m12123g(bjr.this.getContext(), arrayList)) {
                                    afc.m12122uT().m12121uU();
                                    bjr.this.m6642i(true, false);
                                    Message obtainMessage5 = bjr.this.getHandler().obtainMessage(12);
                                    obtainMessage5.obj = bjr.this.m1417V(2131166124L);
                                    obtainMessage5.sendToTarget();
                                    return;
                                }
                                Message obtainMessage6 = bjr.this.getHandler().obtainMessage(12);
                                obtainMessage6.obj = bjr.this.m1417V(2131166122L);
                                obtainMessage6.sendToTarget();
                            }
                        }
                    }
                }
            }
        });
        this.byn = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjr.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                PackageInfo packageInfo;
                int i;
                boolean z;
                super.run();
                if (bjs.byC != null) {
                    C3952zh m1312pq = C3952zh.m1312pq();
                    boolean z2 = false;
                    for (TcPkgInfo tcPkgInfo : bjs.byC) {
                        try {
                            i = tcPkgInfo.enable;
                            packageInfo = m1312pq.getPackageInfo(tcPkgInfo.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e) {
                            packageInfo = null;
                            i = 2;
                        }
                        if (packageInfo != null) {
                            int i2 = -1;
                            try {
                                i2 = m1312pq.getApplicationEnabledSetting(tcPkgInfo.packageName);
                            } catch (IllegalArgumentException e2) {
                            }
                            if (i2 < 0) {
                                i = 2;
                            } else {
                                i = i2 == 2 ? 1 : 0;
                            }
                        }
                        if (tcPkgInfo.enable != i) {
                            tcPkgInfo.enable = i;
                            if (packageInfo != null && packageInfo.applicationInfo != null) {
                                tcPkgInfo.versionCode = packageInfo.versionCode;
                                tcPkgInfo.versionName = packageInfo.versionName;
                                tcPkgInfo.appSourceDir = packageInfo.applicationInfo.sourceDir;
                                tcPkgInfo.isPersonApp = (packageInfo.applicationInfo.flags & 1) == 0;
                            }
                            z = true;
                        } else {
                            z = z2;
                        }
                        z2 = z;
                    }
                    if (z2) {
                        afg.m12082aa(bjs.byC);
                    }
                    bjr.this.byk = 2;
                    bjr.this.m6642i(false, false);
                }
            }
        });
        this.byo = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.bjr.7
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                afg.m12082aa(bjs.byC);
            }
        });
        this.byp = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjr.10
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    String m10979Ex = aks.m11143BP().m10979Ex();
                    if (TextUtils.isEmpty(m10979Ex)) {
                        return;
                    }
                    abc m12845qK = abc.m12845qK();
                    if (m12845qK.isRootPermition(true)) {
                        VTCmdResult m12846el = m12845qK.m12846el(String.format(Locale.US, "pm install -r %s", m10979Ex));
                        if (!m12846el.success() || aab.m13016dH(m12846el.mStdErr).toLowerCase().contains("failure")) {
                            ady.m12308tK().mo1746bi(100369);
                            bjr.this.m6660H(new File(m10979Ex));
                        } else {
                            ady.m12308tK().mo1746bi(100368);
                            new File(m10979Ex).delete();
                            if (aft.m12026vt() != bjr.this.getActivity()) {
                                return;
                            }
                            arv.m9499Nz().gotoWeSecureVirusScan();
                        }
                    }
                } finally {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bjr.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bjr.this.aez();
                        }
                    });
                }
            }
        });
        this.byq = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjr.11
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                File file;
                super.run();
                aks m11143BP = aks.m11143BP();
                int m10978Ey = m11143BP.m10978Ey();
                if (m10978Ey != 2) {
                    if (m10978Ey == 1) {
                        if (!adk.m12539b(m11143BP.m10977Ez(), System.currentTimeMillis(), 172800000L)) {
                            return;
                        }
                    }
                    if (abc.m12845qK().isRootPermition() && !arv.m9499Nz().isWeSecureInstalled()) {
                        String m10979Ex = m11143BP.m10979Ex();
                        if (!TextUtils.isEmpty(m10979Ex)) {
                            File file2 = new File(m10979Ex);
                            if (!file2.exists()) {
                                m11143BP.m10730hg(null);
                                return;
                            }
                            if (m10979Ex.endsWith(KlConst.PLUGIN_FILE_NAME_SUFFIX)) {
                                file = file2;
                            } else {
                                file = new File(m10979Ex + KlConst.PLUGIN_FILE_NAME_SUFFIX);
                                if (file.exists()) {
                                    file.delete();
                                }
                                if (file2.renameTo(file)) {
                                    m11143BP.m10730hg(file.getAbsolutePath());
                                } else {
                                    return;
                                }
                            }
                            String m12871ea = aaz.m12871ea(file.getAbsolutePath());
                            if (TextUtils.isEmpty(m12871ea) || !m12871ea.equalsIgnoreCase("00B1208638DE0FCD3E920886D658DAF6")) {
                                file.delete();
                                file2.delete();
                                return;
                            }
                            m11143BP.m10827bo(System.currentTimeMillis());
                            if (m10978Ey == 0) {
                                m11143BP.m10777eD(1);
                            } else if (m10978Ey == 1) {
                                m11143BP.m10777eD(2);
                            }
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bjr.11.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    bjr.this.aew();
                                }
                            });
                        }
                    }
                }
            }
        });
        afe.m12102aE(context).m12104a(this);
        this.byj = 0;
        this.byb = C3566rv.m2314h(context, "promptbox_config");
        this.byi = new AppBackupTool();
    }

    @Override // com.kingroot.kinguser.AbstractC3920yk
    /* renamed from: L */
    protected void mo1422L(List<AbstractC3922ym> list) {
        if (bjn.aeb().aec()) {
            list.add(new bjl(getContext()));
        }
        list.add(new bjk(getContext()));
        for (AbstractC3922ym abstractC3922ym : list) {
            ((bjj) abstractC3922ym).m6725a((bjj.InterfaceC2406e) this);
            ((bjj) abstractC3922ym).m6726a((bjj.InterfaceC2405d) this);
            ((bjj) abstractC3922ym).m6727a((bjj.InterfaceC2404c) this);
            ((bjj) abstractC3922ym).m6728a((bjj.InterfaceC2403b) this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: i */
    public void m6642i(boolean z, boolean z2) {
        this.byk = 0;
        if (z) {
            bjs.byC = afg.m12083aG(getContext());
            this.byk = 2;
        } else if (bjs.byC == null) {
            bjs.byC = afg.m12084aF(getContext());
            this.byk = 1;
            if (bjs.byC == null) {
                bjs.byC = afg.m12083aG(getContext());
                this.byk = 2;
            }
        }
        if (bjs.byC == null) {
            bjs.byC = new ArrayList();
        }
        List<TcPkgInfo> list = bjs.byC;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arv m9499Nz = arv.m9499Nz();
        List<String> allRiskApps = m9499Nz.getAllRiskApps();
        String m12113aD = afd.m12113aD(getContext());
        for (TcPkgInfo tcPkgInfo : list) {
            if (!TextUtils.isEmpty(tcPkgInfo.packageName)) {
                if (allRiskApps.contains(tcPkgInfo.packageName)) {
                    tcPkgInfo.riskType = m9499Nz.getRiskType(tcPkgInfo.packageName);
                    if (z2 && avu.m8746hj(tcPkgInfo.riskType)) {
                        ady.m12308tK().mo1746bi(100359);
                    }
                } else {
                    tcPkgInfo.riskType = 1;
                }
                if (tcPkgInfo.enable == 0 || (tcPkgInfo.enable == 1 && tcPkgInfo.isPersonApp)) {
                    if (!tcPkgInfo.isPersonApp || tcPkgInfo.classify != 0) {
                        if (!TextUtils.equals(m12113aD, tcPkgInfo.packageName)) {
                            arrayList.add(tcPkgInfo);
                        }
                    } else {
                        arrayList2.add(tcPkgInfo);
                    }
                }
            }
        }
        this.byd = new SparseArray<>(2);
        if (bjn.aeb().aec()) {
            this.byd.put(0, arrayList);
            this.byd.put(1, arrayList2);
        } else {
            this.byd.put(0, arrayList2);
        }
        getHandler().sendEmptyMessage(2);
    }

    private void ael() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bjr.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                final int i;
                super.run();
                if (bjr.this.byd != null) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i3 >= bjr.this.f4010Vc.size()) {
                            break;
                        }
                        ((bjj) bjr.this.f4010Vc.get(i3)).m6721bZ((List) bjr.this.byd.get(i3));
                        i2 = i3 + 1;
                    }
                }
                if (abc.m12845qK().isRootPermition()) {
                    Iterator it = bjr.this.f4010Vc.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            i = -1;
                            break;
                        }
                        AbstractC3922ym abstractC3922ym = (AbstractC3922ym) it.next();
                        if (abstractC3922ym instanceof bjj) {
                            bjj bjjVar = (bjj) abstractC3922ym;
                            if (bjjVar.adZ()) {
                                i = bjr.this.f4010Vc.indexOf(bjjVar);
                                break;
                            }
                        }
                    }
                    if (i != -1 && i >= 0 && i < bjr.this.f4010Vc.size()) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bjr.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bjr.this.f4033Vx.setCurrentItem(i);
                            }
                        });
                    }
                }
            }
        }));
    }

    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getBooleanExtra("com_from_risk_notification", false)) {
            ady.m12308tK().mo1746bi(100358);
        }
        blj.m6498a(this);
        getHandler().sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        super.onPause();
    }

    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        m1418U(500L);
    }

    @Override // com.kingroot.kinguser.AbstractC3930yo
    /* renamed from: a */
    protected void mo1376a(int i, AbstractC3922ym abstractC3922ym) {
        if (i == 0) {
            ((C2465a) m1407oM()).m6626jt(0);
            ady.m12308tK().mo1746bi(100054);
        } else if (i == 1) {
            ((C2465a) m1407oM()).m6626jt(4);
            ady.m12308tK().mo1746bi(100055);
        }
        for (int i2 = 0; i2 < this.aBS.size(); i2++) {
            if (i2 == i) {
                this.aBS.get(i2).setVisibility(0);
                this.aBT.get(i2).setTextColor(m1415X(2131624214L));
            } else {
                this.aBS.get(i2).setVisibility(8);
                this.aBT.get(i2).setTextColor(m1415X(2131624213L));
            }
        }
        mo6630vg();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C2465a(getContext(), C3953zi.m1311pr().getString(R.string.king_tool_title_software_uninstall));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        adm.m12480st().m12501cy(18);
        LinearLayout linearLayout = (LinearLayout) getLayoutInflater().inflate(R.layout.unintall_slider_header, (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        m1407oM().addContentView(linearLayout, layoutParams);
        boolean aec = bjn.aeb().aec();
        this.aBS = new ArrayList<>();
        this.aBS.add(linearLayout.findViewById(R.id.tab_line_first));
        if (aec) {
            this.aBS.add(linearLayout.findViewById(R.id.tab_line_second));
        }
        String[] stringArray = aec ? C3953zi.m1311pr().getStringArray(R.array.software_uninstall_tab_titles) : new String[]{C3953zi.m1311pr().getString(R.string.tab_personal_software)};
        this.aBT = new ArrayList<>();
        this.aBT.add((TextView) linearLayout.findViewById(R.id.tab_text_first));
        if (aec) {
            this.aBT.add((TextView) linearLayout.findViewById(R.id.tab_text_second));
        }
        linearLayout.findViewById(R.id.tab_left).setVisibility(0);
        if (aec) {
            linearLayout.findViewById(R.id.tab_right).setVisibility(0);
        }
        Iterator<TextView> it = this.aBT.iterator();
        while (it.hasNext()) {
            TextView next = it.next();
            next.setTextColor(m1415X(2131624213L));
            final int indexOf = this.aBT.indexOf(next);
            if (stringArray != null && indexOf >= 0 && indexOf < stringArray.length) {
                next.setText(stringArray[indexOf]);
            }
            next.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjr.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bjr.this.f4033Vx.setCurrentItem(indexOf);
                }
            });
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f4033Vx.getLayoutParams();
        layoutParams2.addRule(2, R.id.operation_bar);
        layoutParams2.addRule(3, R.id.slider_header);
        this.aBT.get(0).setTextColor(m1415X(2131624214L));
        aer.m12167uD();
        this.f4033Vx.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bjr.13
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                bjr.this.f4033Vx.getViewTreeObserver().removeOnPreDrawListener(this);
                if (!abc.m12845qK().isRootPermition()) {
                    bjr.this.f4033Vx.setCurrentItem(bjr.this.f4010Vc.size());
                    return true;
                }
                return true;
            }
        });
    }

    public Button aem() {
        return ((bjj) this.f4010Vc.get(this.f4032VA)).adW();
    }

    public RelativeLayout aen() {
        return ((bjj) this.f4010Vc.get(this.f4032VA)).adX();
    }

    @NonNull
    public HashSet<aex.C0796a> aeo() {
        return this.bye;
    }

    public Collection<aex.C0796a> aep() {
        return ((bjj) this.f4010Vc.get(this.f4032VA)).adV();
    }

    @Override // com.kingroot.kinguser.bjj.InterfaceC2406e
    public void aea() {
        HashSet<aex.C0796a> aeo = aeo();
        aeo.clear();
        aeo.addAll(aep());
        switch (this.f4032VA) {
            case 0:
                if (!this.byb.getBoolean("checkbox_config", false)) {
                    bjm bjmVar = new bjm(getContext());
                    bjmVar.show();
                    bjmVar.m6715a(new bjm.InterfaceC2412a() { // from class: com.kingroot.kinguser.bjr.14
                        @Override // com.kingroot.kinguser.bjm.InterfaceC2412a
                        /* renamed from: d */
                        public void mo6628d(View view, boolean z) {
                            ady.m12308tK().mo1746bi(100057);
                            bjr.this.aev();
                            if (z) {
                                SharedPreferences.Editor edit = bjr.this.byb.edit();
                                edit.putBoolean("checkbox_config", z);
                                edit.commit();
                            }
                        }
                    });
                    return;
                }
                ady.m12308tK().mo1746bi(100057);
                aev();
                return;
            case 1:
                ady.m12308tK().mo1746bi(100058);
                aer();
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.bjj.InterfaceC2403b
    /* renamed from: e */
    public void mo6649e(final aex.C0796a c0796a) {
        if (!this.byb.getBoolean("checkbox_config", false) && !c0796a.afP.isPersonApp) {
            bjm bjmVar = new bjm(getContext());
            bjmVar.show();
            bjmVar.m6715a(new bjm.InterfaceC2412a() { // from class: com.kingroot.kinguser.bjr.15
                @Override // com.kingroot.kinguser.bjm.InterfaceC2412a
                /* renamed from: d */
                public void mo6628d(View view, boolean z) {
                    ady.m12308tK().mo1746bi(100057);
                    HashSet<aex.C0796a> aeo = bjr.this.aeo();
                    aeo.clear();
                    aeo.add(c0796a);
                    bjr.this.aev();
                    if (z) {
                        SharedPreferences.Editor edit = bjr.this.byb.edit();
                        edit.putBoolean("checkbox_config", z);
                        edit.commit();
                    }
                }
            });
            return;
        }
        ady.m12308tK().mo1746bi(100058);
        HashSet<aex.C0796a> aeo = aeo();
        aeo.clear();
        aeo.add(c0796a);
        aev();
    }

    @Override // com.kingroot.kinguser.bjj.InterfaceC2405d
    /* renamed from: vg */
    public void mo6630vg() {
        try {
            aeq();
        } catch (Throwable th) {
        }
    }

    private void aeq() {
        if (aep().size() == 0) {
            aen().setVisibility(8);
        } else if (aen().getVisibility() == 8) {
            Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom);
            loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.kingroot.kinguser.bjr.16
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    bjr.this.bxO = true;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (bjr.this.aep().size() != 0) {
                        bjr.this.aen().setVisibility(0);
                    }
                    bjr.this.bxO = false;
                }
            });
            if (!this.bxO) {
                aen().startAnimation(loadAnimation);
            }
        }
        long j = 0;
        Iterator<aex.C0796a> it = aep().iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                j = it.next().afP.pkgSize + j2;
            } else {
                aem().setText(String.format(m1417V(2131166089L), Integer.valueOf(aep().size()), Formatter.formatFileSize(getContext(), j2)));
                return;
            }
        }
    }

    private void aer() {
        m6659Uy();
        ArrayList arrayList = new ArrayList();
        arrayList.add(3);
        arrayList.add(17);
        beg.m7461Zj().m7456a(this.ahF, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void aes() {
        boolean z;
        int i;
        ApplicationInfo applicationInfo;
        HashSet hashSet = new HashSet();
        Iterator<aex.C0796a> it = aeo().iterator();
        boolean z2 = false;
        int i2 = 0;
        while (it.hasNext()) {
            aex.C0796a next = it.next();
            if (next != null && next.afP != null) {
                Message message = new Message();
                message.what = 4;
                if (!TextUtils.isEmpty(next.afP.appName)) {
                    message.obj = next.afP.appName;
                } else {
                    message.obj = next.afP.packageName;
                }
                i2++;
                message.arg1 = i2;
                getHandler().sendMessage(message);
                if (avu.m8746hj(next.afP.riskType)) {
                    ady.m12308tK().mo1746bi(100361);
                }
                if (next.afP.isPersonApp) {
                    try {
                        boolean m12089fc = !aff.m12090fb(next.afP.packageName) ? aff.m12089fc(next.afP.packageName) : true;
                        if (!m12089fc) {
                            hashSet.add(next);
                        } else {
                            next.afP.enable = 2;
                        }
                        z = m12089fc;
                    } catch (Throwable th) {
                        hashSet.add(next);
                        z = z2;
                    }
                } else {
                    try {
                        if (abd.m12839qb() >= 20 || (aex.m12145a(next) != 0 && next.afP.clearAction != 4)) {
                            i = -99;
                        } else {
                            i = this.byi.m13052a(next.afP.packageName, next.afP.classify, next.afP.description, (AppBackupTool.InterfaceC0603b) null);
                        }
                        if (i == 0) {
                            try {
                                applicationInfo = C3952zh.m1312pq().getApplicationInfo(next.afP.packageName, 0);
                            } catch (PackageManager.NameNotFoundException e) {
                                applicationInfo = null;
                            }
                            if (applicationInfo != null) {
                                z2 = aff.m12096V(applicationInfo.packageName, applicationInfo.sourceDir) == 0;
                            }
                        } else {
                            z2 = aff.m12092eZ(next.afP.packageName) == 0;
                        }
                        if (!z2) {
                            hashSet.add(next);
                        } else if (i == 0) {
                            next.afP.enable = 2;
                        } else {
                            next.afP.enable = 1;
                        }
                        z = z2;
                    } catch (Throwable th2) {
                        hashSet.add(next);
                        z = z2;
                    }
                }
                z2 = z;
            }
        }
        List<String> allRiskApps = arv.m9499Nz().getAllRiskApps();
        Iterator it2 = new HashSet(aeo()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            aex.C0796a c0796a = (aex.C0796a) it2.next();
            if (c0796a != null && c0796a.afP != null && !TextUtils.isEmpty(c0796a.afP.packageName) && allRiskApps.contains(c0796a.afP.packageName)) {
                ady.m12308tK().mo1746bi(100411);
                beg.m7461Zj().m7450c(this.byq);
                break;
            }
        }
        Message obtainMessage = getHandler().obtainMessage(5);
        obtainMessage.arg1 = aeo().size();
        obtainMessage.arg2 = hashSet.size();
        aeo().removeAll(hashSet);
        if (this.f4032VA == 0 && aeo().size() != 0) {
            ady.m12308tK().mo1733w(100060, aeo().size());
        }
        getHandler().sendMessageDelayed(obtainMessage, 300L);
    }

    /* renamed from: g */
    private void m6646g(aex.C0796a c0796a) {
        aff.m12095a(c0796a.afP.packageName, (Activity) getContext(), 0);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 1:
                beg.m7461Zj().m7450c(this.byl);
                return;
            case 2:
                ael();
                if (this.byk == 1) {
                    getHandler().sendEmptyMessage(19);
                    return;
                } else {
                    getHandler().sendEmptyMessage(10);
                    return;
                }
            case 3:
                this.bxT = aeo().size();
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bjr.3
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        bjr.this.aes();
                    }
                }));
                return;
            case 4:
                this.acy.setText(String.format(m1417V(2131166034L), Integer.valueOf(message.arg1), Integer.valueOf(this.bxT)));
                this.baA.setText((String) message.obj);
                return;
            case 5:
                this.acy.setText(R.string.completed);
                this.ahC.setVisibility(4);
                this.acx.clearAnimation();
                if (message.arg2 == 0) {
                    this.acx.setImageResource(R.drawable.succeful_uninstall_ok);
                    this.baA.setText("");
                } else {
                    int i = message.arg1 - message.arg2;
                    String str = null;
                    try {
                        str = String.format(m1417V(2131166086L), Integer.valueOf(i), Integer.valueOf(message.arg2));
                    } catch (Throwable th) {
                    }
                    this.baA.setText((str == null || i < 0) ? "" : "");
                    this.acx.setImageResource(R.drawable.backgroup_uninstall_failture);
                }
                getHandler().sendEmptyMessageDelayed(6, 1000L);
                return;
            case 6:
                HashSet<aex.C0796a> aeo = aeo();
                ((bjj) this.f4010Vc.get(this.f4032VA)).m6717p(aeo);
                aeo.clear();
                m6629vh();
                return;
            case 7:
                m6646g((aex.C0796a) message.obj);
                return;
            case 8:
                aeu();
                return;
            case 9:
            case 13:
            case 14:
            default:
                return;
            case 10:
                beg.m7461Zj().m7450c(this.bym);
                return;
            case 11:
                ael();
                return;
            case 12:
                if (message.obj instanceof String) {
                }
                return;
            case 15:
                if (message.obj != null) {
                    getHandler().sendEmptyMessage(((Integer) message.obj).intValue());
                    return;
                }
                return;
            case 16:
                if (message.obj != null) {
                    getHandler().sendEmptyMessage(((Integer) message.obj).intValue());
                    return;
                }
                return;
            case 17:
                this.byc = true;
                afe.m12102aE(this.mContext).m12100uY();
                return;
            case 18:
                C3954zj.m1307c(m1417V(2131166088L), 0);
                return;
            case 19:
                beg.m7461Zj().m7450c(this.byn);
                return;
        }
    }

    @Override // com.kingroot.kinguser.afe.InterfaceC0802a
    /* renamed from: aA */
    public void mo6653aA(boolean z) {
        if (this.byc) {
            this.byc = false;
            if (z) {
                getHandler().sendEmptyMessage(3);
                return;
            }
            m6629vh();
            aet();
            getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.bjr.4
                @Override // java.lang.Runnable
                public void run() {
                    C3954zj.m1307c(C3953zi.m1311pr().getString(R.string.need_manually_uninstall_apk), 0);
                }
            });
        }
    }

    private void aet() {
        HashSet<aex.C0796a> aeo = aeo();
        this.byf.clear();
        this.byf.addAll(aeo);
        Iterator<aex.C0796a> it = aeo.iterator();
        while (it.hasNext()) {
            getHandler().obtainMessage(7, it.next()).sendToTarget();
        }
    }

    private void aeu() {
        final bjt bjtVar = new bjt(getContext());
        bjtVar.show();
        bjtVar.setTitleText(m1417V(2131166151L));
        bjtVar.m6614ma(m1417V(2131165725L));
        bjtVar.m6616lK(m1417V(2131165380L));
        bjtVar.m6615lL(m1417V(2131165385L));
        bjtVar.m6620a(new adf.InterfaceC0715b() { // from class: com.kingroot.kinguser.bjr.5
            @Override // com.kingroot.kinguser.adf.InterfaceC0715b
            /* renamed from: m */
            public boolean mo6627m(View view) {
                bjtVar.dismiss();
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aev() {
        if (aeo().size() != 0) {
            aer();
        }
    }

    /* renamed from: vh */
    private void m6629vh() {
        if (this.ahB != null && this.ahB.isShowing()) {
            this.ahB.dismiss();
        }
    }

    /* renamed from: Uy */
    private void m6659Uy() {
        if (this.ahB == null) {
            this.ahB = new adi(getContext());
            this.ahB.show();
            Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
            WindowManager.LayoutParams attributes = this.ahB.getWindow().getAttributes();
            attributes.width = defaultDisplay.getWidth();
            attributes.height = defaultDisplay.getHeight();
            this.ahB.getWindow().setAttributes(attributes);
            this.ahB.setContentView(R.layout.cleaner_uninstall_progress_dialog);
            this.acy = (TextView) this.ahB.findViewById(R.id.process_percent_tv);
            this.baA = (TextView) this.ahB.findViewById(R.id.current_software);
            this.acx = (ImageView) this.ahB.findViewById(R.id.progress_turning);
            this.ahC = (ImageView) this.ahB.findViewById(R.id.progress_iv);
            this.acz = AnimationUtils.loadAnimation(getContext(), R.anim.progress_rotation_anim);
            this.ahB.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kingroot.kinguser.bjr.6
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    return true;
                }
            });
            this.ahB.setCanceledOnTouchOutside(false);
        }
        this.baA.setText("");
        this.ahC.setVisibility(0);
        this.acy.setText(String.format(m1417V(2131166034L), 0, Integer.valueOf(aeo().size())));
        this.acx.setImageResource(R.drawable.uninstall_uninstall_2);
        this.acx.startAnimation(this.acz);
        this.ahB.show();
    }

    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && this.byf.size() > 0) {
            for (aex.C0796a c0796a : this.byf) {
                if (!C3952zh.m1312pq().m1314du(c0796a.afP.packageName)) {
                    ((bjj) this.f4010Vc.get(this.f4032VA)).m6718d(c0796a);
                    this.byf.remove(c0796a);
                }
            }
        }
        if (i2 == 4 && i == 2) {
            getHandler().sendEmptyMessage(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        beg.m7461Zj().m7450c(this.byo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        bjs.byC = null;
        blj.m6497b(this);
        m6629vh();
        aex();
        aez();
        super.onDestroy();
    }

    /* renamed from: com.kingroot.kinguser.bjr$a */
    /* loaded from: classes.dex */
    class C2465a extends acw {
        public C2465a(Context context, String str) {
            super(context, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.acw, com.kingroot.kinguser.AbstractC3933yp
        /* renamed from: pa */
        public void mo1366pa() {
            super.mo1366pa();
            m12562c(C3953zi.m1311pr().getDrawable(R.drawable.recycl_uninstall_default));
        }

        /* renamed from: jt */
        public void m6626jt(int i) {
            if (i != this.abA.getVisibility()) {
                this.abA.setVisibility(i);
            }
        }

        @Override // com.kingroot.kinguser.AbstractC3933yp
        /* renamed from: oI */
        protected void mo1375oI() {
            m12560ck(1);
            m12567aq(false);
            m12561c(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjr.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bjr.this.getActivity().finish();
                }
            });
            m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjr.a.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100239);
                    Intent intent = new Intent();
                    intent.setClass(C2465a.this.getContext(), SoftWareRecycleActivity.class);
                    bjr.this.getActivity().startActivityForResult(intent, 2);
                }
            });
            mo10167sg().setBackgroundColor(C3953zi.m1311pr().getColor(R.color.uninstall_background_color));
        }
    }

    @Override // com.kingroot.kinguser.blj.InterfaceC2503a
    public void onPackageAdd(String str) {
        PackageInfo packageInfo;
        boolean z;
        TcPkgInfo tcPkgInfo;
        TcPkgInfo tcPkgInfo2;
        if (this.byd != null) {
            C3952zh m1312pq = C3952zh.m1312pq();
            try {
                packageInfo = m1312pq.getPackageInfo(str, 64);
            } catch (PackageManager.NameNotFoundException e) {
                packageInfo = null;
            }
            Iterator<TcPkgInfo> it = bjs.byC.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    tcPkgInfo = null;
                    break;
                }
                tcPkgInfo = it.next();
                if (TextUtils.equals(tcPkgInfo.packageName, str)) {
                    if (packageInfo == null) {
                        z = true;
                        tcPkgInfo = null;
                    } else {
                        tcPkgInfo.enable = 0;
                        tcPkgInfo.versionCode = packageInfo.versionCode;
                        tcPkgInfo.versionName = packageInfo.versionName;
                        tcPkgInfo.appSourceDir = packageInfo.applicationInfo.sourceDir;
                        tcPkgInfo.isPersonApp = (packageInfo.applicationInfo.flags & 1) == 0;
                        if (tcPkgInfo.isPersonApp) {
                            tcPkgInfo.classify = 0;
                        }
                        if (packageInfo.applicationInfo.sourceDir != null) {
                            File file = new File(packageInfo.applicationInfo.sourceDir);
                            tcPkgInfo.pkgLastModified = file.lastModified();
                            tcPkgInfo.pkgSize = file.length();
                        }
                        z = true;
                    }
                }
            }
            if (z || packageInfo == null || TextUtils.equals(packageInfo.packageName, KApplication.m13453ge().getPackageName())) {
                tcPkgInfo2 = tcPkgInfo;
            } else {
                TcPkgInfo m13060a = TcPkgInfo.m13060a(m1312pq, packageInfo, 0, true, false, null);
                if (!m13060a.isPersonApp) {
                    m13060a.checkCacheFail = true;
                }
                bjs.byC.add(m13060a);
                tcPkgInfo2 = m13060a;
            }
            if (tcPkgInfo2 != null) {
                ((bjj) this.f4010Vc.get(1)).m6723b(tcPkgInfo2);
                beg.m7461Zj().m7450c(this.byo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    public void aew() {
        if (this.byg == null) {
            this.byg = new bid(getActivity());
        }
        this.byg.show();
        ady.m12308tK().mo1746bi(100362);
        C3953zi m1311pr = C3953zi.m1311pr();
        this.byg.setTitleText(m1311pr.getString(R.string.we_secure_guide_dialog_title));
        this.byg.mo6682lK(m1311pr.getString(R.string.dialog_btn_cancel));
        this.byg.m6930lL(m1311pr.getString(R.string.we_secure_guide_dialog_btn_startup));
        this.byg.m6933d(m1311pr.getString(R.string.we_secure_guide_dialog_content));
        this.byg.m6938a(bid.EnumC2302a.BTN_RIGHT);
        this.byg.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bjr.8
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                aks.m11143BP().m10777eD(2);
                bjr.this.aey();
                beg.m7461Zj().m7450c(bjr.this.byp);
                ady.m12308tK().mo1746bi(100363);
            }
        });
        this.byg.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bjr.9
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100364);
            }
        });
    }

    @UiThread
    private void aex() {
        if (this.byg != null && this.byg.isShowing()) {
            this.byg.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    public void aey() {
        if (this.byh == null) {
            this.byh = new bif(this.mContext);
        }
        this.byh.show();
        this.byh.setTitleText(C3953zi.m1311pr().getString(R.string.we_secure_guide_dialog_title));
        this.byh.m6933d(C3953zi.m1311pr().getString(R.string.we_secure_guide_progress_dialog_content));
        this.byh.m6921iZ(8);
        this.byh.m6922ef(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    public void aez() {
        if (this.byh != null && this.byh.isShowing()) {
            this.byh.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public boolean m6660H(@NonNull File file) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            KUApplication.m13453ge().startActivity(intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
