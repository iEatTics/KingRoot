package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.aof;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aof extends anw {
    private AppDownLoadModel aAX;
    private TextView aFj;
    private TextView aFk;
    private TextView aFl;
    private ImageView ahP;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private TextRoundCornerProgressBar awD;
    private AppDownloadClient.AppDownloadListenerAdapter awu;

    public aof(View view, aoa aoaVar) {
        super(view, aoaVar);
        this.akD = new and.C1258a() { // from class: com.kingroot.kinguser.aof.1
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: a */
            public void mo9980a(View view2, AppDownLoadModel appDownLoadModel) {
                super.mo9980a(view2, appDownLoadModel);
                if (appDownLoadModel != null && appDownLoadModel.appStatus == 9) {
                    aks.m11143BP().m10803c(System.currentTimeMillis(), appDownLoadModel.pkgName);
                }
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$4
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i == 10 || i == 11) {
                            aks.m11143BP().m10781d(0L, str);
                        } else {
                            aks.m11143BP().m10781d(System.currentTimeMillis(), str);
                        }
                        and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_install_state_btn));
                    }
                });
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), aof.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(0L, downloaderTaskInfo.m4049KM());
                            and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(System.currentTimeMillis(), downloaderTaskInfo.m4049KM());
                        }
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(System.currentTimeMillis(), downloaderTaskInfo.m4049KM());
                            and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            aks.m11143BP().m10803c(0L, downloaderTaskInfo.m4049KM());
                            and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.RecommendAppView$5.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(aof.this.aAX, aof.this.aAX.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }
        };
        this.aFj = (TextView) view.findViewById(R.id.item_title);
        this.aFk = (TextView) view.findViewById(R.id.item_description1);
        this.aFl = (TextView) view.findViewById(R.id.item_description2);
        view.findViewById(R.id.item_description2).setVisibility(8);
        this.ahP = (ImageView) view.findViewById(R.id.item_icon);
        this.awD = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.aAX != null) {
            AppDetailActivity.m12647a(view.getContext(), this.aAX);
        }
    }

    public void resume() {
        if (this.aAX != null) {
            and.m10322a(this.aAX, this.aAX.m4188Ih(), this.awu, this.akB);
        }
    }

    /* renamed from: d */
    public void m9982d(final AppDownLoadModel appDownLoadModel) {
        this.aAX = appDownLoadModel;
        this.mView.setOnClickListener(this);
        this.aFj.setText(appDownLoadModel.appName);
        this.aFk.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appDownLoadModel.downloadCount)) + " " + anf.m10285bQ(appDownLoadModel.fileSize));
        this.aFl.setText(appDownLoadModel.describe);
        appDownLoadModel.m4179a(this.awD);
        if (!appDownLoadModel.iconUrl.equals(this.ahP.getTag())) {
            this.ahP.setImageResource(R.drawable.default_app);
            apv.m9735LO().m9730a(appDownLoadModel.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.aof.2
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aof.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aof.this.ahP.setImageBitmap(bitmap);
                            aof.this.ahP.setTag(str);
                        }
                    });
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: eE */
                public void mo4136eE(String str) {
                }
            });
        }
        this.awD.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aof.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                aks.m11143BP().m10892al(String.valueOf(5012002), appDownLoadModel.pkgName);
                and.m10326a(view.getContext(), appDownLoadModel, aof.this.awu, aof.this.akB, aof.this.akD);
            }
        });
        and.m10322a(appDownLoadModel, appDownLoadModel.m4188Ih(), this.awu, this.akB);
    }

    /* renamed from: ah */
    public void m9986ah(List<String> list) {
        if (this.aAX != null) {
            anf.m10292a(list, new ArrayList<String>() { // from class: com.kingroot.kinguser.aof.4
                {
                    add(aof.this.aAX.pkgName);
                }
            }, this.awu, this.akB);
        }
    }

    public void recycle() {
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
    }
}
