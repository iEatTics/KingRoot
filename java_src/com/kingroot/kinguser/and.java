package com.kingroot.kinguser;

import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.WorkerThread;
import android.view.View;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppReserveModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public class and {
    /* renamed from: a */
    public static void m10326a(Context context, final AppDownLoadModel appDownLoadModel, final IAppDownloadListener.Stub stub, final IAppInstallListener.Stub stub2, final C1258a c1258a) {
        String string;
        String string2;
        String string3;
        String string4;
        if (context != null && appDownLoadModel != null && c1258a != null) {
            if (appDownLoadModel.m4187Ii()) {
                byte m1921O = C3748vb.m1921O(KApplication.m13453ge());
                if (m1921O == -1 || m1921O == 0) {
                    c1258a.mo9251b(appDownLoadModel.m4188Ih(), appDownLoadModel);
                }
                if (m1921O == -1 || m1921O == 2 || m1921O == 1) {
                    C3953zi m1311pr = C3953zi.m1311pr();
                    if (m1921O == -1) {
                        C3954zj.m1310b(m1311pr.getString(R.string.apps_market_download_no_network_content));
                        amz.m10365II().m10356c(AppDownloadRequest.m4059j(appDownLoadModel));
                        appDownLoadModel.appStatus = 9;
                        c1258a.mo9980a(appDownLoadModel.m4188Ih(), appDownLoadModel);
                        return;
                    } else if (appDownLoadModel.appStatus == 0 || appDownLoadModel.m4183Im()) {
                        bid bidVar = new bid(context);
                        if (!appDownLoadModel.isUpdate) {
                            string = m1311pr.getString(R.string.apps_market_download_title);
                            string2 = m1311pr.getString(R.string.apps_market_download_content);
                            string3 = m1311pr.getString(R.string.apps_market_download_later);
                            string4 = m1311pr.getString(R.string.apps_market_continue_download);
                        } else {
                            string = m1311pr.getString(R.string.apps_market_update_title);
                            string2 = m1311pr.getString(R.string.apps_market_update_content);
                            string3 = m1311pr.getString(R.string.apps_market_update_later);
                            string4 = m1311pr.getString(R.string.apps_market_continue_update);
                        }
                        bidVar.show();
                        bidVar.setTitleText(string);
                        bidVar.m6933d(string2);
                        bidVar.mo6682lK(string3);
                        bidVar.m6930lL(string4);
                        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.and.1
                            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                            /* renamed from: n */
                            public void mo1843n(View view) {
                                amz.m10365II().m10356c(AppDownloadRequest.m4059j(AppDownLoadModel.this));
                                c1258a.mo9251b(AppDownLoadModel.this.m4188Ih(), AppDownLoadModel.this);
                                AppDownLoadModel.this.appStatus = 9;
                                c1258a.mo9980a(AppDownLoadModel.this.m4188Ih(), AppDownLoadModel.this);
                            }
                        });
                        bidVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kingroot.kinguser.and.2
                            @Override // android.content.DialogInterface.OnDismissListener
                            public void onDismiss(DialogInterface dialogInterface) {
                                C1258a.this.mo9980a(appDownLoadModel.m4188Ih(), appDownLoadModel);
                            }
                        });
                        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.and.3
                            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                            /* renamed from: n */
                            public void mo1843n(View view) {
                                C1258a.this.mo9251b(appDownLoadModel.m4188Ih(), appDownLoadModel);
                                and.m10317a(appDownLoadModel, stub, stub2, C1258a.this);
                            }
                        });
                        return;
                    } else {
                        m10317a(appDownLoadModel, stub, stub2, c1258a);
                        return;
                    }
                } else if (m1921O == 0) {
                    m10317a(appDownLoadModel, stub, stub2, c1258a);
                    return;
                } else {
                    return;
                }
            }
            m10317a(appDownLoadModel, stub, stub2, c1258a);
        }
    }

    /* renamed from: b */
    public static void m10314b(Context context, AppDownLoadModel appDownLoadModel, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2, C1258a c1258a) {
        if (context != null && appDownLoadModel != null) {
            if (appDownLoadModel.m4182In()) {
                m10327a(context, appDownLoadModel, c1258a);
            } else {
                m10326a(context, appDownLoadModel, stub, stub2, c1258a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m10317a(AppDownLoadModel appDownLoadModel, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2, C1258a c1258a) {
        int i = appDownLoadModel.appStatus;
        if (i == 0) {
            amz.m10365II().m10359a(AppDownloadRequest.m4059j(appDownLoadModel), 1, stub, true, stub2);
            appDownLoadModel.appStatus = 1;
            c1258a.mo10042d(appDownLoadModel.m4188Ih(), appDownLoadModel);
            ana.m10352IO().mo10337H(appDownLoadModel.categoryId, appDownLoadModel.pkgName);
        } else if (appDownLoadModel.m4183Im()) {
            amz.m10365II().m10359a(AppDownloadRequest.m4059j(appDownLoadModel), 1, stub, true, stub2);
            appDownLoadModel.appStatus = 1;
            ana.m10352IO().mo10337H(appDownLoadModel.categoryId, appDownLoadModel.pkgName);
        } else if (i == 1 || i == 2) {
            amz.m10365II().m10355g(AppDownloadRequest.m4059j(appDownLoadModel));
            amz.m10365II().m9877hK(appDownLoadModel.pkgName);
            appDownLoadModel.appStatus = 4;
        } else if (i == 5) {
            if (apu.m9741h(AppDownloadRequest.m4059j(appDownLoadModel)).exists()) {
                alm.m10566GQ().mo9331a(ApkInstallRequest.m3784l(appDownLoadModel), stub2);
                appDownLoadModel.appStatus = 6;
                m10306c(appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_installing_state_btn));
            } else {
                appDownLoadModel.appStatus = 0;
            }
        } else if (i == 8) {
            anf.m10277t(KApplication.m13453ge(), appDownLoadModel.pkgName);
            ana.m10352IO().mo10334K(appDownLoadModel.categoryId, appDownLoadModel.pkgName);
        }
        if (c1258a != null) {
            c1258a.mo9980a(appDownLoadModel.m4188Ih(), appDownLoadModel);
        }
    }

    /* renamed from: a */
    private static void m10327a(Context context, AppDownLoadModel appDownLoadModel, C1258a c1258a) {
        if (c1258a != null) {
            AppReserveModel appReserveModel = (AppReserveModel) appDownLoadModel;
            int i = appReserveModel.appStatus;
            if (i == 10 || i == 11) {
                c1258a.mo9189a(appReserveModel.m4188Ih(), appReserveModel);
                if (!C3826wd.m1575nl()) {
                    c1258a.mo9190a(context, appReserveModel.m4188Ih(), appReserveModel);
                }
            }
            c1258a.mo9980a((View) appReserveModel.m4188Ih(), (AppDownLoadModel) appReserveModel);
        }
    }

    /* renamed from: a */
    public static void m10320a(AppDownLoadModel appDownLoadModel, TextRoundCornerProgressBar textRoundCornerProgressBar, String str) {
        m10319a(appDownLoadModel, textRoundCornerProgressBar, str, (IAppDownloadListener.Stub) null, (IAppInstallListener.Stub) null);
    }

    /* renamed from: a */
    public static void m10319a(final AppDownLoadModel appDownLoadModel, final TextRoundCornerProgressBar textRoundCornerProgressBar, final String str, final IAppDownloadListener.Stub stub, final IAppInstallListener.Stub stub2) {
        if (appDownLoadModel != null && textRoundCornerProgressBar != null) {
            if (appDownLoadModel.m4182In()) {
                m10307c(textRoundCornerProgressBar, appDownLoadModel);
            } else {
                beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.and.4
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        final DownloaderTaskInfo hM = amz.m10365II().mo4079hM(AppDownLoadModel.this.pkgName);
                        if (hM == null) {
                            and.m10318a(AppDownLoadModel.this, stub, stub2);
                        }
                        File m9741h = apu.m9741h(AppDownloadRequest.m4059j(AppDownLoadModel.this));
                        if (m9741h.exists() && AppDownLoadModel.this.m4187Ii()) {
                            AppDownLoadModel.this.appStatus = 5;
                        }
                        if (!m9741h.exists() && AppDownLoadModel.this.m4186Ij()) {
                            AppDownLoadModel.this.appStatus = 0;
                        }
                        final int m9412ix = aso.m9417Ol().m9412ix(AppDownLoadModel.this.pkgName);
                        if (C3952zh.m1312pq().m1314du(AppDownLoadModel.this.pkgName) && !AppDownLoadModel.this.isUpdate) {
                            AppDownLoadModel.this.appStatus = 8;
                        }
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.and.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                and.m10316a(hM, textRoundCornerProgressBar, str, AppDownLoadModel.this, m9412ix);
                            }
                        });
                    }
                }));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m10325a(TextRoundCornerProgressBar textRoundCornerProgressBar, AppDownLoadModel appDownLoadModel) {
        C3953zi m1311pr = C3953zi.m1311pr();
        if (appDownLoadModel.appStatus == 5) {
            m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_install_state_btn));
        } else if (appDownLoadModel.appStatus == 6) {
            m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_installing_state_btn));
        } else if (appDownLoadModel.appStatus == 7) {
            m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_install_wait_state_btn));
        } else if (appDownLoadModel.appStatus == 8) {
            m10304d(textRoundCornerProgressBar, m1311pr.getString(R.string.app_open_state_btn));
        } else if (appDownLoadModel.appStatus != 1) {
            if (appDownLoadModel.m4183Im()) {
                m10312b(textRoundCornerProgressBar, m1311pr.getString(R.string.app_download_pause_state_btn));
            } else {
                m10313b(textRoundCornerProgressBar, appDownLoadModel);
            }
        } else {
            m10323a(textRoundCornerProgressBar, String.format(m1311pr.getString(R.string.app_downloading_percent_btn), 0), 0);
        }
    }

    /* renamed from: b */
    public static void m10313b(TextRoundCornerProgressBar textRoundCornerProgressBar, AppDownLoadModel appDownLoadModel) {
        C3953zi m1311pr = C3953zi.m1311pr();
        appDownLoadModel.appStatus = 0;
        if ((appDownLoadModel instanceof AppDetailModel) && ((AppDetailModel) appDownLoadModel).fileSize > 0) {
            if (appDownLoadModel.isUpdate) {
                m10304d(textRoundCornerProgressBar, m1311pr.getString(R.string.update_init_state_btn) + '(' + anf.m10285bQ(((AppDetailModel) appDownLoadModel).fileSize) + ')');
            } else {
                m10324a(textRoundCornerProgressBar, m1311pr.getString(R.string.app_download_state_btn) + '(' + anf.m10285bQ(((AppDetailModel) appDownLoadModel).fileSize) + ')');
            }
        } else if (appDownLoadModel.isUpdate) {
            m10304d(textRoundCornerProgressBar, C3953zi.m1311pr().getString(R.string.update_init_state_btn));
        } else {
            m10324a(textRoundCornerProgressBar, m1311pr.getString(R.string.app_download_state_btn));
        }
    }

    /* renamed from: c */
    public static void m10307c(TextRoundCornerProgressBar textRoundCornerProgressBar, AppDownLoadModel appDownLoadModel) {
        if (appDownLoadModel.m4182In()) {
            AppReserveModel appReserveModel = (AppReserveModel) appDownLoadModel;
            C3953zi m1311pr = C3953zi.m1311pr();
            if (appReserveModel.appStatus == 10) {
                m10303e(textRoundCornerProgressBar, m1311pr.getString(R.string.app_reserve_init_state_btn));
            } else if (appReserveModel.appStatus == 11) {
                m10303e(textRoundCornerProgressBar, m1311pr.getString(R.string.app_reserve_get_gif_state_btn));
            } else if (appReserveModel.appStatus == 12) {
                m10312b(textRoundCornerProgressBar, m1311pr.getString(R.string.app_reserve_completed_state_btn));
                textRoundCornerProgressBar.setClickable(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m10316a(DownloaderTaskInfo downloaderTaskInfo, TextRoundCornerProgressBar textRoundCornerProgressBar, String str, AppDownLoadModel appDownLoadModel, int i) {
        C3953zi m1311pr = C3953zi.m1311pr();
        if (textRoundCornerProgressBar != null) {
            if (downloaderTaskInfo == null && i == 0) {
                m10325a(textRoundCornerProgressBar, appDownLoadModel);
                return;
            }
            if (i == 0) {
                boq m4052KJ = downloaderTaskInfo.m4052KJ();
                if (m4052KJ == boq.DOWNLOADING) {
                    appDownLoadModel.appStatus = 1;
                    m10323a(textRoundCornerProgressBar, String.format(m1311pr.getString(R.string.app_downloading_percent_btn), Integer.valueOf(downloaderTaskInfo.m4050KL())), downloaderTaskInfo.m4050KL());
                } else if (m4052KJ == boq.PENDING) {
                    appDownLoadModel.appStatus = 2;
                    textRoundCornerProgressBar.setProgressText(m1311pr.getString(R.string.app_download_wait_state_btn));
                } else if (m4052KJ == boq.COMPLETE) {
                    appDownLoadModel.appStatus = 5;
                    m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_install_state_btn));
                } else if (m4052KJ == boq.PAUSED || m4052KJ == boq.FAILED) {
                    if (appDownLoadModel.appStatus != 4) {
                        appDownLoadModel.appStatus = 3;
                    }
                    m10323a(textRoundCornerProgressBar, m1311pr.getString(R.string.app_download_pause_state_btn), downloaderTaskInfo.m4050KL());
                }
            }
            if (i == 10 || i == 11) {
                appDownLoadModel.appStatus = 8;
                m10304d(textRoundCornerProgressBar, m1311pr.getString(R.string.app_open_state_btn));
            } else if (anf.m10281fG(i)) {
                appDownLoadModel.appStatus = 6;
                m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_installing_state_btn));
            } else if (i == 6) {
                if (apu.m9741h(AppDownloadRequest.m4059j(appDownLoadModel)).exists()) {
                    appDownLoadModel.appStatus = 5;
                    m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_install_state_btn));
                    return;
                }
                appDownLoadModel.appStatus = 0;
                m10313b(textRoundCornerProgressBar, appDownLoadModel);
                aso.m9417Ol().m9411iy(appDownLoadModel.pkgName);
            } else if (i == 14 || i == 15 || i == 16) {
                appDownLoadModel.appStatus = 5;
                m10306c(textRoundCornerProgressBar, m1311pr.getString(R.string.app_install_state_btn));
            } else if (i == 12) {
                appDownLoadModel.appStatus = 0;
                m10313b(textRoundCornerProgressBar, appDownLoadModel);
                aso.m9417Ol().m9411iy(appDownLoadModel.pkgName);
            }
        }
    }

    /* renamed from: b */
    public static void m10308b(List<ame> list, String str, int i) {
        AppDownLoadModel m10287b = anf.m10287b(list, str);
        if (m10287b != null) {
            m10320a(m10287b, m10287b.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_install_state_btn));
        }
    }

    /* renamed from: a */
    public static void m10315a(List<ame> list, DownloaderTaskInfo downloaderTaskInfo) {
        AppDownLoadModel m10283c;
        if (downloaderTaskInfo != null && (m10283c = anf.m10283c(list, downloaderTaskInfo.m4049KM())) != null) {
            m10320a(m10283c, m10283c.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
        }
    }

    /* renamed from: a */
    private static void m10324a(TextRoundCornerProgressBar textRoundCornerProgressBar, String str) {
        if (textRoundCornerProgressBar != null) {
            textRoundCornerProgressBar.setProgress(0.0f);
            textRoundCornerProgressBar.setProgressText(str);
            textRoundCornerProgressBar.setTextProgressColor(C3953zi.m1311pr().getColor(R.color.white_text));
            textRoundCornerProgressBar.setBackgroundResource(R.drawable.selector_common_button_green);
            textRoundCornerProgressBar.setClickable(true);
        }
    }

    /* renamed from: b */
    private static void m10312b(TextRoundCornerProgressBar textRoundCornerProgressBar, String str) {
        if (textRoundCornerProgressBar != null) {
            textRoundCornerProgressBar.setProgress(0.0f);
            textRoundCornerProgressBar.setProgressText(str);
            textRoundCornerProgressBar.setTextProgressColor(C3953zi.m1311pr().getColor(R.color.white_text));
            textRoundCornerProgressBar.setBackgroundResource(R.drawable.grey_button_bg);
            textRoundCornerProgressBar.setClickable(true);
        }
    }

    /* renamed from: a */
    private static void m10323a(TextRoundCornerProgressBar textRoundCornerProgressBar, String str, int i) {
        if (textRoundCornerProgressBar != null) {
            textRoundCornerProgressBar.setProgress(i);
            textRoundCornerProgressBar.setProgressText(str);
            textRoundCornerProgressBar.setTextProgressColor(C3953zi.m1311pr().getColor(R.color.white_text));
            textRoundCornerProgressBar.setBackgroundResource(R.drawable.grey_button_bg);
            textRoundCornerProgressBar.setClickable(true);
        }
    }

    /* renamed from: c */
    private static void m10306c(TextRoundCornerProgressBar textRoundCornerProgressBar, String str) {
        if (textRoundCornerProgressBar != null) {
            textRoundCornerProgressBar.setProgress(100.0f);
            textRoundCornerProgressBar.setProgressText(str);
            textRoundCornerProgressBar.setTextProgressColor(C3953zi.m1311pr().getColor(R.color.white_text));
            textRoundCornerProgressBar.setBackgroundResource(R.drawable.grey_button_bg);
            textRoundCornerProgressBar.setClickable(true);
        }
    }

    /* renamed from: d */
    private static void m10304d(TextRoundCornerProgressBar textRoundCornerProgressBar, String str) {
        if (textRoundCornerProgressBar != null) {
            textRoundCornerProgressBar.setProgress(0.0f);
            textRoundCornerProgressBar.setProgressText(str);
            textRoundCornerProgressBar.setBackgroundResource(R.drawable.common_blue_button_selector);
            textRoundCornerProgressBar.setTextProgressColor(C3953zi.m1311pr().getColor(R.color.blue_1));
            textRoundCornerProgressBar.setClickable(true);
        }
    }

    /* renamed from: e */
    private static void m10303e(TextRoundCornerProgressBar textRoundCornerProgressBar, String str) {
        if (textRoundCornerProgressBar != null) {
            textRoundCornerProgressBar.setProgress(0.0f);
            textRoundCornerProgressBar.setProgressText(str);
            textRoundCornerProgressBar.setTextProgressColor(C3953zi.m1311pr().getColor(R.color.white_text));
            textRoundCornerProgressBar.setBackgroundResource(R.drawable.selector_common_button_orange);
            textRoundCornerProgressBar.setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m10318a(AppDownLoadModel appDownLoadModel, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2) {
        AppDownloadRequest m10354hy = amz.m10365II().m10354hy(appDownLoadModel.pkgName);
        if (m10354hy != null) {
            appDownLoadModel.m4175b(m10354hy);
            if (appDownLoadModel.appStatus == 1 || appDownLoadModel.appStatus == 2 || appDownLoadModel.appStatus == 3) {
                if (C3748vb.m1921O(KApplication.m13453ge()) == 0) {
                    amz.m10365II().m10359a(AppDownloadRequest.m4059j(appDownLoadModel), 0, stub, true, stub2);
                    return;
                } else {
                    appDownLoadModel.appStatus = 3;
                    return;
                }
            }
            return;
        }
        appDownLoadModel.appStatus = 0;
    }

    /* renamed from: com.kingroot.kinguser.and$a */
    /* loaded from: classes.dex */
    public static class C1258a {
        /* renamed from: a */
        public void mo9980a(View view, AppDownLoadModel appDownLoadModel) {
            if (view != null) {
                if (!appDownLoadModel.m4182In()) {
                    and.m10325a((TextRoundCornerProgressBar) view, appDownLoadModel);
                    view.setClickable(true);
                    return;
                }
                and.m10307c((TextRoundCornerProgressBar) view, appDownLoadModel);
            }
        }

        /* renamed from: b */
        public void mo9251b(View view, AppDownLoadModel appDownLoadModel) {
            if (view != null) {
                view.setClickable(false);
            }
            mo7288c(view, appDownLoadModel);
        }

        /* renamed from: c */
        public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
        }

        /* renamed from: a */
        public void mo9189a(View view, AppReserveModel appReserveModel) {
        }

        /* renamed from: a */
        public void mo9190a(Context context, View view, AppReserveModel appReserveModel) {
        }

        /* renamed from: d */
        public void mo10042d(View view, AppDownLoadModel appDownLoadModel) {
        }

        /* renamed from: fF */
        public void mo10000fF(int i) {
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static void m10322a(AppDownLoadModel appDownLoadModel, TextRoundCornerProgressBar textRoundCornerProgressBar, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2) {
        m10321a(appDownLoadModel, textRoundCornerProgressBar, stub, stub2, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
    }

    @WorkerThread
    /* renamed from: a */
    public static void m10321a(final AppDownLoadModel appDownLoadModel, final TextRoundCornerProgressBar textRoundCornerProgressBar, final IAppDownloadListener.Stub stub, final IAppInstallListener.Stub stub2, final String str) {
        DownloaderTaskInfo hM = amz.m10365II().mo4079hM(appDownLoadModel.pkgName);
        if (hM != null && hM.m4052KJ() != boq.COMPLETE) {
            amz.m10365II().m9882a(hM, stub);
        }
        C3952zh m1312pq = C3952zh.m1312pq();
        File m9741h = apu.m9741h(AppDownloadRequest.m4059j(appDownLoadModel));
        if (m1312pq.m1314du(appDownLoadModel.pkgName) && !appDownLoadModel.isUpdate) {
            appDownLoadModel.appStatus = 8;
        } else if (m9741h.exists() && appDownLoadModel.m4187Ii()) {
            appDownLoadModel.appStatus = 5;
            aso.m9417Ol().mo9329a(appDownLoadModel.pkgName, stub2);
        }
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.and.5
            @Override // java.lang.Runnable
            public void run() {
                and.m10319a(AppDownLoadModel.this, textRoundCornerProgressBar, str, stub, stub2);
            }
        });
    }
}
