package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.asr;
import com.kingroot.kinguser.atj;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class atj extends acy implements View.OnClickListener {
    private AppDownLoadModel aAX;
    private IOnWifiAutoDownloadListener.Stub aDx;
    private String aGj;
    private volatile int aNV;
    private View aNW;
    private View aNX;
    private int aNY;
    final bed aNZ;
    private bed aOa;
    private List<asr> ahM;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private Context mContext;

    /* renamed from: ah */
    public void m9257ah(List<String> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.aAX.pkgName);
        anf.m10292a(list, arrayList, this.awu, this.akB);
    }

    public atj(Context context) {
        super(context);
        this.aNV = 0;
        this.ahM = new ArrayList();
        this.aGj = "";
        this.aDx = new IOnWifiAutoDownloadListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener
            public void onTriggerWifiAutoDownload(List<String> list) {
                atj.this.m9257ah(list);
            }
        };
        this.aNZ = new bed(bem.HIGH, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.atj.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                List<PackageInfo> installedPackages;
                ArrayList arrayList = new ArrayList();
                List<String> m9349OH = asw.m9349OH();
                atj.this.aNV = m9349OH.size();
                C3952zh m1312pq = C3952zh.m1312pq();
                if (m1312pq != null && (installedPackages = m1312pq.getInstalledPackages(64)) != null && installedPackages.size() >= 1) {
                    for (PackageInfo packageInfo : installedPackages) {
                        if (!((packageInfo.applicationInfo.flags & 1) != 0) && !m9349OH.contains(packageInfo.packageName) && atu.m9136v(atj.this.mContext, packageInfo.packageName) && !akf.m11302gI(packageInfo.packageName)) {
                            arrayList.add(new asr(packageInfo.applicationInfo.loadLabel(m1312pq).toString(), packageInfo));
                        }
                    }
                    Collections.sort(arrayList, new C1531a());
                    Message obtainMessage = atj.this.getHandler().obtainMessage(0);
                    obtainMessage.obj = arrayList;
                    obtainMessage.sendToTarget();
                }
            }
        });
        this.aOa = new bed(bem.HIGH, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.atj.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                atj.this.m9255bf(asx.m9338OK().m9337iU(atj.this.aGj));
            }
        });
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$7
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i == 3) {
                            aks.m11143BP().m10781d(System.currentTimeMillis(), str);
                        } else if (i >= 12 && i <= 16) {
                            aks.m11143BP().m10781d(0L, str);
                        } else if (i == 10 || i == 11) {
                            aks.m11143BP().m10781d(0L, str);
                        }
                        and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_install_state_btn));
                    }
                });
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), atj.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(0L, downloaderTaskInfo.m4049KM());
                            and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(System.currentTimeMillis(), downloaderTaskInfo.m4049KM());
                        }
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(System.currentTimeMillis(), downloaderTaskInfo.m4049KM());
                            and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(0L, downloaderTaskInfo.m4049KM());
                            and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxAddPage$8.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(atj.this.aAX, atj.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }
        };
        this.akD = new and.C1258a() { // from class: com.kingroot.kinguser.atj.6
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: b */
            public void mo9251b(View view, AppDownLoadModel appDownLoadModel) {
                super.mo9980a(view, appDownLoadModel);
                if (appDownLoadModel != null && appDownLoadModel.appStatus == 9) {
                    aks.m11143BP().m10803c(System.currentTimeMillis(), appDownLoadModel.pkgName);
                }
            }
        };
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (aii.m11642xL().m11641xM()) {
            this.aNY = 5;
            this.aGj = "5010004";
        } else {
            this.aNY = 20;
            this.aGj = "5010001";
        }
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atj.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                for (DownloaderTaskInfo downloaderTaskInfo : atg.m9289OX().mo4097Ky()) {
                    if (downloaderTaskInfo.m4052KJ() != boq.COMPLETE || downloaderTaskInfo.m4052KJ() != boq.FAILED) {
                        atg.m9289OX().m9882a(downloaderTaskInfo, atj.this.awu);
                    }
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new atk(getActivity(), m1417V(2131165507L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3936ys, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        return super.mo1371oG();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3936ys, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.aNW = getLayoutInflater().inflate(R.layout.list_view_empty_tip, m1407oM().getContainer(), false);
        TextView textView = (TextView) this.aNW.findViewById(R.id.list_empty);
        textView.setText(m1417V(2131165508L));
        textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.aNW.getLayoutParams();
        layoutParams.addRule(13);
        this.aNW.setVisibility(8);
        m1407oM().addContentView(this.aNW, layoutParams);
        this.f4011Vd.setDivider(C3953zi.m1311pr().getDrawable(R.drawable.list_view_divider_padding_shape));
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return new asr.C1494a(getContext(), this.aGj, this, this.awu, this.akB, this.akD);
    }

    @Override // com.kingroot.kinguser.AbstractC3936ys, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        if (C3942yy.m1352c(this.ahM)) {
            this.aNW.setVisibility(0);
            this.f4011Vd.setVisibility(8);
            return;
        }
        this.aNW.setVisibility(8);
        this.f4011Vd.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bf */
    public void m9255bf(List<AppBaseModel> list) {
        if (list != null && !list.isEmpty()) {
            this.aAX = new AppDownLoadModel(asw.m9345e(this.aGj, list));
            beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atj.4
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    and.m10322a(atj.this.aAX, atj.this.aAX.m4188Ih(), atj.this.awu, atj.this.akB);
                }
            }));
            ady.m12308tK().m12313eO(this.aAX.pkgName);
            Message obtainMessage = getHandler().obtainMessage();
            obtainMessage.what = 2;
            obtainMessage.sendToTarget();
        }
    }

    /* renamed from: com.kingroot.kinguser.atj$a */
    /* loaded from: classes.dex */
    static class C1531a implements Comparator<asr> {
        private Collator ahV = Collator.getInstance(Locale.CHINA);

        C1531a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(asr asrVar, asr asrVar2) {
            if (asrVar.aha == asrVar2.aha) {
                return this.ahV.compare(asrVar.mName, asrVar2.mName);
            }
            return asrVar.aha ? 1 : -1;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                ArrayList arrayList = (ArrayList) message.obj;
                this.ahM = arrayList;
                ((asr.C1494a) this.f4012Ve).setData(arrayList);
                m1418U(0L);
                if (aii.m11642xL().m11641xM()) {
                    beg.m7461Zj().m7450c(this.aOa);
                    return;
                }
                return;
            case 1:
                List<asr> m9385Op = ((asr.C1494a) this.f4012Ve).m9385Op();
                if (m9385Op != null && m9385Op.size() > 0 && this.aNX != null) {
                    m9385Op.add(0, new asr(C3953zi.m1311pr().getString(R.string.fb_promotion_title_on_add_page)));
                    m9385Op.add(1, new asr(this.aNX));
                    m9385Op.add(2, new asr(C3953zi.m1311pr().getString(R.string.fb_add_game_title_on_add_page)));
                    this.ahM = m9385Op;
                    this.f4012Ve.notifyDataSetChanged();
                    m1418U(0L);
                    return;
                } else if (m9385Op != null && m9385Op.size() == 0 && this.aNX != null) {
                    m9385Op.add(0, new asr(C3953zi.m1311pr().getString(R.string.fb_promotion_title_on_add_page)));
                    m9385Op.add(1, new asr(this.aNX));
                    this.ahM = m9385Op;
                    this.f4012Ve.notifyDataSetChanged();
                    m1418U(0L);
                    return;
                } else {
                    return;
                }
            case 2:
                if (this.aAX != null) {
                    List<asr> m9385Op2 = ((asr.C1494a) this.f4012Ve).m9385Op();
                    if (m9385Op2 != null && m9385Op2.size() > 0) {
                        m9385Op2.add(0, new asr(C3953zi.m1311pr().getString(R.string.fb_promotion_title_on_add_page)));
                        m9385Op2.add(1, new asr(this.aAX));
                        m9385Op2.add(2, new asr(C3953zi.m1311pr().getString(R.string.gamebox_add_list_title)));
                        this.ahM = m9385Op2;
                        this.f4012Ve.notifyDataSetChanged();
                        m1418U(0L);
                        return;
                    } else if (m9385Op2 != null && m9385Op2.size() == 0) {
                        m9385Op2.add(0, new asr(C3953zi.m1311pr().getString(R.string.fb_promotion_title_on_add_page)));
                        m9385Op2.add(1, new asr(this.aAX));
                        this.ahM = m9385Op2;
                        this.f4012Ve.notifyDataSetChanged();
                        m1418U(0L);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        amz.m10365II().m10357b(this.aDx);
        super.onResume();
        beg.m7461Zj().m7450c(this.aNZ);
        if (this.aAX != null) {
            and.m10320a(this.aAX, this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        amz.m10365II().m10360a(this.aDx);
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
        super.onStop();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        final asr asrVar = (asr) view.getTag();
        asrVar.aNt = true;
        asu.m9364iO(asrVar.aNr.packageName);
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atj.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                asw.m9343iR(asrVar.aNr.packageName);
            }
        }));
        Button button = (Button) view;
        if (button.isClickable()) {
            button.setText(m1417V(2131165506L));
            button.setTextColor(C3953zi.m1311pr().getColor(R.color.gamebox_add_page_list_added_blue));
            button.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.transparent));
            button.setClickable(false);
        }
        this.f4012Ve.notifyDataSetChanged();
        m1418U(0L);
    }
}
