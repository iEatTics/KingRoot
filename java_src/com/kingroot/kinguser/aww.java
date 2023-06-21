package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.activitys.AdvancePermAppDetailActivity;
import com.kingroot.kinguser.advance.model.AdvancePermModel;
import com.kingroot.kinguser.aga;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public class aww extends AbstractC3922ym {
    private C3953zi aDg;
    private bed aRB;
    private List<aga.C0839a> aVA;
    private aga aVJ;
    private List<aga.C0839a> aVK;
    private List<aga.C0839a> aVL;
    public List<String> aVM;
    private aga.InterfaceC0840b aVN;
    private Comparator aVO;
    private RecyclerView aVz;

    public aww(Context context) {
        super(context);
        this.aDg = C3953zi.m1311pr();
        this.aVA = new ArrayList();
        this.aVK = new ArrayList();
        this.aVL = new ArrayList();
        this.aVM = new ArrayList();
        this.aVN = new aga.InterfaceC0840b() { // from class: com.kingroot.kinguser.aww.1
            @Override // com.kingroot.kinguser.aga.InterfaceC0840b
            /* renamed from: fn */
            public void mo8571fn(String str) {
                ady.m12308tK().mo1746bi(100480);
                Intent intent = new Intent();
                intent.putExtra("pkgName", str);
                intent.setClass(aww.this.getActivity(), AdvancePermAppDetailActivity.class);
                aww.this.getActivity().startActivity(intent);
            }
        };
        this.aVO = new Comparator<aga.C0841c>() { // from class: com.kingroot.kinguser.aww.2
            private Collator ahV = Collator.getInstance(Locale.CHINA);

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(aga.C0841c c0841c, aga.C0841c c0841c2) {
                return this.ahV.compare(c0841c.name, c0841c2.name);
            }
        };
        this.aRB = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aww.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                aww.this.aVK.clear();
                aww.this.aVL.clear();
                aww.this.aVA.clear();
                Map<String, List<AdvancePermModel>> m11805wJ = ahe.m11803wL().m11805wJ();
                boolean z = aks.m11143BP().m10986Eq() != 0;
                arv m9499Nz = arv.m9499Nz();
                ArrayList arrayList = new ArrayList();
                if (z) {
                    arrayList.addAll(m9499Nz.getAllRiskApps());
                }
                HashMap hashMap = new HashMap();
                for (RiskControlInfo riskControlInfo : awc.m8697SB().m8688hn(-1)) {
                    hashMap.put(riskControlInfo.packageName, riskControlInfo);
                }
                if (!C3942yy.m1349e(m11805wJ)) {
                    for (String str : m11805wJ.keySet()) {
                        aww.this.m8577a(str, m11805wJ.get(str), z, arrayList, hashMap);
                    }
                    if (!C3942yy.m1352c(aww.this.aVK)) {
                        Collections.sort(aww.this.aVK, aww.this.aVO);
                        ((aga.C0841c) aww.this.aVK.get(0)).ajE = true;
                        aww.this.aVA.add(aga.C0844e.m12001fo(String.format(aww.this.aDg.getString(R.string.advance_perm_app_list_user_title), Integer.valueOf(aww.this.aVK.size()))));
                        aww.this.aVA.addAll(aww.this.aVK);
                    }
                    if (!C3942yy.m1352c(aww.this.aVL)) {
                        Collections.sort(aww.this.aVL, aww.this.aVO);
                        ((aga.C0841c) aww.this.aVL.get(0)).ajE = true;
                        aww.this.aVA.add(aga.C0844e.m12001fo(String.format(aww.this.aDg.getString(R.string.advance_perm_app_list_sys_title), Integer.valueOf(aww.this.aVL.size()))));
                        aww.this.aVA.addAll(aww.this.aVL);
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aww.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aww.this.m8580TA();
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100479);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), C3953zi.m1311pr().getString(R.string.advance_perm_app_list_title));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        beg.m7461Zj().m7450c(this.aRB);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.page_advance_perm_app_list, (ViewGroup) null);
        this.aVz = (RecyclerView) inflate.findViewById(R.id.app_list);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TA */
    public void m8580TA() {
        if (!C3942yy.m1352c(this.aVA)) {
            if (this.aVJ == null) {
                this.aVJ = new aga(this.aVA, this.aVN);
                this.aVz.setAdapter(this.aVJ);
                this.aVz.setLayoutManager(new FixLinearLayoutManager(this.mContext));
                this.aVz.setItemAnimator(new DefaultItemAnimator());
            }
            this.aVJ.notifyDataSetChanged();
            this.aVz.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public aga.C0839a m8577a(String str, List<AdvancePermModel> list, boolean z, @NonNull List<String> list2, @NonNull Map<String, RiskControlInfo> map) {
        boolean z2;
        Drawable loadIcon;
        String charSequence;
        String format;
        boolean z3;
        if (TextUtils.isEmpty(str) || list == null) {
            return null;
        }
        PackageManager packageManager = KApplication.m13453ge().getPackageManager();
        boolean z4 = false;
        try {
            if ("com.android.shell".equals(str)) {
                charSequence = this.aDg.getString(R.string.silent_install_setting_app_page_usb_item);
                loadIcon = this.aDg.getDrawable(R.drawable.usb_icon);
                format = String.format(this.aDg.getString(R.string.advance_perm_app_list_desc), Integer.valueOf(list.size()));
                z3 = true;
            } else if ("com.android.kinguser.console".equals(str)) {
                charSequence = this.aDg.getString(R.string.root_authorization_console_name);
                loadIcon = this.aDg.getDrawable(R.drawable.icon);
                format = String.format(this.aDg.getString(R.string.advance_perm_app_list_desc), Integer.valueOf(list.size()));
                z3 = true;
            } else {
                PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                if (packageInfo != null && !C3942yy.m1352c(list)) {
                    if (!z || !list2.contains(str)) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    RiskControlInfo riskControlInfo = map.get(str);
                    if (riskControlInfo == null) {
                        z4 = z2;
                    } else if (!TextUtils.isEmpty(riskControlInfo.aUH)) {
                        String m13016dH = aab.m13016dH(aaz.m12872dZ(str));
                        z4 = (TextUtils.isEmpty(m13016dH) || !m13016dH.equalsIgnoreCase(riskControlInfo.aUH)) ? z2 : true;
                    } else {
                        z4 = true;
                    }
                    loadIcon = packageInfo.applicationInfo.loadIcon(packageManager);
                    charSequence = packageInfo.applicationInfo.loadLabel(packageManager).toString();
                    format = String.format(this.aDg.getString(R.string.advance_perm_app_list_desc), Integer.valueOf(list.size()));
                    z3 = (packageInfo.applicationInfo.flags & 1) != 0;
                }
                return null;
            }
            aga.C0841c m12003a = aga.C0841c.m12003a(str, loadIcon, charSequence, format, z4, z3);
            m12003a.ajE = false;
            m12003a.ajF = false;
            if (z3) {
                this.aVL.add(m12003a);
                return m12003a;
            }
            this.aVK.add(m12003a);
            return m12003a;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
