package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.advance.model.QuickInstallRecommendModel;
import com.kingroot.kinguser.alf;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailRecommendModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownloadRecommendModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class alf extends RecyclerView.Adapter {
    private List<ame> ahM;
    private and.C1258a akD;
    private int awt;
    private Context mContext;
    private RecyclerView mRecyclerView;
    protected String TAG = "ku_pageAppRecommendAdapter";
    private AppDownloadClient.AppDownloadListenerAdapter awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1
        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.1
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    if (downloaderTaskInfo != null) {
                        downloaderTaskInfo.setPercentage(i);
                        list = alf.this.ahM;
                        and.m10315a(list, downloaderTaskInfo);
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.2
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    if (downloaderTaskInfo != null) {
                        downloaderTaskInfo.setPercentage(0);
                        list = alf.this.ahM;
                        and.m10315a(list, downloaderTaskInfo);
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
            aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), alf.this.akB);
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.3
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    if (downloaderTaskInfo != null) {
                        list = alf.this.ahM;
                        and.m10315a(list, downloaderTaskInfo);
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.4
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    C3953zi m1311pr = C3953zi.m1311pr();
                    list = alf.this.ahM;
                    and.m10315a(list, downloaderTaskInfo);
                    C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                    if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.5
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    if (downloaderTaskInfo != null) {
                        list = alf.this.ahM;
                        and.m10315a(list, downloaderTaskInfo);
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.6
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    if (downloaderTaskInfo != null) {
                        list = alf.this.ahM;
                        and.m10315a(list, downloaderTaskInfo);
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$1.7
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    if (downloaderTaskInfo != null) {
                        list = alf.this.ahM;
                        and.m10315a(list, downloaderTaskInfo);
                    }
                }
            });
        }
    };
    private IAppInstallListener.Stub akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$2
        @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
        public void onState(final String str, final int i, String str2) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.adapter.AppRecommendAdapter$2.1
                @Override // java.lang.Runnable
                public void run() {
                    List list;
                    list = alf.this.ahM;
                    and.m10308b(list, str, i);
                }
            });
        }
    };

    public alf(Context context, List<ame> list) {
        this.mContext = context;
        this.ahM = list;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 2:
                return new C1085c(from.inflate(R.layout.list_item_app_recommend_recycle_item, viewGroup, false));
            case 3:
                return new C1082b(from.inflate(R.layout.list_item_app_detail_recommend_recycle_item, viewGroup, false));
            case 4:
            case 5:
            case 6:
            default:
                return null;
            case 7:
                return new C1088d(from.inflate(R.layout.list_item_quick_install_recommend_recycle_item, viewGroup, false));
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((AbstractC1079a) viewHolder).mo10620a(this.ahM.get(i));
        if (this.awt >= 0) {
            viewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(this.mRecyclerView.getWidth() / this.awt, -2));
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.get(i).getType();
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.size() > this.awt ? this.awt : this.ahM.size();
    }

    /* renamed from: com.kingroot.kinguser.alf$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC1079a extends RecyclerView.ViewHolder {
        protected HashMap<ImageView, String> akC;
        protected apv.InterfaceC1441b akE;

        /* renamed from: a */
        abstract void mo10620a(ame ameVar);

        public AbstractC1079a(View view) {
            super(view);
            this.akC = new HashMap<>();
            this.akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alf.a.1
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alf.a.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            for (ImageView imageView : AbstractC1079a.this.akC.keySet()) {
                                if (str.equals(AbstractC1079a.this.akC.get(imageView))) {
                                    imageView.setImageBitmap(bitmap);
                                    imageView.setTag(str);
                                    return;
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
        }
    }

    /* renamed from: com.kingroot.kinguser.alf$c */
    /* loaded from: classes.dex */
    class C1085c extends AbstractC1079a {
        public TextView afV;
        public TextRoundCornerProgressBar awD;
        public ImageView awb;
        public TextView awc;

        public C1085c(View view) {
            super(view);
            this.awb = (ImageView) view.findViewById(R.id.app_detail_recommend_icon);
            this.afV = (TextView) view.findViewById(R.id.app_detail_recommend_name);
            this.awc = (TextView) view.findViewById(R.id.app_detail_recommend_download_count);
            this.awD = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
        }

        @Override // com.kingroot.kinguser.alf.AbstractC1079a
        /* renamed from: a */
        public void mo10620a(ame ameVar) {
            final AppDownloadRecommendModel appDownloadRecommendModel = (AppDownloadRecommendModel) ameVar;
            this.afV.setText(appDownloadRecommendModel.appName);
            this.awc.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appDownloadRecommendModel.downloadCount)));
            this.awb.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alf.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AppDetailActivity.m12647a(alf.this.mContext, appDownloadRecommendModel);
                }
            });
            this.awD.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alf.c.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    and.m10326a(alf.this.mContext, appDownloadRecommendModel, alf.this.awu, alf.this.akB, alf.this.akD);
                }
            });
            appDownloadRecommendModel.m4179a(this.awD);
            appDownloadRecommendModel.m4181a(this.awb);
            if (!appDownloadRecommendModel.iconUrl.equals(this.awb.getTag())) {
                this.akC.put(this.awb, appDownloadRecommendModel.iconUrl);
                apv.m9735LO().m9730a(appDownloadRecommendModel.iconUrl, this.akE);
            }
            and.m10319a(appDownloadRecommendModel, appDownloadRecommendModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), alf.this.awu, alf.this.akB);
            ana.m10352IO().mo10330a(alf.this.mContext.getClass().getName(), alf.this.mContext.hashCode(), appDownloadRecommendModel.reportInfo);
        }
    }

    /* renamed from: com.kingroot.kinguser.alf$b */
    /* loaded from: classes.dex */
    class C1082b extends AbstractC1079a {
        public TextView afV;
        public ImageView awC;
        public TextRoundCornerProgressBar awD;
        public ImageView awb;

        public C1082b(View view) {
            super(view);
            this.awb = (ImageView) view.findViewById(R.id.app_detail_recommend_icon);
            this.awC = (ImageView) view.findViewById(R.id.app_detail_recommend_download);
            this.afV = (TextView) view.findViewById(R.id.app_detail_recommend_name);
            this.awD = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
        }

        @Override // com.kingroot.kinguser.alf.AbstractC1079a
        /* renamed from: a */
        public void mo10620a(ame ameVar) {
            final AppDetailRecommendModel appDetailRecommendModel = (AppDetailRecommendModel) ameVar;
            this.afV.setText(appDetailRecommendModel.appName);
            this.awC.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alf.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AppDetailActivity.m12647a(alf.this.mContext, appDetailRecommendModel);
                }
            });
            this.awD.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alf.b.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    and.m10326a(alf.this.mContext, appDetailRecommendModel, alf.this.awu, alf.this.akB, alf.this.akD);
                }
            });
            appDetailRecommendModel.m4179a(this.awD);
            appDetailRecommendModel.m4181a(this.awb);
            if (!appDetailRecommendModel.iconUrl.equals(this.awb.getTag())) {
                this.akC.put(this.awb, appDetailRecommendModel.iconUrl);
                apv.m9735LO().m9730a(appDetailRecommendModel.iconUrl, this.akE);
            }
            and.m10319a(appDetailRecommendModel, appDetailRecommendModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), alf.this.awu, alf.this.akB);
            ana.m10352IO().mo10330a(alf.this.mContext.getClass().getName(), alf.this.mContext.hashCode(), appDetailRecommendModel.reportInfo);
        }
    }

    /* renamed from: com.kingroot.kinguser.alf$d */
    /* loaded from: classes.dex */
    class C1088d extends AbstractC1079a {
        public TextView afV;
        public TextRoundCornerProgressBar awD;
        public ImageView awb;

        public C1088d(View view) {
            super(view);
            this.awb = (ImageView) view.findViewById(R.id.app_detail_recommend_icon);
            this.afV = (TextView) view.findViewById(R.id.app_detail_recommend_name);
            this.awD = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
        }

        @Override // com.kingroot.kinguser.alf.AbstractC1079a
        /* renamed from: a */
        public void mo10620a(ame ameVar) {
            final QuickInstallRecommendModel quickInstallRecommendModel = (QuickInstallRecommendModel) ameVar;
            this.afV.setText(quickInstallRecommendModel.appName);
            this.awD.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alf.d.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    and.m10326a(alf.this.mContext, quickInstallRecommendModel, alf.this.awu, alf.this.akB, alf.this.akD);
                }
            });
            quickInstallRecommendModel.m4179a(this.awD);
            quickInstallRecommendModel.m4181a(this.awb);
            if (!quickInstallRecommendModel.iconUrl.equals(this.awb.getTag())) {
                this.akC.put(this.awb, quickInstallRecommendModel.iconUrl);
                apv.m9735LO().m9730a(quickInstallRecommendModel.iconUrl, this.akE);
            }
            and.m10319a(quickInstallRecommendModel, quickInstallRecommendModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), alf.this.awu, alf.this.akB);
            ana.m10352IO().mo10330a(alf.this.mContext.getClass().getName(), alf.this.mContext.hashCode(), quickInstallRecommendModel.reportInfo);
        }
    }

    /* renamed from: fe */
    public void m10621fe(int i) {
        this.awt = i;
    }

    /* renamed from: a */
    public void m10628a(and.C1258a c1258a) {
        this.akD = c1258a;
    }

    /* renamed from: b */
    public void m10626b(AppDownLoadModel appDownLoadModel) {
        if (appDownLoadModel != null && appDownLoadModel.m4184Il() != null) {
            LinearLayout m4184Il = appDownLoadModel.m4184Il();
            RecyclerView recyclerView = (RecyclerView) m4184Il.findViewById(R.id.app_recommend_list);
            recyclerView.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
            recyclerView.setItemAnimator(new DefaultItemAnimator());
            recyclerView.setAdapter(this);
            m4184Il.getLayoutParams().height = -2;
            appDownLoadModel.isExpand = true;
            notifyDataSetChanged();
        }
    }

    /* renamed from: GN */
    public void m10629GN() {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            AppBaseModel appBaseModel = (AppBaseModel) this.ahM.get(i);
            if (!TextUtils.isEmpty(appBaseModel.pkgName)) {
                amz.m10365II().m9879a(appBaseModel.pkgName, this.awu);
                aso.m9417Ol().mo9329a(appBaseModel.pkgName, this.akB);
            }
        }
    }
}
