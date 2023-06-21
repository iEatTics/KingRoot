package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.applisto.appcloner.classes.BuildConfig;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.advance.model.AdvancePermModel;
import com.kingroot.kinguser.agb;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public class awv extends AbstractC3922ym {
    private C3953zi aDg;
    private bed aRB;
    private List<agb.C0856e> aVA;
    private ImageView aVB;
    private TextView aVC;
    private TextView aVD;
    private TextView aVE;
    private TextView aVF;
    agb.InterfaceC0858g aVG;
    agb.InterfaceC0857f aVH;
    private agb aVy;
    private RecyclerView aVz;
    private String adZ;

    public awv(Context context) {
        super(context);
        this.aDg = C3953zi.m1311pr();
        this.aVA = new ArrayList();
        this.aRB = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.awv.1
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (!C3942yy.m1352c(mo7445nF)) {
                    awv.this.aVA.clear();
                    awv.this.m8585bH(ahe.m11803wL().m11808fN((String) mo7445nF.get(0)));
                    awv.this.m8589Tz();
                }
            }
        });
        this.aVG = new agb.InterfaceC0858g() { // from class: com.kingroot.kinguser.awv.4
            @Override // com.kingroot.kinguser.agb.InterfaceC0858g
            /* renamed from: J */
            public void mo8582J(int i, int i2) {
                int i3;
                int i4 = 1;
                agb.C0855d c0855d = (agb.C0855d) awv.this.aVA.get(i);
                AdvancePermModel advancePermModel = c0855d.akg;
                switch (advancePermModel.type) {
                    case 1:
                        switch (i2) {
                            case 1:
                                c0855d.akc = Html.fromHtml(C3953zi.m1311pr().getString(R.string.root_auth_allow));
                                i3 = 1;
                                break;
                            case 2:
                                c0855d.akc = Html.fromHtml(C3953zi.m1311pr().getString(R.string.root_auth_deny));
                                i3 = 0;
                                break;
                            case 3:
                                c0855d.akc = Html.fromHtml(C3953zi.m1311pr().getString(R.string.root_auth_ask));
                                i3 = 2;
                                break;
                            default:
                                i3 = -1;
                                break;
                        }
                        if (i3 != advancePermModel.apt) {
                            bbt.m7780WG().updateRule(advancePermModel.packageName, i3, 0L);
                            ady.m12308tK().mo1746bi(100481);
                            return;
                        }
                        return;
                    case 2:
                        switch (i2) {
                            case 1:
                                c0855d.akc = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_allow));
                                break;
                            case 2:
                                c0855d.akc = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_deny));
                                i4 = 0;
                                break;
                            case 3:
                                c0855d.akc = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_ask));
                                i4 = 2;
                                break;
                            default:
                                i4 = -1;
                                break;
                        }
                        if (i4 != advancePermModel.apu) {
                            agy.m11867wk().m11868p(advancePermModel.packageName, i4);
                            ady.m12308tK().mo1746bi(100483);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.aVH = new agb.InterfaceC0857f() { // from class: com.kingroot.kinguser.awv.5
            @Override // com.kingroot.kinguser.agb.InterfaceC0857f
            /* renamed from: n */
            public void mo8581n(int i, boolean z) {
                if (i >= 0 && i < awv.this.aVA.size()) {
                    ahe.m11803wL().m11802x(((agb.C0856e) awv.this.aVA.get(i)).akg.packageName, z);
                    ady.m12308tK().mo1746bi(100482);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), C3953zi.m1311pr().getString(R.string.advance_perm_app_detail_title));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        Intent intent = getIntent();
        if (intent != null) {
            this.adZ = intent.getStringExtra("pkgName");
            m8584jU(this.adZ);
            beg.m7461Zj().m7454a(this.aRB, this.adZ);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.page_advance_perm_app_detail, (ViewGroup) null);
        this.aVz = (RecyclerView) inflate.findViewById(R.id.perm_list);
        this.aVB = (ImageView) inflate.findViewById(R.id.app_icon);
        this.aVD = (TextView) inflate.findViewById(R.id.app_name);
        this.aVF = (TextView) inflate.findViewById(R.id.app_version);
        this.aVC = (TextView) inflate.findViewById(R.id.install_time);
        this.aVE = (TextView) inflate.findViewById(R.id.app_size);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Tz */
    public void m8589Tz() {
        if (!C3942yy.m1352c(this.aVA)) {
            if (this.aVy == null) {
                this.aVy = new agb(this.aVA, this.aVG, this.aVH);
                this.aVz.setAdapter(this.aVy);
                this.aVz.setItemAnimator(new DefaultItemAnimator());
                this.aVz.setLayoutManager(new FixLinearLayoutManager(this.mContext));
            }
            this.aVy.notifyDataSetChanged();
            this.aVz.setVisibility(0);
        }
    }

    /* renamed from: jU */
    private void m8584jU(String str) {
        ApplicationInfo applicationInfo;
        Drawable loadIcon;
        String charSequence;
        String format;
        String str2;
        String str3 = null;
        if (!TextUtils.isEmpty(str)) {
            PackageManager packageManager = KApplication.m13453ge().getPackageManager();
            try {
                if ("com.android.shell".equals(str)) {
                    charSequence = this.aDg.getString(R.string.silent_install_setting_app_page_usb_item);
                    loadIcon = this.aDg.getDrawable(R.drawable.usb_icon);
                    format = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_version), BuildConfig.VERSION_NAME);
                    str2 = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_installtime), acu.m12570g("yyyy-MM-dd", System.currentTimeMillis()));
                } else if ("com.android.kinguser.console".equals(str)) {
                    charSequence = this.aDg.getString(R.string.root_authorization_console_name);
                    loadIcon = this.aDg.getDrawable(R.drawable.icon);
                    format = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_version), BuildConfig.VERSION_NAME);
                    str2 = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_installtime), acu.m12570g("yyyy-MM-dd", System.currentTimeMillis()));
                } else {
                    PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                    if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null) {
                        loadIcon = applicationInfo.loadIcon(packageManager);
                        charSequence = applicationInfo.loadLabel(packageManager).toString();
                        format = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_version), packageInfo.versionName);
                        File file = new File(packageInfo.applicationInfo.sourceDir);
                        if (file == null || !file.exists()) {
                            str2 = null;
                        } else {
                            str2 = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_installtime), acu.m12570g("yyyy-MM-dd", file.lastModified()));
                            str3 = String.format(this.aDg.getString(R.string.advance_perm_detail_page_title_appsize), Formatter.formatFileSize(getContext(), file.length()));
                        }
                    } else {
                        return;
                    }
                }
                this.aVB.setImageDrawable(loadIcon);
                this.aVD.setText(charSequence);
                this.aVF.setText(format);
                if (!TextUtils.isEmpty(str2)) {
                    this.aVC.setText(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    this.aVE.setText(str3);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    private void finish() {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.awv.2
            @Override // java.lang.Runnable
            public void run() {
                awv.this.getActivity().finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bH */
    public void m8585bH(List<AdvancePermModel> list) {
        Spanned spanned;
        Spanned spanned2;
        if (list == null || C3942yy.m1352c(list)) {
            finish();
            return;
        }
        Collections.sort(list, new Comparator<AdvancePermModel>() { // from class: com.kingroot.kinguser.awv.3
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(AdvancePermModel advancePermModel, AdvancePermModel advancePermModel2) {
                return advancePermModel.type < advancePermModel2.type ? -1 : 1;
            }
        });
        agb.C0856e c0856e = null;
        for (AdvancePermModel advancePermModel : list) {
            switch (advancePermModel.type) {
                case 1:
                    Spanned fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.root_auth_allow));
                    Spanned fromHtml2 = Html.fromHtml(C3953zi.m1311pr().getString(R.string.root_auth_deny));
                    Spanned fromHtml3 = Html.fromHtml(C3953zi.m1311pr().getString(R.string.root_auth_ask));
                    switch (advancePermModel.apt) {
                        case 0:
                            spanned2 = fromHtml2;
                            break;
                        case 1:
                            spanned2 = fromHtml;
                            break;
                        case 2:
                            spanned2 = fromHtml3;
                            break;
                        default:
                            spanned2 = null;
                            break;
                    }
                    c0856e = agb.C0855d.m11992a(this.aDg.getDrawable(R.drawable.advance_perm_main_rootauth_item), this.aDg.getString(R.string.advance_perm_detail_page_list_item_rootauth), spanned2, false, agb.C0859h.m11991a(fromHtml, fromHtml2, fromHtml3), advancePermModel);
                    break;
                case 2:
                    Spanned fromHtml4 = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_allow));
                    Spanned fromHtml5 = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_deny));
                    Spanned fromHtml6 = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_ask));
                    switch (advancePermModel.apu) {
                        case 0:
                            spanned = fromHtml5;
                            break;
                        case 1:
                            spanned = fromHtml4;
                            break;
                        case 2:
                            spanned = fromHtml6;
                            break;
                        default:
                            spanned = null;
                            break;
                    }
                    c0856e = agb.C0855d.m11992a(this.aDg.getDrawable(R.drawable.advance_perm_main_silentinstall_item), this.aDg.getString(R.string.advance_perm_detail_page_list_item_silentinstall), spanned, false, agb.C0859h.m11991a(fromHtml4, fromHtml5, fromHtml6), advancePermModel);
                    break;
                case 3:
                    c0856e = agb.C0849b.m11996a(this.aDg.getDrawable(R.drawable.advance_perm_main_autoboot_item), this.aDg.getString(R.string.advance_perm_main_page_title_autoboot), advancePermModel.apv == 0 || advancePermModel.apv == 3, advancePermModel);
                    break;
            }
            if (c0856e != null) {
                this.aVA.add(c0856e);
            }
        }
    }
}
