package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.asw;
import com.kingroot.kinguser.atn;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguser.gamebox.foreground.view.ScaleView;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class atn extends ans {
    private Bitmap aBd;
    private String aGj;
    private String aOX;
    private GridView aOY;
    private TextView aOZ;
    private TextView aPa;
    private TextView aPb;
    private TextRoundCornerProgressBar aPc;
    private ScaleView aPd;
    private View aPe;
    private Bitmap aPf;
    private AppDownLoadModel aPg;
    private atr aPh;
    private int aPi;
    private int aPj;
    private float aPk;
    private float aPl;
    private float aPm;
    private float aPn;
    private int aPo;
    private int aPp;
    private int aPq;
    private int aPr;
    private int aPs;
    private int aPt;
    private int aPu;
    private int aPv;
    private View aPw;
    private final bed aPx;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private View mClose;
    private View mContent;
    private ImageView mIconView;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.aPg.pkgName);
        anf.m10292a(list, arrayList, this.awu, this.akB);
    }

    public atn(Context context) {
        super(context);
        this.aOX = "";
        this.aPi = 0;
        this.aPj = 0;
        this.aPk = 0.0f;
        this.aPl = 0.0f;
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$5
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String str3;
                        AppDownLoadModel appDownLoadModel = atn.this.aPg;
                        TextRoundCornerProgressBar textRoundCornerProgressBar = atn.this.aPc;
                        str3 = atn.this.aOX;
                        and.m10320a(appDownLoadModel, textRoundCornerProgressBar, str3);
                        if (i == 10) {
                            asw.m9343iR(atn.this.aPg.pkgName);
                        }
                    }
                });
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), atn.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.5
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailPage$6.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(atn.this.aPg, atn.this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }
        };
        this.aPx = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.atn.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                AppDetailModel m9335m = asx.m9338OK().m9335m(atn.this.aPg);
                if (m9335m != null) {
                    m9335m.reportInfo = atn.this.aPg.reportInfo;
                    m9335m.categoryId = atn.this.aPg.reportInfo.categoryid;
                    atn.this.aPg = m9335m;
                    atn.this.aPg.m4179a(atn.this.aPc);
                    atn.this.getHandler().obtainMessage(1).sendToTarget();
                }
            }
        });
        this.akD = new and.C1258a();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        m9184Pt();
        ana.m10352IO().mo10331a(this.aPg.reportInfo, 80);
        this.aGj = aii.m11642xL().m11641xM() ? "5010004" : "5010001";
        this.aPf = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.default_app);
        this.aBd = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.detail_pic_default);
        View inflate = getLayoutInflater().inflate(R.layout.page_gamebox_recommend_detail, (ViewGroup) null);
        this.aOY = (GridView) inflate.findViewById(R.id.game_screenshot_grid);
        m9187Pq();
        this.mIconView = (ImageView) inflate.findViewById(R.id.game_icon);
        this.aOZ = (TextView) inflate.findViewById(R.id.game_name);
        this.aPa = (TextView) inflate.findViewById(R.id.short_describe);
        this.aPb = (TextView) inflate.findViewById(R.id.game_describe_content);
        this.aPc = (TextRoundCornerProgressBar) inflate.findViewById(R.id.btn_obtain_game);
        this.aPw = inflate.findViewById(R.id.game_detail_layout);
        this.aPe = inflate.findViewById(R.id.bg_dark);
        this.aPd = (ScaleView) inflate.findViewById(R.id.scale_view);
        this.mContent = inflate.findViewById(R.id.content);
        this.mClose = inflate.findViewById(R.id.close);
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atn.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                atn.this.m9185Ps();
            }
        });
        if (this.aPg != null) {
            this.mIconView.setImageBitmap(this.aPf);
            apv.m9735LO().m9730a(this.aPg.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.atn.3
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.atn.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (str != null && str.equals(atn.this.aPg.iconUrl)) {
                                atn.this.mIconView.setImageBitmap(bitmap);
                            }
                        }
                    });
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: eE */
                public void mo4136eE(String str) {
                }
            });
            this.aOZ.setText(this.aPg.appName);
            this.aPa.setText(this.aPg.describe);
            this.aOX = C3953zi.m1311pr().getString(R.string.app_download_state_btn);
            if (this.aPg.fileSize > 0) {
                this.aOX += " (" + anf.m10285bQ(this.aPg.fileSize) + ")";
            }
            this.aPc.setProgressText(this.aOX);
            this.aPg.m4179a(this.aPc);
        }
        this.aPc.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atn.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                and.m10326a(atn.this.mContext, atn.this.aPg, atn.this.awu, atn.this.akB, atn.this.akD);
                ady.m12308tK().m12312eP(atn.this.aPg.pkgName);
            }
        });
        this.mIconView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.atn.5
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                atn.this.mIconView.getViewTreeObserver().removeOnPreDrawListener(this);
                int[] iArr = new int[2];
                int[] iArr2 = new int[2];
                atn.this.mIconView.getLocationOnScreen(iArr);
                atn.this.aPd.getLocationOnScreen(iArr2);
                atn.this.aPi = (atn.this.aPp - iArr[0]) - (atn.this.aPq / 2);
                atn.this.aPj = (atn.this.aPo - iArr[1]) - (atn.this.aPr / 2);
                atn.this.aPk = atn.this.aPq / atn.this.mIconView.getWidth();
                atn.this.aPl = atn.this.aPr / atn.this.mIconView.getHeight();
                atn.this.aPm = atn.this.aPt - iArr2[0];
                atn.this.aPn = atn.this.aPs - iArr2[1];
                atn.this.m9186Pr();
                return false;
            }
        });
        return inflate;
    }

    /* renamed from: Pq */
    private void m9187Pq() {
        this.aPh = atr.m9145a(getActivity(), this.aOY, 2.5f, this.aBd);
        m9168gA(this.aPh.getCount());
        this.aOY.setAdapter((ListAdapter) this.aPh);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        View mo10167sg;
        super.mo1370oI();
        AbstractC3933yp oM = m1407oM();
        if (oM != null && (oM instanceof acw) && (mo10167sg = ((acw) oM).mo10167sg()) != null) {
            mo10167sg.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        acs.m12655c(this.aPf);
        acs.m12655c(this.aBd);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        and.m10320a(this.aPg, this.aPc, this.aOX);
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
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 1:
                m9183Pu();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* renamed from: Pr */
    public void m9186Pr() {
        this.mIconView.getLocationOnScreen(new int[2]);
        if (abd.m12839qb() > 11) {
            this.mIconView.setLayerType(2, null);
            this.aPd.setLayerType(2, null);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mIconView, "translationX", this.aPi, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mIconView, "translationY", this.aPj, 0.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mIconView, "scaleX", this.aPk, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.mIconView, "scaleY", this.aPl, 1.0f);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.aPe, "alpha", 0.0f, 1.0f);
        this.aPd.m3748a((int) this.aPm, (int) this.aPn, this.aPu, this.aPv, 300L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.atn.6
            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                bhk.m6998a(atn.this.aPw, 200L, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.atn.6.1
                    @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        super.onAnimationEnd(animator2);
                        atn.this.aPw.setVisibility(0);
                        beg.m7461Zj().m7450c(atn.this.aPx);
                    }
                });
                bhk.m6998a(atn.this.mClose, 200L, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.atn.6.2
                    @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        super.onAnimationEnd(animator2);
                        atn.this.mClose.setVisibility(0);
                    }
                });
                if (abd.m12839qb() > 11) {
                    atn.this.mIconView.setLayerType(0, null);
                    atn.this.aPd.setLayerType(0, null);
                }
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }
        });
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5);
        animatorSet.setDuration(300L);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* renamed from: Ps */
    public void m9185Ps() {
        if (abd.m12839qb() > 11) {
            this.mContent.setLayerType(2, null);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.aPe, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mContent, "translationY", 0.0f, this.mContent.getHeight());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.atn.7
            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (abd.m12839qb() > 11) {
                    atn.this.mContent.setLayerType(0, null);
                }
                atn.this.getActivity().finish();
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }
        });
        animatorSet.playTogether(ofFloat2, ofFloat);
        animatorSet.setDuration(300L);
        animatorSet.start();
    }

    /* renamed from: Pt */
    private void m9184Pt() {
        Bundle extras;
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null && (extras = intent.getExtras()) != null) {
            this.aPg = (AppDownLoadModel) extras.getParcelable("extra_game_modle");
            this.aPo = extras.getInt("extra_game_icon_top_i");
            this.aPp = extras.getInt("extra_game_icon_left_i");
            this.aPq = extras.getInt("extra_game_icon_width_i");
            this.aPr = extras.getInt("extra_game_icon_height_i");
            this.aPs = extras.getInt("extra_game_list_item_top_i");
            this.aPt = extras.getInt("extra_game_list_item_left_i");
            this.aPu = extras.getInt("extra_game_list_item_width_i");
            this.aPv = extras.getInt("extra_game_list_item_height_i");
        }
    }

    /* renamed from: Pu */
    private void m9183Pu() {
        if (this.aPg != null) {
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atn.2
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    and.m10322a(atn.this.aPg, atn.this.aPg.m4188Ih(), atn.this.awu, atn.this.akB);
                }
            }));
            if (this.aPg instanceof AppDetailModel) {
                AppDetailModel appDetailModel = (AppDetailModel) this.aPg;
                m9168gA(appDetailModel.picurls.size());
                this.aPh = new atr(getActivity(), this.aOY, appDetailModel.picurls, this.aBd);
                this.aOY.setAdapter((ListAdapter) this.aPh);
                this.aPb.setText(appDetailModel.describe);
                if (appDetailModel.appStatus == 0 && appDetailModel.fileSize > 0) {
                    and.m10320a(this.aPg, this.aPc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                }
            }
        }
    }

    /* renamed from: gA */
    private void m9168gA(int i) {
        this.aOY.setNumColumns(i);
        this.aOY.setLayoutParams(new LinearLayout.LayoutParams((int) ((abg.m12836qc() / 2.5f) * i), -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m9185Ps();
            return true;
        }
        return true;
    }
}
