package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.p004v4.view.ViewCompat;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingcore.uilib.ExpandableTextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.common.uilib.NestedScrollView;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.akl;
import com.kingroot.kinguser.alc;
import com.kingroot.kinguser.ana;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.ank;
import com.kingroot.kinguser.ano;
import com.kingroot.kinguser.anx;
import com.kingroot.kinguser.apf;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailRecommendModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$7;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class ank extends ans {

    /* renamed from: Gc */
    private int f1490Gc;
    private TextView aAM;
    private TextView aAN;
    private TextView aAO;
    private TextView aAP;
    private TextView aAQ;
    private TextView aAR;
    private RelativeLayout aAS;
    private ExpandableTextView aAT;
    private String aAU;
    private String aAV;
    private ImageView aAW;
    private AppDownLoadModel aAX;
    private ArrayList<ame> aAY;
    private alc aAZ;
    private RecyclerView aBa;
    private ArrayList<amc> aBb;
    public TextRoundCornerProgressBar aBc;
    private Bitmap aBd;
    private C3454qd aBe;
    private NestedScrollView aBf;
    private ano aBg;
    protected apf aBh;
    private int aBi;
    private boolean aBj;
    private ILoadAppsDetailListener aBk;
    private ILoadRecommendAppsListener aBl;
    protected HashMap<String, Integer> aBm;
    private alc.InterfaceC1055a aBn;
    private ILoadAppStatusListener aBo;
    private ILoadAppsListener aBp;
    private TextView age;
    protected FrameLayout aiM;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    protected apv.InterfaceC1441b akE;
    private LinearLayout aoh;
    private RecyclerView aoi;
    private alf aoj;
    private int aon;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private ImageView mIconView;

    public ank(Context context) {
        super(context);
        this.f1490Gc = 0;
        this.aAY = new ArrayList<>();
        this.aBb = new ArrayList<>();
        this.aon = 0;
        this.aBi = -1;
        this.aBj = false;
        this.aBk = new AppDetailPage$7(this);
        this.aBl = new ILoadRecommendAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$8
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener
            public void onReceive(int i, int i2, String str, List<AppBaseModel> list) {
                int i3;
                int i4;
                ArrayList arrayList;
                if (list.size() <= 0) {
                    i3 = ank.this.f1490Gc;
                    if (i3 < 2) {
                        ank.this.getHandler().obtainMessage(2).sendToTarget();
                        return;
                    } else {
                        ank.this.getHandler().obtainMessage(3).sendToTarget();
                        return;
                    }
                }
                C3952zh m1312pq = C3952zh.m1312pq();
                for (AppBaseModel appBaseModel : list) {
                    if (!m1312pq.m1314du(appBaseModel.pkgName) && !ank.this.aAX.pkgName.equals(appBaseModel.pkgName)) {
                        arrayList = ank.this.aAY;
                        arrayList.add(new AppDetailRecommendModel(appBaseModel));
                    }
                }
                ank ankVar = ank.this;
                i4 = ank.this.aon;
                ankVar.aon = i4 + 30;
                ank.this.getHandler().obtainMessage(2).sendToTarget();
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), ank.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.5
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$9.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$10
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        and.m10320a(ank.this.aAX, ank.this.aBc, C3953zi.m1311pr().getString(R.string.app_install_state_btn));
                        if ((i == 10 || i == 11) && ank.this.aBi == 2) {
                            akl.m11257AS().m11178gT(ank.this.aAX.pkgName);
                        }
                    }
                });
            }
        };
        this.aBm = new HashMap<>();
        this.akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.ank.2
            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: a */
            public void mo4137a(final String str, final Bitmap bitmap) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.ank.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ank.this.aBm.containsKey(str)) {
                            int intValue = ank.this.aBm.get(str).intValue();
                            if (((amc) ank.this.aBb.get(intValue)).m10447Ig() == null) {
                                ((amc) ank.this.aBb.get(intValue)).m10446d(bitmap);
                                ank.this.aAZ.notifyItemChanged(intValue);
                            }
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: eE */
            public void mo4136eE(String str) {
            }
        };
        this.akD = new and.C1258a();
        this.aBn = new alc.InterfaceC1055a() { // from class: com.kingroot.kinguser.ank.3
            @Override // com.kingroot.kinguser.alc.InterfaceC1055a
            /* renamed from: c */
            public void mo10226c(View view, int i) {
                if (ank.this.aAX instanceof AppDetailModel) {
                    AppDetailModel appDetailModel = (AppDetailModel) ank.this.aAX;
                    if (!C3942yy.m1351d(appDetailModel.picurls) && !C3942yy.m1351d(appDetailModel.srcpicurls)) {
                        new apf.C1420a(ank.this.mContext).m9782ga(ViewCompat.MEASURED_STATE_MASK).m9781gb(R.drawable.detail_pic_default).m9786aW(ank.this.m10255Jc()).m9785aX(ank.this.m10254Jd()).m9784fY(i).m9783fZ(1).m9787a(ank.this.aBh, (ImageView) view).show();
                    }
                }
            }
        };
        this.aBo = new ILoadAppStatusListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$13
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$13.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ano anoVar;
                        Context context2;
                        ano anoVar2;
                        anoVar = ank.this.aBg;
                        anx m10169Jo = anoVar.m10169Jo();
                        context2 = ank.this.mContext;
                        m10169Jo.m10013l(context2, -1);
                        anoVar2 = ank.this.aBg;
                        anoVar2.m10169Jo().m10015fL(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowWaitDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ano anoVar;
                        anoVar = ank.this.aBg;
                        anoVar.m10169Jo().m10014fM(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDot() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$13.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ano anoVar;
                        anoVar = ank.this.aBg;
                        anoVar.m10169Jo().m10016fK(0);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowNormal() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$13.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ano anoVar;
                        anoVar = ank.this.aBg;
                        anoVar.m10169Jo().m10016fK(8);
                    }
                });
            }
        };
        this.aBp = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDetailPage$14
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                if (list.size() > 0) {
                    ank.this.aAX = new AppDownLoadModel(list.get(0));
                    ana.m10352IO().mo10330a(ank.this.getActivity().getClass().getName(), ank.this.getActivity().hashCode(), ank.this.aAX.reportInfo);
                    ank.this.m10257Ja();
                    ana.m10352IO().mo10331a(ank.this.aAX.reportInfo, 80);
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
            this.aoj.m10629GN();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        Bundle extras;
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100590);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null && (extras = intent.getExtras()) != null) {
            this.aBi = extras.getInt("app_detail_scene");
            this.aBj = extras.getBoolean("app_auto_start_download", false);
            if (this.aBi == 1) {
                alq.m10547GY().mo10433a(5012415, 1, extras.getInt("notification_app_offset"), this.aBp);
                return;
            }
            this.aAX = new AppDownLoadModel((AppBaseModel) extras.getParcelable("app_detail_model"));
            ana.m10352IO().mo10331a(this.aAX.reportInfo, 80);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.app_detail, (ViewGroup) null);
        this.aBf = (NestedScrollView) inflate.findViewById(R.id.scroll_view);
        this.aBf.m13268i(this.aBg.mo10167sg());
        C3472qk.m2594a(this.aBf);
        this.mIconView = (ImageView) inflate.findViewById(R.id.app_detail_icon);
        this.age = (TextView) inflate.findViewById(R.id.app_detail_name);
        this.aAM = (TextView) inflate.findViewById(R.id.app_detail_download_count);
        this.aAN = (TextView) inflate.findViewById(R.id.app_detail_version);
        this.aAO = (TextView) inflate.findViewById(R.id.app_detail_time);
        this.aAP = (TextView) inflate.findViewById(R.id.app_detail_official);
        this.aAQ = (TextView) inflate.findViewById(R.id.app_detail_no_virus);
        this.aAR = (TextView) inflate.findViewById(R.id.app_detail_no_ad);
        this.aAS = (RelativeLayout) inflate.findViewById(R.id.app_detail_description);
        this.aAT = (ExpandableTextView) inflate.findViewById(R.id.app_detail_describe_content);
        this.aAW = (ImageView) inflate.findViewById(R.id.app_detail_expand_btn);
        this.aAT.setAnimationDuration(200L);
        this.aAW.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ank.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ank.this.aAT.m13586gF();
            }
        });
        this.aAT.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ank.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ank.this.aAT.m13583gI()) {
                    ank.this.aAT.m13585gG();
                }
            }
        });
        this.aAT.setExpandListener(new ExpandableTextView.InterfaceC0453a() { // from class: com.kingroot.kinguser.ank.5
            @Override // com.kingcore.uilib.ExpandableTextView.InterfaceC0453a
            /* renamed from: b */
            public void mo10225b(ExpandableTextView expandableTextView) {
                if (!TextUtils.isEmpty(ank.this.aAU)) {
                    ank.this.aAT.setText(ank.this.aAU);
                    C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ank.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ank.this.aBf.smoothScrollTo(0, ank.this.aAS.getTop());
                        }
                    }, 200L);
                }
                bhk.m6994b(ank.this.aAW, 0.0f, 180.0f, 200L);
            }

            @Override // com.kingcore.uilib.ExpandableTextView.InterfaceC0453a
            /* renamed from: c */
            public void mo10224c(ExpandableTextView expandableTextView) {
                if (!TextUtils.isEmpty(ank.this.aAV)) {
                    ank.this.aAT.setText(ank.this.aAV);
                }
                bhk.m6994b(ank.this.aAW, 180.0f, 0.0f, 200L);
            }
        });
        this.aBc = (TextRoundCornerProgressBar) inflate.findViewById(R.id.app_detail_download_btn);
        this.aBc.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ank.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ank.this.aBi == 2) {
                    als.m10538Hi().mo10419C(ank.this.aAX.pkgName, 3);
                }
                and.m10326a(ank.this.mContext, ank.this.aAX, ank.this.awu, ank.this.akB, ank.this.akD);
            }
        });
        this.aBh = apf.m9797aW(this.mContext);
        this.aBd = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.detail_pic_default);
        this.aBa = (RecyclerView) inflate.findViewById(R.id.app_detail_image_list);
        m10259IY();
        this.aAZ = new alc(this.mContext, this.aBb, this.aBn);
        this.aBa.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.kingroot.kinguser.ank.7
            @Override // android.support.p007v7.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                rect.set(0, 0, C3953zi.m1311pr().getDimensionPixelOffset(R.dimen.app_detail_image_item_padding_right), 0);
            }
        });
        this.aBa.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
        this.aBa.setItemAnimator(new DefaultItemAnimator());
        this.aBa.setAdapter(this.aAZ);
        C3472qk.m2595a(this.aBa, 1);
        this.aoh = (LinearLayout) inflate.findViewById(R.id.app_detail_recommend);
        this.aoi = (RecyclerView) inflate.findViewById(R.id.app_task_recommend_list);
        this.aoj = new alf(this.mContext, this.aAY);
        this.aoj.m10621fe(4);
        this.aoj.m10628a(this.akD);
        this.aoi.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
        this.aoi.setItemAnimator(new DefaultItemAnimator());
        this.aoi.setAdapter(this.aoj);
        this.aiM = (FrameLayout) inflate.findViewById(R.id.loading_layout);
        this.aBe = new C3454qd();
        ((FrameLayout) inflate.findViewById(R.id.star_rate_container)).addView(this.aBe.getWholeView());
        if (this.aBi != 1) {
            m10257Ja();
        }
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        and.m10320a(this.aAX, this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
        amz.m10365II().m10358b(this.aBo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        amz.m10365II().m10361a(this.aBo);
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aBg = new ano(getContext(), C3953zi.m1311pr().getString(R.string.app_detail_title));
        return this.aBg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m10258IZ();
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                }
                if (this.aBj) {
                    and.m10326a(this.mContext, this.aAX, this.awu, this.akB, this.akD);
                    return;
                }
                return;
            case 1:
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                    return;
                }
                return;
            case 2:
            case 3:
                if (this.aAY.size() < 4 && this.f1490Gc < 2) {
                    m10256Jb();
                    this.f1490Gc++;
                    return;
                }
                m10228wD();
                this.f1490Gc = 0;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        acs.m12655c(this.aBd);
        super.onDestroy();
    }

    /* renamed from: IY */
    private void m10259IY() {
        for (int i = 0; i < 3; i++) {
            amc amcVar = new amc();
            amcVar.m10446d(this.aBd);
            this.aBb.add(amcVar);
        }
    }

    /* renamed from: wD */
    private void m10228wD() {
        if (this.aAY.size() < 4) {
            this.aoh.setVisibility(8);
            return;
        }
        this.aoj.notifyDataSetChanged();
        this.aoh.setVisibility(0);
    }

    /* renamed from: IZ */
    private void m10258IZ() {
        int i = 0;
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.ank.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                and.m10322a(ank.this.aAX, ank.this.aBc, ank.this.awu, ank.this.akB);
            }
        }));
        if (this.aAX instanceof AppDetailModel) {
            AppDetailModel appDetailModel = (AppDetailModel) this.aAX;
            C3953zi m1311pr = C3953zi.m1311pr();
            this.age.setText(this.aAX.appName);
            this.aAM.setText(m1311pr.getString(R.string.app_download_count, anf.m10286bP(this.aAX.downloadCount)));
            if (!TextUtils.isEmpty(this.aAX.version)) {
                this.aAN.setText(m1311pr.getString(R.string.app_detail_version, this.aAX.version));
            }
            if (!TextUtils.isEmpty(appDetailModel.publishTime)) {
                this.aAO.setText(m1311pr.getString(R.string.app_detail_time, appDetailModel.publishTime));
            }
            if (!TextUtils.isEmpty(appDetailModel.description)) {
                this.aAU = appDetailModel.description;
                this.aAV = appDetailModel.description.replaceAll("\\n", "");
                this.aAT.setText(this.aAV);
            }
            if (appDetailModel.official == 1) {
                this.aAP.setVisibility(8);
            }
            if (appDetailModel.sign != 5) {
                this.aAQ.setVisibility(8);
            }
            if (appDetailModel.plugintype != 0) {
                this.aAR.setVisibility(8);
            }
            if (this.aBe != null) {
                this.aBe.m2607r(appDetailModel.score, appDetailModel.suser);
            }
            if (appDetailModel.appStatus == 0 && appDetailModel.fileSize > 0) {
                and.m10320a(this.aAX, this.aBc, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
            }
            if (!C3942yy.m1351d(appDetailModel.picurls) && !C3942yy.m1351d(appDetailModel.srcpicurls) && appDetailModel.picurls.size() == appDetailModel.srcpicurls.size()) {
                this.aBb.clear();
                while (true) {
                    int i2 = i;
                    if (i2 < appDetailModel.picurls.size()) {
                        amc amcVar = new amc();
                        amcVar.m10445hu(appDetailModel.picurls.get(i2));
                        this.aBm.put(appDetailModel.picurls.get(i2), Integer.valueOf(i2));
                        amcVar.m10444hv(appDetailModel.srcpicurls.get(i2));
                        this.aBb.add(amcVar);
                        i = i2 + 1;
                    } else {
                        apv.m9735LO().m9724b(appDetailModel.picurls, this.akE);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ja */
    public void m10257Ja() {
        alq.m10547GY().mo10427a(this.aAX, this.aBk);
        alq.m10547GY().mo10430a(5012413, this.aAX.pkgName, 30, this.aon, this.aAX.groupId, this.aBl);
    }

    /* renamed from: Jb */
    private void m10256Jb() {
        alq.m10547GY().mo10430a(5012413, this.aAX.pkgName, 30, this.aon, this.aAX.groupId, this.aBl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: Jc */
    public List<ImageView> m10255Jc() {
        ArrayList arrayList = new ArrayList();
        if (!(this.aAX instanceof AppDetailModel)) {
            return arrayList;
        }
        AppDetailModel appDetailModel = (AppDetailModel) this.aAX;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= appDetailModel.picurls.size()) {
                return arrayList;
            }
            ImageView imageView = (ImageView) this.aBa.getLayoutManager().findViewByPosition(i2);
            if (imageView != null) {
                arrayList.add(imageView);
            }
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Jd */
    public List<String> m10254Jd() {
        return ((AppDetailModel) this.aAX).srcpicurls;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        if (this.aBh != null && this.aBh.isShown()) {
            this.aBh.dismiss();
            return true;
        }
        return super.onBackPressed();
    }
}
