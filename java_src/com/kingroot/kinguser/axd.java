package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppSearchActivity;
import com.kingroot.kinguser.agd;
import com.kingroot.kinguser.ala;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apd;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.axd;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class axd extends ans implements agd.InterfaceC0868b {
    private AppDownLoadModel aAX;
    private bif aWQ;
    private int aXE;
    private AppBaseModel aXF;
    @Nullable
    private agd.C0867a aXG;
    private agd.C0867a aXH;
    private agd aXI;
    private bid aXJ;
    private final List<agd.C0867a> ahM;
    private IAppInstallListener.Stub akB;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private String mTitle;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getContext(), this.mTitle);
    }

    public axd(Context context) {
        super(context);
        this.mTitle = null;
        this.aXE = -1;
        this.ahM = new ArrayList();
        this.aXG = null;
        this.aXH = null;
        this.aXI = null;
        this.aWQ = null;
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10315a(arrayList, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10315a(arrayList, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), axd.this.akB);
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.3
                    @Override // java.lang.Runnable
                    public void run() {
                        apd.m9832c(downloaderTaskInfo.m4049KM(), 1, "DefaultSetting");
                        and.m10315a(arrayList, downloaderTaskInfo);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10315a(arrayList, downloaderTaskInfo);
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(arrayList, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(arrayList, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(axd.this.aAX);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$8.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(arrayList, downloaderTaskInfo);
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.page.DefaultAppChosenPage$9
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(String str, int i, String str2) {
                agd.C0867a c0867a;
                boolean z = true;
                if (i == 6) {
                    apd.m9835ap(str, "DefaultSetting");
                }
                switch (i) {
                    case 6:
                        apd.m9835ap(str, "DefaultSetting");
                        z = false;
                        break;
                    case 7:
                    case 8:
                    case 9:
                    case 12:
                    case 13:
                    case 14:
                    default:
                        z = false;
                        break;
                    case 10:
                        apd.m9831d(str, 1, "DefaultSetting");
                        break;
                    case 11:
                        apd.m9834aq(str, "DefaultSetting");
                        break;
                    case 15:
                        apd.m9830e(str, 1, "DefaultSetting");
                        z = false;
                        break;
                    case 16:
                        apd.m9833ar(str, "DefaultSetting");
                        z = false;
                        break;
                }
                if (z) {
                    axd axdVar = axd.this;
                    c0867a = axd.this.aXH;
                    axdVar.m8476f(c0867a);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        if (this.aAX != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.aAX.pkgName);
            anf.m10292a(list, arrayList, this.awu, this.akB);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m8486TO();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        m8488TM();
        this.aXI.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Activity activity = getActivity();
        if (activity != null) {
            Intent intent = activity.getIntent();
            if (intent == null) {
                activity.finish();
                return;
            }
            this.mTitle = intent.getStringExtra("def_setting_info");
            this.aXE = intent.getIntExtra("default_item_id", -1);
            this.aXF = (AppBaseModel) intent.getParcelableExtra("default_item_recommend_app_id");
            if (TextUtils.isEmpty(this.mTitle) || this.aXE == -1) {
                activity.finish();
            } else if (this.aXF != null) {
                this.aAX = new AppDownLoadModel(this.aXF);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aAX != null) {
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.axd.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    and.m10321a(axd.this.aAX, axd.this.aAX.m4188Ih(), axd.this.awu, axd.this.akB, C3953zi.m1311pr().getString(R.string.examination_manual_entry_btn_open));
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    @TargetApi(19)
    /* renamed from: TM */
    public void m8488TM() {
        boolean z;
        boolean z2;
        agd.C0867a m11982a;
        boolean z3;
        boolean z4;
        this.ahM.clear();
        Context ge = KUApplication.m13453ge();
        ArrayList arrayList = new ArrayList();
        boolean z5 = true;
        switch (this.aXE) {
            case 1:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                ala.C1052a m10661eZ = ala.m10661eZ(this.aXE);
                agd.C0867a c0867a = null;
                for (ala.C1052a c1052a : ala.m10660fa(this.aXE)) {
                    if (this.aAX != null && TextUtils.equals(c1052a.packageName, this.aAX.pkgName)) {
                        z2 = false;
                        z = true;
                    } else {
                        z = false;
                        z2 = z5;
                    }
                    if (c1052a.equals(m10661eZ)) {
                        m11982a = agd.C0867a.m11982a(c1052a, c1052a.getName(), c1052a.getIconDrawable(), true, null, z);
                        this.aXG = m11982a;
                    } else {
                        m11982a = agd.C0867a.m11982a(c1052a, c1052a.getName(), c1052a.getIconDrawable(), false, null, z);
                    }
                    arrayList.add(m11982a);
                    if (z) {
                        if (c0867a != null) {
                            if (c0867a.akI.resolveInfo != null && m11982a.akI.resolveInfo != null) {
                                if (c0867a.akI.resolveInfo.priority < m11982a.akI.resolveInfo.priority) {
                                    c0867a.akN = false;
                                    m11982a = c0867a;
                                } else {
                                    m11982a.akN = false;
                                    m11982a = c0867a;
                                }
                            } else {
                                m11982a.akN = false;
                            }
                        }
                        c0867a = m11982a;
                        z5 = z2;
                    }
                    m11982a = c0867a;
                    c0867a = m11982a;
                    z5 = z2;
                }
                break;
            case 2:
                String string = Settings.Secure.getString(ge.getContentResolver(), "default_input_method");
                for (InputMethodInfo inputMethodInfo : ((InputMethodManager) ge.getSystemService("input_method")).getInputMethodList()) {
                    if (this.aAX != null && TextUtils.equals(inputMethodInfo.getPackageName(), this.aAX.pkgName)) {
                        z4 = false;
                        z3 = true;
                    } else {
                        z3 = false;
                        z4 = z5;
                    }
                    if (string.equals(inputMethodInfo.getId())) {
                        this.aXG = agd.C0867a.m11982a(new ala.C1052a(inputMethodInfo.getPackageName(), null), inputMethodInfo.loadLabel(ge.getPackageManager()).toString(), inputMethodInfo.loadIcon(ge.getPackageManager()), true, null, z3);
                        this.aXG.status = 0;
                        arrayList.add(this.aXG);
                    } else {
                        agd.C0867a m11982a2 = agd.C0867a.m11982a(new ala.C1052a(inputMethodInfo.getPackageName(), null), inputMethodInfo.loadLabel(ge.getPackageManager()).toString(), inputMethodInfo.loadIcon(ge.getPackageManager()), false, null, z3);
                        m11982a2.status = 0;
                        arrayList.add(m11982a2);
                    }
                    z5 = z4;
                }
                break;
        }
        if (z5 && this.aAX != null) {
            apd.m9837an(this.aXF.pkgName, "DefaultSetting");
            this.aXH = agd.C0867a.m11982a(new ala.C1052a(this.aXF.pkgName, null), this.aXF.appName, null, false, this.aAX, true);
            this.aXH.status = 1;
            arrayList.add(this.aXH);
        }
        Iterator it = arrayList.iterator();
        agd.C0867a c0867a2 = null;
        while (it.hasNext()) {
            agd.C0867a c0867a3 = (agd.C0867a) it.next();
            if (c0867a3.akN) {
                it.remove();
            } else {
                c0867a3 = c0867a2;
            }
            c0867a2 = c0867a3;
        }
        if (c0867a2 != null) {
            this.ahM.add(agd.C0867a.m11980fq(C3953zi.m1311pr().getString(R.string.def_setting_app_choose_list_item_recommend_title)));
            this.ahM.add(c0867a2);
        }
        if (!C3942yy.m1351d(arrayList)) {
            this.ahM.add(agd.C0867a.m11980fq(C3953zi.m1311pr().getString(R.string.def_setting_app_choose_list_item_normal_title)));
            Collections.sort(arrayList, new Comparator<agd.C0867a>() { // from class: com.kingroot.kinguser.axd.2
                @Override // java.util.Comparator
                /* renamed from: a */
                public int compare(agd.C0867a c0867a4, agd.C0867a c0867a5) {
                    return Collator.getInstance(Locale.getDefault()).compare(c0867a4.name, c0867a5.name);
                }
            });
            this.ahM.addAll(arrayList);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.def_setting_detail_page, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.def_setting_app_chosen_list);
        recyclerView.setHasFixedSize(true);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setLayoutManager(new FixLinearLayoutManager(getActivity()));
        if (this.aXF != null) {
            this.aXI = new agd(this.ahM, this, this.awu, this.akB);
        } else {
            this.aXI = new agd(this.ahM, this, null, null);
        }
        recyclerView.setAdapter(this.aXI);
        inflate.findViewById(R.id.jump_layout).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axd.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100626);
                AppSearchActivity.m12639e(axd.this.getContext(), axd.this.mTitle, null);
            }
        });
        return inflate;
    }

    @Override // com.kingroot.kinguser.agd.InterfaceC0868b
    @UiThread
    /* renamed from: a */
    public void mo8467a(agd.C0867a c0867a) {
        if (!c0867a.akL) {
            if (this.aXG != null && this.aXG.akN) {
                m8478e(c0867a);
            } else {
                m8476f(c0867a);
            }
        }
    }

    /* renamed from: e */
    private void m8478e(final agd.C0867a c0867a) {
        if (this.aXJ == null) {
            this.aXJ = new bid(getContext());
            this.aXJ.show();
            this.aXJ.setTitleText(C3953zi.m1311pr().getString(R.string.def_setting_warning_dialog_title));
            this.aXJ.m6933d(C3953zi.m1311pr().getString(R.string.def_setting_warning_dialog_content));
        } else {
            this.aXJ.dismiss();
            this.aXJ.show();
        }
        this.aXJ.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axd.4
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100628);
                axd.this.m8476f(c0867a);
            }
        });
        this.aXJ.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axd.5
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100629);
            }
        });
        ady.m12308tK().mo1746bi(100627);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m8476f(final agd.C0867a c0867a) {
        m8487TN();
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axd.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                Runnable runnable;
                super.run();
                ady.m12308tK().mo1746bi(100625);
                ArrayList arrayList = new ArrayList();
                arrayList.add(1);
                arrayList.add("");
                arrayList.add(Integer.valueOf(axd.this.aXE));
                ady.m12308tK().mo1748a(100636, 0, (List<Object>) arrayList, true);
                if (ahg.m11774a(axd.this.aXE, c0867a.akI)) {
                    ady.m12308tK().mo1746bi(100630);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(2);
                    arrayList2.add(1);
                    arrayList2.add(Integer.valueOf(axd.this.aXE));
                    ady.m12308tK().mo1748a(100636, 0, (List<Object>) arrayList2, true);
                    runnable = new Runnable() { // from class: com.kingroot.kinguser.axd.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            axd.this.getActivity().setResult(-1);
                            axd.this.m8488TM();
                            axd.this.aXI.notifyDataSetChanged();
                            axd.this.m8486TO();
                            Toast.makeText(axd.this.getContext(), axd.this.m1417V(2131166319L), 0).show();
                        }
                    };
                } else {
                    ady.m12308tK().mo1746bi(100631);
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(2);
                    arrayList3.add(2);
                    arrayList3.add(Integer.valueOf(axd.this.aXE));
                    arrayList3.add(c0867a.akI.packageName);
                    arrayList3.add(cgx.m4297nl(ala.m10665b(c0867a.akI.resolveInfo)));
                    arrayList3.add(cgx.m4297nl(ala.m10658h(axd.this.ahM)));
                    ady.m12308tK().mo1748a(100636, 0, (List<Object>) arrayList3, true);
                    runnable = new Runnable() { // from class: com.kingroot.kinguser.axd.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            axd.this.getActivity().setResult(-1);
                            axd.this.m8486TO();
                            Toast.makeText(axd.this.getContext(), axd.this.m1417V(2131166318L), 0).show();
                        }
                    };
                }
                C3840wl.m1552c(runnable);
            }
        }));
    }

    @UiThread
    /* renamed from: TN */
    private void m8487TN() {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axd.7
            @Override // java.lang.Runnable
            public void run() {
                if (axd.this.aWQ != null) {
                    axd.this.aWQ.show();
                    return;
                }
                axd.this.aWQ = new bif(axd.this.getActivity());
                axd.this.aWQ.show();
                axd.this.aWQ.setTitleText(axd.this.m1417V(2131166306L));
                axd.this.aWQ.m6932iW(8);
                axd.this.aWQ.m6921iZ(8);
                axd.this.aWQ.setCanceledOnTouchOutside(false);
                axd.this.aWQ.setCancelable(false);
                axd.this.aWQ.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kingroot.kinguser.axd.7.1
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        return i == 84 || i == 4;
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: TO */
    public void m8486TO() {
        if (this.aWQ != null && this.aWQ.isShowing()) {
            this.aWQ.dismiss();
        }
    }
}
