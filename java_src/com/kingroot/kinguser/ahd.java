package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.common.uilib.SlidingUpPanelLayout;
import com.kingroot.kinguser.advance.model.QuickInstallRecommendModel;
import com.kingroot.kinguser.advance.model.QuickInstallerInfo;
import com.kingroot.kinguser.ahd;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ahd extends ans {

    /* renamed from: Gc */
    private int f1436Gc;
    private final View.OnClickListener ahN;
    private ImageView ahP;
    private and.C1258a akD;
    private final QuickInstallerInfo anR;
    private ada anW;
    private ImageView anX;
    private ImageView anY;
    private TextView anZ;
    private String aoA;
    private String aoB;
    private View aoC;
    private TextView aoD;
    private Button aoE;
    private TextView aoF;
    private View aoG;
    private Button aoH;
    private Button aoI;
    private boolean aoJ;
    private ProgressBar aoK;
    private bed aoL;
    private ILoadAppsListener aoM;
    private ILoadAppsListener aoN;
    private SlidingUpPanelLayout.InterfaceC0559b aoO;
    private TextView aoa;
    private TextView aob;
    private ImageView aoc;
    private ImageView aod;
    private Button aoe;
    private Button aof;
    private View aog;
    private LinearLayout aoh;
    private RecyclerView aoi;
    private alf aoj;
    private View aok;
    private List<ame> aol;
    private List<ame> aom;
    private int aon;
    private int aoo;
    private int aop;
    private alf aoq;
    private RecyclerView aor;
    private View aos;
    private LinearLayout aot;
    private SlidingUpPanelLayout aou;
    private ImageView aov;
    private TextView aow;
    private SlidingUpPanelLayout.EnumC0560c aox;
    private bid aoy;
    private View aoz;

    public ahd(Context context, QuickInstallerInfo quickInstallerInfo, View.OnClickListener onClickListener) {
        super(context);
        this.aol = new ArrayList();
        this.aom = new ArrayList();
        this.akD = new and.C1258a();
        this.aox = SlidingUpPanelLayout.EnumC0560c.COLLAPSED;
        this.aoA = C3953zi.m1311pr().getString(R.string.fake_package_installer_title);
        this.aoB = "";
        this.aoJ = false;
        this.aoL = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ahd.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ahd.this.m11812wF();
                ahd.this.m11811wG();
            }
        });
        this.aoM = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerPage$6
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                int i2;
                List list2;
                if (list.size() > 0) {
                    for (AppBaseModel appBaseModel : anf.m10282c(list, (List<String>) null)) {
                        list2 = ahd.this.aol;
                        list2.add(new QuickInstallRecommendModel(appBaseModel));
                    }
                    ahd ahdVar = ahd.this;
                    i2 = ahd.this.aon;
                    ahdVar.aon = i2 + 3;
                    ahd.this.getHandler().obtainMessage(2).sendToTarget();
                    return;
                }
                ahd.this.getHandler().obtainMessage(3).sendToTarget();
            }
        };
        this.aoN = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerPage$7
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                int i2;
                List list2;
                if (list.size() > 0) {
                    for (AppBaseModel appBaseModel : anf.m10282c(list, (List<String>) null)) {
                        list2 = ahd.this.aom;
                        list2.add(new QuickInstallRecommendModel(appBaseModel));
                    }
                    ahd ahdVar = ahd.this;
                    i2 = ahd.this.aoo;
                    ahdVar.aoo = i2 + 3;
                    ahd.this.getHandler().obtainMessage(4).sendToTarget();
                    return;
                }
                ahd.this.getHandler().obtainMessage(5).sendToTarget();
            }
        };
        this.aoO = new SlidingUpPanelLayout.InterfaceC0559b() { // from class: com.kingroot.kinguser.ahd.6
            @Override // com.kingroot.common.uilib.SlidingUpPanelLayout.InterfaceC0559b
            public void onPanelSlide(View view, float f) {
            }

            @Override // com.kingroot.common.uilib.SlidingUpPanelLayout.InterfaceC0559b
            /* renamed from: b */
            public void mo7324b(View view, SlidingUpPanelLayout.EnumC0560c enumC0560c, SlidingUpPanelLayout.EnumC0560c enumC0560c2) {
                if (ahd.this.aox != enumC0560c2 && enumC0560c2 != SlidingUpPanelLayout.EnumC0560c.DRAGGING) {
                    ahd.this.aox = enumC0560c2;
                    if (enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
                        ady.m12308tK().mo1746bi(100717);
                        bhk.m6994b(ahd.this.aov, 0.0f, 180.0f, 250L);
                        ahd.this.m11823fL(ahd.this.aoB);
                    } else if (enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.COLLAPSED) {
                        bhk.m6994b(ahd.this.aov, 180.0f, 0.0f, 250L);
                        ahd.this.m11823fL(ahd.this.aoA);
                    }
                }
            }
        };
        this.anR = quickInstallerInfo;
        this.ahN = onClickListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        this.anY.clearAnimation();
        this.aoc.clearAnimation();
        this.aod.clearAnimation();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        beg.m7461Zj().m7450c(this.aoL);
        m11816wB();
    }

    /* renamed from: wB */
    public void m11816wB() {
        if (!m1404oP()) {
            switch (this.anR.state) {
                case 1:
                    this.aoJ = false;
                    m11830aG(true);
                    this.aoG.setVisibility(0);
                    this.aoI.setVisibility(0);
                    this.anY.setBackgroundResource(R.drawable.install_san_rotating);
                    this.anX.setVisibility(8);
                    this.aoa.setTextColor(Color.parseColor("#182e43"));
                    this.aoa.setText(C3953zi.m1311pr().getString(R.string.quick_install_state_scanning, this.anR.appName));
                    this.aoB = this.aoa.getText().toString();
                    if (this.aox == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
                        m11823fL(this.aoB);
                    }
                    this.aoe.setVisibility(8);
                    this.aof.setVisibility(8);
                    if (!TextUtils.isEmpty(this.anR.apE)) {
                        this.aob.setVisibility(0);
                        this.aob.setText(R.string.quick_install_from_checking);
                        this.aoc.setVisibility(0);
                        this.aoc.setImageResource(R.drawable.quick_install_scan_icon);
                        this.aoc.clearAnimation();
                        bhk.m6997a((View) this.aoc, 1000L, true);
                    } else {
                        this.aob.setVisibility(8);
                        this.aoc.setVisibility(8);
                    }
                    this.aod.setImageResource(R.drawable.quick_install_scan_icon);
                    this.aod.setVisibility(0);
                    this.aod.clearAnimation();
                    bhk.m6997a((View) this.aod, 1000L, true);
                    this.anZ.setVisibility(0);
                    this.anZ.setText(R.string.quick_install_risk_checking);
                    this.anY.clearAnimation();
                    bhk.m6997a((View) this.anY, 1000L, true);
                    return;
                case 2:
                    m11830aG(false);
                    this.aoG.setVisibility(8);
                    this.aoD.setVisibility(8);
                    this.aoF.setVisibility(8);
                    this.aoE.setVisibility(8);
                    this.anX.setVisibility(8);
                    this.aoK.setVisibility(0);
                    this.aoa.setTextColor(Color.parseColor("#182e43"));
                    this.aoa.setText(C3953zi.m1311pr().getString(R.string.quick_install_state_installing, this.anR.appName));
                    this.aoB = this.aoa.getText().toString();
                    if (this.aox == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
                        m11823fL(this.aoB);
                    }
                    this.aoe.setVisibility(8);
                    this.aof.setVisibility(8);
                    this.aob.setVisibility(8);
                    this.aoc.clearAnimation();
                    this.aoc.setVisibility(8);
                    this.aod.clearAnimation();
                    this.aod.setVisibility(8);
                    this.anZ.setVisibility(8);
                    this.anY.clearAnimation();
                    this.anY.setBackgroundResource(R.drawable.install_cir_bg);
                    return;
                case 3:
                    m11830aG(true);
                    this.aoG.setVisibility(8);
                    this.anX.setVisibility(0);
                    this.aoe.setVisibility(0);
                    this.aof.setVisibility(0);
                    this.aoc.setVisibility(8);
                    this.aob.setVisibility(8);
                    this.aod.setVisibility(8);
                    this.anZ.setVisibility(8);
                    this.aoK.setVisibility(8);
                    if (this.anR.apF == 1) {
                        this.aoe.setText(R.string.app_open_state_btn);
                        this.aof.setText(R.string.unroot_dialog_fail_report_commit_success_btn_finish);
                        this.anX.setImageResource(R.drawable.icon_allow);
                        this.aoa.setTextColor(C3953zi.m1311pr().getColor(R.color.green_1));
                        this.aoa.setText(R.string.quick_install_install_succ);
                        this.aoB = C3953zi.m1311pr().getString(R.string.quick_install_install_title_succ, this.anR.appName);
                        if (this.aox == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
                            m11823fL(this.aoB);
                        }
                    } else {
                        if (aks.m11143BP().m10920Ge() >= 3) {
                            this.aoe.setVisibility(8);
                        } else {
                            this.aoe.setText(R.string.anti_open_fail_dialog_confirm);
                        }
                        this.aof.setText(R.string.quick_install_use_system_interface);
                        this.anX.setImageResource(R.drawable.virulence_red_cir);
                        this.aoa.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
                        this.aoa.setText(R.string.quick_install_fail);
                        this.aoB = C3953zi.m1311pr().getString(R.string.quick_install_title_failed, this.anR.appName);
                        if (this.aox == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
                            m11823fL(this.aoB);
                        }
                    }
                    this.anY.clearAnimation();
                    this.anY.setBackgroundResource(R.drawable.install_cir_bg);
                    this.aou.m13207l(abg.m12835r(200.0f), true);
                    return;
                case 4:
                    m11830aG(true);
                    switch (this.anR.apG) {
                        case 0:
                        case 1:
                            this.anY.clearAnimation();
                            this.anY.setBackgroundResource(R.drawable.install_cir_bg);
                            this.aoJ = false;
                            this.aoa.setText(C3953zi.m1311pr().getString(R.string.quick_install_state_ready_to_install, this.anR.appName));
                            if (!TextUtils.isEmpty(this.anR.apE)) {
                                this.aob.setVisibility(0);
                                this.aob.setText(C3953zi.m1311pr().getString(R.string.quick_install_from, this.anR.apE));
                                this.aoc.setVisibility(0);
                                this.aoc.clearAnimation();
                                this.aoc.setImageResource(R.drawable.common_tick);
                            } else {
                                this.aob.setVisibility(8);
                                this.aoc.setVisibility(8);
                            }
                            this.anZ.setVisibility(0);
                            this.anZ.setText(R.string.quick_install_risk_safe);
                            this.aod.setVisibility(0);
                            this.aod.clearAnimation();
                            this.aod.setImageResource(R.drawable.common_tick);
                            this.aoG.setVisibility(0);
                            this.aoI.setVisibility(0);
                            this.aoI.setText(R.string.quick_install_btn_ensure_install);
                            this.aoH.setVisibility(0);
                            this.aoe.setVisibility(8);
                            break;
                        default:
                            this.aoJ = true;
                            this.aoG.setVisibility(8);
                            this.aoe.setVisibility(8);
                            this.aof.setVisibility(8);
                            this.aob.setVisibility(8);
                            this.aoc.setVisibility(8);
                            this.aod.setVisibility(8);
                            this.anZ.setVisibility(8);
                            if (this.anR.apG == Integer.MIN_VALUE) {
                                this.aoD.setVisibility(0);
                                this.aoD.setText(R.string.quick_install_risk_content);
                            } else {
                                String m12402xb = this.anR.m12402xb();
                                if (!TextUtils.isEmpty(m12402xb)) {
                                    this.aoD.setVisibility(0);
                                    this.aoD.setText(m12402xb);
                                }
                            }
                            this.aoF.setVisibility(0);
                            this.aoE.setVisibility(0);
                            this.anX.setVisibility(0);
                            this.anY.clearAnimation();
                            this.anY.setBackgroundResource(R.drawable.risk_install_bg);
                            this.anX.setImageResource(R.drawable.virulence_red_cir);
                            this.aoa.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
                            this.aoa.setText(C3953zi.m1311pr().getString(R.string.quick_install_state_found_risk, this.anR.appName));
                            break;
                    }
                    this.aoB = this.aoa.getText().toString();
                    if (this.aox == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
                        m11823fL(this.aoB);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.anW = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.fake_package_installer_title));
        View wholeView = this.anW.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        m11830aG(false);
        return this.anW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fL */
    public void m11823fL(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.anW.m12559ey(str);
        }
    }

    /* renamed from: aG */
    private void m11830aG(boolean z) {
        this.anW.m12566ar(z);
        this.anW.m12567aq(false);
        if (z) {
            this.anW.m12562c(C3953zi.m1311pr().getDrawable(R.drawable.common_more));
            this.anW.getWholeView().findViewById(R.id.right_btn).setBackgroundResource(R.drawable.title_button_selector);
            this.anW.m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.ahd.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ahd.this.m11817r(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m11817r(View view) {
        final aic aicVar = new aic(getContext(), view);
        C3953zi m1311pr = C3953zi.m1311pr();
        ArrayList arrayList = new ArrayList();
        arrayList.add(m1311pr.getString(R.string.quick_install_disable));
        aic.C0981b c0981b = new aic.C0981b(getContext(), arrayList, false, null);
        aicVar.m11674Y(arrayList);
        aicVar.m11673a(c0981b);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.ahd.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                aicVar.dismiss();
                switch (i) {
                    case 0:
                        ahd.this.m11815wC();
                        return;
                    default:
                        return;
                }
            }
        });
        aicVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wC */
    public void m11815wC() {
        if (this.aoy == null) {
            this.aoy = new bid(getContext());
            this.aoy.show();
            this.aoy.setTitleText(C3953zi.m1311pr().getString(R.string.quick_install_disable));
            this.aoy.m6933d(C3953zi.m1311pr().getString(R.string.quick_install_confirm_dialog_content));
            this.aoy.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ahd.3
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ahd.this.getActivity().finish();
                    aks.m11143BP().m10782cu(false);
                    ags.m11911aF(false);
                }
            });
            this.aoy.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ahd.4
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                }
            });
            return;
        }
        this.aoy.dismiss();
        this.aoy.show();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.quick_package_installer_page, (ViewGroup) null);
        this.aou = (SlidingUpPanelLayout) inflate.findViewById(R.id.sliding_up_panel_layout);
        this.aoz = inflate.findViewById(R.id.loading_layout);
        this.anY = (ImageView) inflate.findViewById(R.id.background);
        this.ahP = (ImageView) inflate.findViewById(R.id.icon);
        Drawable m12404fM = QuickInstallerInfo.m12404fM(this.anR.apkPath);
        if (m12404fM != null) {
            this.ahP.setImageDrawable(m12404fM);
        }
        this.aoa = (TextView) inflate.findViewById(R.id.install_state);
        this.anX = (ImageView) inflate.findViewById(R.id.install_tips_icon);
        this.aob = (TextView) inflate.findViewById(R.id.orignial_name);
        this.aoc = (ImageView) inflate.findViewById(R.id.original_tips_icon);
        this.anZ = (TextView) inflate.findViewById(R.id.risk_name);
        this.aod = (ImageView) inflate.findViewById(R.id.risk_tips_icon);
        this.aoe = (Button) inflate.findViewById(R.id.btn_left);
        this.aof = (Button) inflate.findViewById(R.id.btn_right);
        this.aog = inflate.findViewById(R.id.drag_panel);
        this.aov = (ImageView) inflate.findViewById(R.id.arrow);
        this.aow = (TextView) inflate.findViewById(R.id.btn_enter_app_market);
        this.aoC = inflate.findViewById(R.id.main_divider);
        this.aow.setOnClickListener(this.ahN);
        this.aoe.setOnClickListener(this.ahN);
        this.aof.setOnClickListener(this.ahN);
        this.aoD = (TextView) inflate.findViewById(R.id.risk_content);
        this.aoE = (Button) inflate.findViewById(R.id.btn_goto_safe_download);
        this.aoF = (TextView) inflate.findViewById(R.id.btn_continue_install);
        this.aoF.setOnClickListener(this.ahN);
        this.aoE.setOnClickListener(this.ahN);
        this.aoG = inflate.findViewById(R.id.btn_layout);
        this.aoH = (Button) inflate.findViewById(R.id.btn_cancel);
        this.aoI = (Button) inflate.findViewById(R.id.btn_install);
        this.aoH.setOnClickListener(this.ahN);
        this.aoI.setOnClickListener(this.ahN);
        C3857ws.m1498g(this.aog);
        this.aoh = (LinearLayout) inflate.findViewById(R.id.app_recommend_layout);
        this.aoi = (RecyclerView) inflate.findViewById(R.id.app_task_recommend_list);
        this.aoj = new alf(this.mContext, this.aol);
        this.aoj.m10621fe(3);
        this.aoj.m10628a(this.akD);
        this.aoi.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
        this.aoi.setItemAnimator(new DefaultItemAnimator());
        this.aoi.setAdapter(this.aoj);
        this.aok = inflate.findViewById(R.id.app_task_recommend_more);
        this.aok.setOnClickListener(this.ahN);
        this.aot = (LinearLayout) inflate.findViewById(R.id.app_suggestion_layout);
        this.aor = (RecyclerView) inflate.findViewById(R.id.app_task_suggestion_list);
        this.aoq = new alf(this.mContext, this.aom);
        this.aoq.m10621fe(3);
        this.aoq.m10628a(this.akD);
        this.aor.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
        this.aor.setItemAnimator(new DefaultItemAnimator());
        this.aor.setAdapter(this.aoq);
        this.aos = inflate.findViewById(R.id.app_task_suggestion_more);
        this.aos.setOnClickListener(this.ahN);
        this.aou.m13225a(this.aoO);
        this.aoK = (ProgressBar) inflate.findViewById(R.id.install_process);
        ady.m12308tK().mo1746bi(100716);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 2:
            case 3:
                if (this.aol.size() < 4 && this.f1436Gc < 2) {
                    m11812wF();
                    this.f1436Gc++;
                    return;
                }
                m11814wD();
                this.f1436Gc = 0;
                return;
            case 4:
            case 5:
                if (this.aom.size() < 4 && this.aop < 2) {
                    m11811wG();
                    this.aop++;
                    return;
                }
                m11813wE();
                this.aop = 0;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        this.aoj.m10629GN();
        this.aoq.m10629GN();
    }

    /* renamed from: wD */
    private void m11814wD() {
        if (this.aol.size() < 4) {
            this.aoh.setVisibility(8);
            this.aoz.setVisibility(0);
            return;
        }
        this.aoz.setVisibility(8);
        this.aoj.notifyDataSetChanged();
        this.aoh.setVisibility(0);
    }

    /* renamed from: wE */
    private void m11813wE() {
        if (this.aom.size() < 4) {
            this.aoz.setVisibility(0);
            return;
        }
        this.aoz.setVisibility(8);
        this.aoq.notifyDataSetChanged();
        this.aoC.setVisibility(0);
        this.aot.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wF */
    public void m11812wF() {
        alq.m10547GY().mo10433a(5012412, 3, this.aon, this.aoM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wG */
    public void m11811wG() {
        alq.m10547GY().mo10433a(5012410, 3, this.aoo, this.aoN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        if (this.aou == null || this.aou.getPanelState() != SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            return false;
        }
        this.aou.setPanelState(SlidingUpPanelLayout.EnumC0560c.COLLAPSED);
        return true;
    }
}
