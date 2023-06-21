package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguser.axo;
import com.kingroot.kinguser.bbt;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import com.kingroot.kinguser.root.mgr.IAppRulesChangeListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class axo extends AbstractC3926yn<RootMgrAppModel> {
    private ImageView acx;
    private TextView acy;
    private Animation acz;
    private adi ahB;
    private ImageView ahC;
    private TextView baA;
    private View baB;
    private View baC;
    private View baD;
    private boolean baE;
    private final IAppRulesChangeListener baF;
    private bed baG;
    private bed baH;
    private View.OnClickListener baI;
    private View.OnClickListener baJ;
    private View.OnClickListener baK;
    private aks bay;
    private bih baz;
    private View mEmptyView;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m8238a(final int i, final RootMgrAppModel rootMgrAppModel) {
        if (rootMgrAppModel == null || rootMgrAppModel.aQQ == null || rootMgrAppModel.f3142ot != 1) {
            return false;
        }
        if (this.baz == null) {
            this.baz = new bih(this.mContext);
            this.baz.show();
            this.baz.m6917ja(R.drawable.red_bg);
        } else {
            this.baz.show();
        }
        this.baz.setTitleText(rootMgrAppModel.aQQ.m3056PD());
        this.baz.m6916jb(0);
        this.baz.m6914lM(rootMgrAppModel.aQQ.getPackageName());
        this.baz.m6930lL(C3953zi.m1311pr().getString(R.string.risk_app_root_mgr_tip_btn_uninstall));
        this.baz.mo6682lK(C3953zi.m1311pr().getString(R.string.risk_app_root_mgr_tip_btn_continue_mgr));
        this.baz.m6919a(bid.EnumC2302a.BTN_RIGHT, R.color.red_1);
        this.baz.m6919a(bid.EnumC2302a.BTN_LEFT, R.color.blue_2);
        Drawable drawable = null;
        try {
            drawable = C3952zh.m1312pq().getApplicationIcon(rootMgrAppModel.aQQ.getPackageName());
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (drawable != null) {
            this.baz.setIcon(drawable);
        } else {
            this.baz.setIcon(R.drawable.icon);
        }
        this.baz.m6933d(rootMgrAppModel.riskDescription);
        this.baz.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axo.1
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axo.this.m8225hA(i);
                ady.m12308tK().mo1746bi(100372);
            }
        });
        this.baz.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axo.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axo.this.m8240Uy();
                beg.m7461Zj().m7454a(axo.this.baG, rootMgrAppModel);
                ady.m12308tK().mo1746bi(100371);
            }
        });
        ady.m12308tK().mo1746bi(100370);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: vh */
    public void m8219vh() {
        if (this.ahB != null && this.ahB.isShowing()) {
            this.ahB.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uy */
    public void m8240Uy() {
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
            this.ahB.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kingroot.kinguser.axo.8
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    return true;
                }
            });
            this.ahB.setCanceledOnTouchOutside(false);
        }
        this.baA.setText("");
        this.ahC.setVisibility(0);
        this.acy.setText(String.format(m1417V(2131166034L), 0, 1));
        this.acx.setImageResource(R.drawable.uninstall_uninstall_2);
        this.acx.startAnimation(this.acz);
        this.ahB.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        if (this.baz != null && this.baz.isShowing()) {
            this.baz.dismiss();
        }
        m8219vh();
        super.onDestroy();
    }

    public axo(Context context) {
        super(context, "root_mgr_page");
        this.baz = null;
        this.baE = true;
        this.baF = new IAppRulesChangeListener.Stub() { // from class: com.kingroot.kinguser.page.RootMgrPage$3
            @Override // com.kingroot.kinguser.root.mgr.IAppRulesChangeListener
            public void onAppRulesChangeListener() {
                bbt.m7780WG().removeAppRulesChangeListener(axo.this.baF);
                axo.this.getHandler().sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.baG = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axo.7
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                ApplicationInfo applicationInfo;
                boolean z = false;
                super.mo1208a(interfaceC2117a);
                try {
                    List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                    if (mo7445nF == null || mo7445nF.size() == 0) {
                        axo.this.getHandler().obtainMessage(2, false).sendToTarget();
                        return;
                    }
                    Object obj = mo7445nF.get(0);
                    if (!(obj instanceof RootMgrAppModel)) {
                        axo.this.getHandler().obtainMessage(2, false).sendToTarget();
                        return;
                    }
                    RootMgrAppModel rootMgrAppModel = (RootMgrAppModel) obj;
                    if (rootMgrAppModel.aQQ == null) {
                        axo.this.getHandler().obtainMessage(2, false).sendToTarget();
                        return;
                    }
                    try {
                        applicationInfo = C3952zh.m1312pq().getApplicationInfo(rootMgrAppModel.aQQ.getPackageName(), 0);
                    } catch (PackageManager.NameNotFoundException e) {
                        applicationInfo = null;
                    } catch (Throwable th) {
                        axo.this.getHandler().obtainMessage(2, false).sendToTarget();
                        throw th;
                    }
                    if (applicationInfo == null) {
                        axo.this.getHandler().obtainMessage(2, false).sendToTarget();
                        return;
                    }
                    if (C3941yx.m1356B(applicationInfo.flags, 1)) {
                        z = aff.m12096V(applicationInfo.packageName, applicationInfo.sourceDir) == 0;
                    } else {
                        z = aff.m12090fb(applicationInfo.packageName);
                    }
                    if (z) {
                        bbt.m7780WG().addAppRulesChangeListener(axo.this.baF);
                        bbt.m7780WG().checkAppRules();
                    }
                    axo.this.getHandler().obtainMessage(2, Boolean.valueOf(z)).sendToTarget();
                } catch (Throwable th2) {
                    axo.this.getHandler().obtainMessage(2, Boolean.valueOf(z)).sendToTarget();
                }
            }
        });
        this.baH = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axo.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<RootMgrAppModel> allAppsInfo = bbt.m7780WG().getAllAppsInfo();
                boolean z = aks.m11143BP().m10986Eq() != 0;
                arv m9499Nz = arv.m9499Nz();
                List<String> arrayList = new ArrayList<>();
                if (z) {
                    arrayList.addAll(m9499Nz.getAllRiskApps());
                }
                List<String> arrayList2 = new ArrayList<>();
                arrayList2.add("com.android.kinguser.console");
                if (z) {
                    arrayList2.addAll(m9499Nz.getAllUnknownApps());
                }
                awc m8697SB = awc.m8697SB();
                HashMap hashMap = new HashMap();
                for (RiskControlInfo riskControlInfo : m8697SB.m8688hn(1)) {
                    hashMap.put(riskControlInfo.packageName, riskControlInfo);
                }
                HashMap hashMap2 = new HashMap();
                for (RiskControlInfo riskControlInfo2 : m8697SB.m8696SC()) {
                    hashMap2.put(riskControlInfo2.packageName, riskControlInfo2);
                }
                HashMap hashMap3 = new HashMap();
                for (RiskControlInfo riskControlInfo3 : m8697SB.m8695SD()) {
                    hashMap3.put(riskControlInfo3.packageName, riskControlInfo3);
                }
                ArrayList<RootMgrAppModel> arrayList3 = new ArrayList();
                ArrayList<RootMgrAppModel> arrayList4 = new ArrayList();
                ArrayList<RootMgrAppModel> arrayList5 = new ArrayList();
                for (RootMgrAppModel rootMgrAppModel : allAppsInfo) {
                    if (rootMgrAppModel != null && rootMgrAppModel.aQQ != null) {
                        String packageName = rootMgrAppModel.aQQ.getPackageName();
                        if (!TextUtils.isEmpty(packageName) && !aff.m12088fd(packageName)) {
                            m8218a(rootMgrAppModel, packageName, z, arrayList, arrayList2, hashMap, hashMap2, hashMap3, m9499Nz);
                            if (rootMgrAppModel.aQS == 0) {
                                arrayList3.add(rootMgrAppModel);
                            } else if (1 == rootMgrAppModel.aQS) {
                                arrayList4.add(rootMgrAppModel);
                            } else if (2 == rootMgrAppModel.aQS) {
                                arrayList5.add(rootMgrAppModel);
                            }
                        }
                    }
                }
                ArrayList arrayList6 = new ArrayList();
                if (arrayList5.size() > 0) {
                    String format = String.format(axo.this.m1417V(2131165824L), Integer.valueOf(arrayList5.size()));
                    arrayList6.add(new AbstractC3926yn.C3929b(format));
                    for (RootMgrAppModel rootMgrAppModel2 : arrayList5) {
                        arrayList6.add(new AbstractC3926yn.C3929b(rootMgrAppModel2, format));
                    }
                }
                if (arrayList3.size() > 0) {
                    String format2 = String.format(axo.this.m1417V(2131165823L), Integer.valueOf(arrayList3.size()));
                    arrayList6.add(new AbstractC3926yn.C3929b(format2));
                    for (RootMgrAppModel rootMgrAppModel3 : arrayList3) {
                        arrayList6.add(new AbstractC3926yn.C3929b(rootMgrAppModel3, format2));
                    }
                }
                if (arrayList4.size() > 0) {
                    String format3 = String.format(axo.this.m1417V(2131165825L), Integer.valueOf(arrayList4.size()));
                    arrayList6.add(new AbstractC3926yn.C3929b(format3));
                    for (RootMgrAppModel rootMgrAppModel4 : arrayList4) {
                        arrayList6.add(new AbstractC3926yn.C3929b(rootMgrAppModel4, format3));
                    }
                }
                axo.this.m1411j(arrayList6);
            }

            /* JADX WARN: Removed duplicated region for block: B:35:0x00c0  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x00f0  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            private void m8218a(@NonNull RootMgrAppModel rootMgrAppModel, @NonNull String str, boolean z, @NonNull List<String> list, @NonNull List<String> list2, @NonNull Map<String, RiskControlInfo> map, @NonNull Map<String, RiskControlInfo> map2, @NonNull Map<String, RiskControlInfo> map3, @NonNull arv arvVar) {
                boolean z2;
                boolean z3;
                if (z && list.contains(str)) {
                    String m8747hi = avu.m8747hi(arvVar.getRiskType(str));
                    if (!TextUtils.isEmpty(m8747hi)) {
                        rootMgrAppModel.f3142ot = 1;
                        rootMgrAppModel.riskDescription = C3953zi.m1311pr().getString(R.string.uninstall_risk_app_description_format, m8747hi);
                        return;
                    }
                }
                String str2 = null;
                RiskControlInfo riskControlInfo = map.get(str);
                if (riskControlInfo != null) {
                    boolean isEmpty = TextUtils.isEmpty(riskControlInfo.aUH);
                    if (!isEmpty) {
                        String m13016dH = aab.m13016dH(aaz.m12872dZ(str));
                        if (TextUtils.isEmpty(m13016dH) || !m13016dH.equalsIgnoreCase(riskControlInfo.aUH)) {
                            str2 = m13016dH;
                        } else {
                            isEmpty = true;
                            str2 = m13016dH;
                        }
                    }
                    if (isEmpty) {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        rootMgrAppModel.f3142ot = 1;
                        if ("zh_CN".equalsIgnoreCase(C3946zb.m1333pi())) {
                            rootMgrAppModel.riskDescription = m1311pr.getString(R.string.uninstall_risk_app_description_format, riskControlInfo.riskDescription);
                            return;
                        } else {
                            rootMgrAppModel.riskDescription = m1311pr.getString(R.string.uninstall_risk_app_description_format, m1311pr.getString(R.string.risk_app_type_others_risk));
                            return;
                        }
                    }
                }
                RiskControlInfo riskControlInfo2 = map2.get(str);
                if (riskControlInfo2 != null) {
                    boolean isEmpty2 = TextUtils.isEmpty(riskControlInfo2.aUH);
                    if (!isEmpty2) {
                        if (str2 == null) {
                            str2 = aab.m13016dH(aaz.m12872dZ(str));
                        }
                        if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase(riskControlInfo2.aUH)) {
                            z3 = true;
                            if (z3) {
                                rootMgrAppModel.f3142ot = 2;
                                return;
                            }
                        }
                    }
                    z3 = isEmpty2;
                    if (z3) {
                    }
                }
                RiskControlInfo riskControlInfo3 = map3.get(str);
                if (riskControlInfo3 != null) {
                    boolean isEmpty3 = TextUtils.isEmpty(riskControlInfo3.aUH);
                    if (!isEmpty3) {
                        if (str2 == null) {
                            str2 = aab.m13016dH(aaz.m12872dZ(str));
                        }
                        if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase(riskControlInfo3.aUH)) {
                            z2 = true;
                            if (z2) {
                                rootMgrAppModel.f3142ot = 0;
                                return;
                            }
                        }
                    }
                    z2 = isEmpty3;
                    if (z2) {
                    }
                }
                if (!z) {
                    rootMgrAppModel.f3142ot = 0;
                    return;
                }
                int m8886jn = auw.m8886jn(str);
                if (m8886jn == 1 || m8886jn == 3 || m8886jn == 4) {
                    rootMgrAppModel.f3142ot = 0;
                } else if (list2.contains(str)) {
                    rootMgrAppModel.f3142ot = 0;
                } else {
                    rootMgrAppModel.f3142ot = 3;
                }
            }
        });
        this.baI = new View.OnClickListener() { // from class: com.kingroot.kinguser.axo.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axo.this.m8224hB(1);
            }
        };
        this.baJ = new View.OnClickListener() { // from class: com.kingroot.kinguser.axo.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axo.this.m8224hB(0);
            }
        };
        this.baK = new View.OnClickListener() { // from class: com.kingroot.kinguser.axo.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axo.this.m8224hB(2);
            }
        };
        this.bay = aks.m11143BP();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bew(getActivity(), m1417V(2131165560L));
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn
    /* renamed from: oU */
    protected AbstractC3926yn.AbstractC3927a<RootMgrAppModel> mo1387oU() {
        agf agfVar = new agf(this.mContext, R.id.list_title);
        agfVar.m11974a(this.baI, this.baJ, this.baK);
        return agfVar;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn
    /* renamed from: oW */
    protected int mo1385oW() {
        return R.layout.list_view_title;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        AbstractC3926yn.AbstractC3927a<RootMgrAppModel> oV = m1386oV();
        if (oV != null) {
            if (oV.getCount() == 0) {
                this.mEmptyView.setVisibility(0);
                this.f4025Vq.setVisibility(8);
                return;
            }
            this.mEmptyView.setVisibility(8);
            this.f4025Vq.setVisibility(0);
        }
    }

    /* renamed from: Uz */
    private void m8239Uz() {
        if (this.baB != null) {
            this.baB.setVisibility(0);
            return;
        }
        ViewGroup container = getContainer();
        if (container != null) {
            this.baB = getLayoutInflater().inflate(R.layout.root_mgr_page_prompt_bar, container, false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.baB.getLayoutParams();
            layoutParams.addRule(12);
            container.addView(this.baB, layoutParams);
            ((Button) this.baB.findViewById(R.id.item_button)).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axo.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aks.m11143BP().m10850bc(true);
                    axo.this.m8243UA();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UA */
    public void m8243UA() {
        if (this.baB != null) {
            this.baB.setVisibility(8);
        }
    }

    /* renamed from: aF */
    private void m8234aF(String str, String str2) {
        ViewGroup container = getContainer();
        if (container != null) {
            if (this.baC == null) {
                this.baC = getLayoutInflater().inflate(R.layout.root_mgr_page_prompt_bar, container, false);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.baC.getLayoutParams();
                layoutParams.addRule(12);
                container.addView(this.baC, layoutParams);
            }
            TextView textView = (TextView) this.baC.findViewById(R.id.item_text);
            textView.setText(str2);
            textView.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
            Button button = (Button) this.baC.findViewById(R.id.item_button);
            button.setText(str);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axo.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100555);
                    try {
                        Intent intent = new Intent();
                        Activity m12026vt = aft.m12026vt();
                        intent.setClass(m12026vt, RootProcessActivity.class);
                        intent.putExtra("root_process_state", 4);
                        intent.putExtra("fix_with_result", true);
                        m12026vt.startActivityForResult(intent, 1001);
                    } catch (Exception e) {
                    }
                }
            });
            if (this.baD != null) {
                this.baD.setVisibility(8);
            }
        }
    }

    /* renamed from: jZ */
    private void m8221jZ(String str) {
        ViewGroup container = getContainer();
        if (container != null) {
            if (this.baD == null) {
                this.baD = getLayoutInflater().inflate(R.layout.prompt_text, container, false);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.baD.getLayoutParams();
                layoutParams.addRule(12);
                container.addView(this.baD, layoutParams);
            }
            ((TextView) this.baD.findViewById(R.id.textView)).setText(str);
            if (this.baC != null) {
                this.baC.setVisibility(8);
            }
        }
    }

    /* renamed from: UB */
    private void m8242UB() {
        if (this.baC != null) {
            this.baC.setVisibility(8);
        }
        if (this.baD != null) {
            this.baD.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1001) {
            this.baE = intent.getBooleanExtra("root_result", false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPostResume() {
        super.onPostResume();
        int m7770WL = bbv.m7771WK().m7770WL();
        if (!aks.m11143BP().m11142BQ()) {
            m8239Uz();
        } else if (m7770WL == 3) {
            ady.m12308tK().mo1746bi(100553);
            C3953zi m1311pr = C3953zi.m1311pr();
            m8234aF(m1311pr.getString(this.baE ? R.string.root_mgr_fix_root : R.string.root_mgr_retry_root), m1311pr.getString(this.baE ? R.string.root_mgr_fix_root_desc : R.string.root_mgr_retry_root_desc));
        } else if (m7770WL == 4) {
            ady.m12308tK().mo1746bi(100554);
            m8221jZ(C3953zi.m1311pr().getString(R.string.root_unable_grant_root_permission));
        } else {
            m8242UB();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.f4025Vq.setVisibility(8);
        this.f4025Vq.setDivider(C3953zi.m1311pr().getDrawable(R.drawable.list_view_divider_padding_shape));
        this.mEmptyView = getLayoutInflater().inflate(R.layout.view_empty_tip, this.f4016Vh.getContainer(), false);
        TextView textView = (TextView) this.mEmptyView.findViewById(R.id.empty_tip);
        if (textView != null) {
            textView.setText(R.string.root_authorization_empty_tip);
            Drawable Y = m1414Y(2130837872L);
            Y.setBounds(0, 0, (int) m1416W(2131361939L), (int) m1416W(2131361938L));
            textView.setCompoundDrawables(null, Y, null, null);
        }
        this.mEmptyView.setVisibility(8);
        this.f4016Vh.addContentView(this.mEmptyView, null);
        setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.axo.11
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (axo.this.bay.m11142BQ() && !axo.this.m8241UC() && axo.this.f4026Vr != null && (axo.this.f4026Vr instanceof agf)) {
                    if (i == ((agf) axo.this.f4026Vr).m11970vK()) {
                        axo.this.m8225hA(i);
                        return;
                    }
                    AbstractC3926yn.C3929b item = axo.this.f4026Vr.getItem(i);
                    if (item != null && item.data != 0) {
                        RootMgrAppModel rootMgrAppModel = (RootMgrAppModel) item.data;
                        if (rootMgrAppModel.f3142ot != 1 || rootMgrAppModel.aQS != 1) {
                            axo.this.m8225hA(i);
                        } else {
                            axo.this.m8238a(i, rootMgrAppModel);
                        }
                    }
                }
            }
        });
        getHandler().sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UC */
    public boolean m8241UC() {
        int m7770WL = bbv.m7771WK().m7770WL();
        if (m7770WL == 3) {
            C3954zj.m1307c(C3953zi.m1311pr().getString(R.string.prompt_fix_root), 0);
            return true;
        } else if (m7770WL == 4) {
            C3954zj.m1307c(C3953zi.m1311pr().getString(R.string.without_root_permission), 0);
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: hA */
    public void m8225hA(int i) {
        if (this.f4026Vr != null && (this.f4026Vr instanceof agf)) {
            agf agfVar = (agf) this.f4026Vr;
            boolean z = i != agfVar.m11970vK();
            if (z) {
                agfVar.m11973cZ(i);
            } else {
                agfVar.m11973cZ(-1);
            }
            this.f4026Vr.notifyDataSetChanged();
            if (z && this.f4025Vq.getLastVisiblePosition() == i) {
                this.f4025Vq.smoothScrollToPosition(i, i);
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        boolean z = false;
        super.mo1413a(message);
        switch (message.what) {
            case 1:
                beg.m7461Zj().m7450c(this.baH);
                return;
            case 2:
                if (this.acy != null && this.ahC != null && this.acx != null && this.baA != null) {
                    this.acy.setText(R.string.completed);
                    this.ahC.setVisibility(4);
                    this.acx.clearAnimation();
                    if (message.obj != null && (message.obj instanceof Boolean)) {
                        z = ((Boolean) message.obj).booleanValue();
                    }
                    if (z) {
                        this.acx.setImageResource(R.drawable.succeful_uninstall_ok);
                        this.baA.setText("");
                    } else {
                        String str = null;
                        try {
                            str = String.format(m1417V(2131166086L), 0, 1);
                        } catch (Throwable th) {
                        }
                        if (str == null) {
                            str = "";
                        }
                        this.baA.setText(str);
                        this.acx.setImageResource(R.drawable.backgroup_uninstall_failture);
                    }
                    C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axo.12
                        @Override // java.lang.Runnable
                        public void run() {
                            axo.this.m8219vh();
                        }
                    }, 1000L);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hB */
    public void m8224hB(int i) {
        int i2 = 7;
        if (this.bay.m11142BQ()) {
            int m11970vK = ((agf) this.f4026Vr).m11970vK();
            if (m1386oV() != null) {
                List<AbstractC3926yn.C3929b<RootMgrAppModel>> m1377oX = m1386oV().m1377oX();
                if (m11970vK >= 0 && m11970vK < m1377oX.size()) {
                    RootMgrAppModel rootMgrAppModel = m1377oX.get(m11970vK).data;
                    if (1 == i) {
                        rootMgrAppModel.aQS = 0;
                    } else if (i == 0) {
                        rootMgrAppModel.aQS = 1;
                    } else if (2 == i) {
                        rootMgrAppModel.aQS = 2;
                    }
                    if (i != 1) {
                        bby.m7747ks(rootMgrAppModel.aQQ.getPackageName());
                    }
                    bbt.m7780WG().updateRule(rootMgrAppModel.aQQ.getPackageName(), i, 0L);
                    ady.m12308tK().mo1746bi(100035);
                    if (1 == i) {
                        i2 = 5;
                    } else if (i == 0) {
                        i2 = 6;
                    } else if (2 == i) {
                    }
                    ady.m12330a(rootMgrAppModel.aQQ.getPackageName(), i2, -1, (List<String>) null);
                }
                ((agf) this.f4026Vr).m11973cZ(-1);
                this.f4026Vr.notifyDataSetChanged();
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn
    protected Drawable getDivider() {
        return m1414Y(2130837953L);
    }
}
