package com.kingroot.kinguser;

import android.text.TextUtils;
import android.view.View;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.akl;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.bff;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bff extends bfa {
    private static final String TAG = aiq.arY + "_ToolBoxMarketAppViewHolder";
    private TextRoundCornerProgressBar bmo;
    private AppDownLoadModel bmp;
    private IAppInstallListener.Stub akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$3
        @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
        public void onState(String str, int i, String str2) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$3.1
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    AppDownLoadModel appDownLoadModel = bff.this.bmp;
                    textRoundCornerProgressBar = bff.this.bmo;
                    and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                }
            });
            if ((i == 10 || i == 11) && TextUtils.equals(akl.m11257AS().m11226Bq(), str)) {
                akl.m11257AS().m11225Br();
            }
        }
    };
    private AppDownloadClient.AppDownloadListenerAdapter awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4
        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.1
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    if (downloaderTaskInfo != null) {
                        downloaderTaskInfo.setPercentage(i);
                        AppDownLoadModel appDownLoadModel = bff.this.bmp;
                        textRoundCornerProgressBar = bff.this.bmo;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.2
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    if (downloaderTaskInfo != null) {
                        downloaderTaskInfo.setPercentage(0);
                        AppDownLoadModel appDownLoadModel = bff.this.bmp;
                        textRoundCornerProgressBar = bff.this.bmo;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        akl.m11257AS().m11180gR(downloaderTaskInfo.m4049KM());
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.3
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    if (downloaderTaskInfo != null) {
                        AppDownLoadModel appDownLoadModel = bff.this.bmp;
                        textRoundCornerProgressBar = bff.this.bmo;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.4
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    C3953zi m1311pr = C3953zi.m1311pr();
                    AppDownLoadModel appDownLoadModel = bff.this.bmp;
                    textRoundCornerProgressBar = bff.this.bmo;
                    and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                    C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                    if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                    }
                }
            });
            if (downloaderTaskInfo != null && TextUtils.equals(akl.m11257AS().m11226Bq(), downloaderTaskInfo.m4049KM())) {
                akl.m11257AS().m11225Br();
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.5
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    if (downloaderTaskInfo != null) {
                        AppDownLoadModel appDownLoadModel = bff.this.bmp;
                        textRoundCornerProgressBar = bff.this.bmo;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.6
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    if (downloaderTaskInfo != null) {
                        AppDownLoadModel appDownLoadModel = bff.this.bmp;
                        textRoundCornerProgressBar = bff.this.bmo;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxMarketAppViewHolder$4.7
                @Override // java.lang.Runnable
                public void run() {
                    TextRoundCornerProgressBar textRoundCornerProgressBar;
                    if (downloaderTaskInfo != null) {
                        AppDownLoadModel appDownLoadModel = bff.this.bmp;
                        textRoundCornerProgressBar = bff.this.bmo;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                    }
                }
            });
        }
    };
    private and.C1258a akD = new and.C1258a() { // from class: com.kingroot.kinguser.bff.3
        @Override // com.kingroot.kinguser.and.C1258a
        /* renamed from: c */
        public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
        }
    };

    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZD */
    protected int mo7287ZD() {
        return R.layout.tool_box_list_item_priority;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: ZE */
    public void mo7286ZE() {
        super.mo7286ZE();
        this.mView.findViewById(R.id.circle_progress_bar).setVisibility(8);
        this.mView.findViewById(R.id.expand_icon).setVisibility(8);
        this.bmo = (TextRoundCornerProgressBar) this.mView.findViewById(R.id.button_progress_bar);
        this.bmo.setVisibility(0);
        this.blR.setVisibility(8);
        this.blQ.setVisibility(8);
        if (this.bmp != null) {
            this.bmp.m4179a(this.bmo);
        }
        this.bmo.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bff.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bff.this.blN.bmL instanceof AppBaseModel) {
                    and.m10326a(bff.this.mContext, bff.this.bmp, bff.this.awu, bff.this.akB, bff.this.akD);
                }
            }
        });
        this.mView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bff.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppDetailActivity.m12647a(bff.this.mContext, bff.this.bmp);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: a */
    public void mo7293a(ToolBoxView.C3655a c3655a) {
        super.mo7293a(c3655a);
        if (this.blN.bmL instanceof AppBaseModel) {
            this.bmp = new AppDownLoadModel((AppBaseModel) this.blN.bmL);
            if (this.bmo != null) {
                this.bmp.m4179a(this.bmo);
            }
            and.m10320a(this.bmp, this.bmo, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
            if (this.bmp != null) {
                amz.m10365II().m9879a(this.bmp.pkgName, this.awu);
                alm.m10566GQ().mo9329a(this.bmp.pkgName, this.akB);
                return;
            }
            return;
        }
        throw new RuntimeException("mModel must be an instance of ToolBoxEntry<AppBaseModel>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: s */
    public void mo7284s(Object obj) {
        super.mo7284s(obj);
        mo7285r(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onResume() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onDestroy() {
        super.onDestroy();
        amz.m10365II().m9881a(this.awu);
        alm.m10566GQ().mo9330a(this.akB);
    }
}
