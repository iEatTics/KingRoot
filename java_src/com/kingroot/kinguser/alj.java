package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.common.uilib.ShapedImageView;
import com.kingroot.common.uilib.banner.BannerView;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.activitys.AppDownloadManagerActivity;
import com.kingroot.kinguser.activitys.AppsMarketCategoryActivity;
import com.kingroot.kinguser.activitys.ReserveActivity;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class alj extends RecyclerView.Adapter {
    private static final String TAG = aiq.arY + "_MainRVAdapter";
    private alf aoj;
    private final List<AppBaseModel> axb;
    private List<amm> axc;
    private Context mContext;
    private HashMap<ImageView, String> akC = new HashMap<>();
    private InterfaceC1138j axd = null;
    private InterfaceC1137i axe = null;

    /* renamed from: VM */
    private boolean f1477VM = false;
    private boolean axf = true;
    private final RecyclerView.AdapterDataObserver axg = new RecyclerView.AdapterDataObserver() { // from class: com.kingroot.kinguser.alj.1
        @Override // android.support.p007v7.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            alj.this.f1477VM = false;
        }

        @Override // android.support.p007v7.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            super.onItemRangeChanged(i, i2, obj);
        }
    };
    private boolean axh = true;

    /* renamed from: com.kingroot.kinguser.alj$i */
    /* loaded from: classes.dex */
    public interface InterfaceC1137i {
        /* renamed from: c */
        void mo10068c(AppDownLoadModel appDownLoadModel);
    }

    /* renamed from: com.kingroot.kinguser.alj$j */
    /* loaded from: classes.dex */
    public interface InterfaceC1138j {
        /* renamed from: GP */
        void mo10089GP();
    }

    public alj(@NonNull Context context, @NonNull List<amm> list, List<AppBaseModel> list2) {
        this.axc = list;
        this.mContext = context;
        this.axb = list2;
        registerAdapterDataObserver(this.axg);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new C1126c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.apps_market_main_page_banner, viewGroup, false));
            case 2:
                return new C1128e(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_market_main_horizontal_item, viewGroup, false));
            case 3:
                return new C1139k(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.apps_market_main_page_title, viewGroup, false));
            case 4:
                return new C1140l(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_market_main_horizontal_topic_item, viewGroup, false));
            case 5:
                return new C1124a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_app_download_item, viewGroup, false));
            case 6:
                return new C1130f(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_load_more_view, viewGroup, false));
            case 7:
                return new C1131g(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_markt_main_menu, viewGroup, false));
            case 8:
                return new C1127d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_markt_main_new_game_bespoke, viewGroup, false));
            case 9:
                return new C1136h(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_markt_main_no_install_app, viewGroup, false));
            case 10:
                return new C1125b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_markt_main_no_install_app, viewGroup, false));
            default:
                return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v35, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v16, types: [com.kingroot.common.uilib.banner.BannerView] */
    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, final int i) {
        List<AppBaseModel> list;
        int i2 = 0;
        switch (getItemViewType(i)) {
            case 1:
                ArrayList arrayList = new ArrayList();
                List<AppBaseModel> m10440It = ((ami) this.axc.get(i)).m10440It();
                C1126c c1126c = (C1126c) viewHolder;
                if (C3942yy.m1351d(m10440It)) {
                    ImageView imageView = new ImageView(this.mContext);
                    if (!this.axh) {
                        imageView.setImageResource(R.drawable.default_banner_pic);
                    }
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    arrayList.add(imageView);
                    c1126c.axw.setData(arrayList);
                    return;
                }
                if (m10440It.size() == 2) {
                    list = new ArrayList<>();
                    list.addAll(m10440It);
                    list.addAll(m10440It);
                    c1126c.axw.setDoubleMode(true);
                } else {
                    c1126c.axw.setDoubleMode(false);
                    list = m10440It;
                }
                for (int i3 = 0; i3 < list.size(); i3++) {
                    arrayList.add(new ImageView(this.mContext));
                }
                c1126c.axw.setAutoPlayAble(arrayList.size() > 1);
                c1126c.axw.m13182a(arrayList, list, null);
                c1126c.axw.setDelegate(new BannerView.InterfaceC0570c() { // from class: com.kingroot.kinguser.alj.10
                    @Override // com.kingroot.common.uilib.banner.BannerView.InterfaceC0570c
                    /* renamed from: b */
                    public void mo10588b(BannerView bannerView, View view, Object obj, int i4) {
                        ady.m12308tK().mo1746bi(100589);
                        AppDetailActivity.m12647a(viewHolder.itemView.getContext(), (AppBaseModel) obj);
                    }
                });
                c1126c.axw.setAdapter(new BannerView.InterfaceC0568a<ImageView, AppBaseModel>() { // from class: com.kingroot.kinguser.alj.11
                    @Override // com.kingroot.common.uilib.banner.BannerView.InterfaceC0568a
                    /* renamed from: a  reason: avoid collision after fix types in other method */
                    public void mo10587a(BannerView bannerView, final ImageView imageView2, AppBaseModel appBaseModel, int i4) {
                        imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        apv.m9735LO().m9730a(appBaseModel.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alj.11.1
                            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                            /* renamed from: a */
                            public void mo4137a(String str, final Bitmap bitmap) {
                                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.11.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        imageView2.setImageBitmap(bitmap);
                                        imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    }
                                });
                            }

                            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                            /* renamed from: eE */
                            public void mo4136eE(String str) {
                            }
                        });
                    }
                });
                return;
            case 2:
                C1128e c1128e = (C1128e) viewHolder;
                amk amkVar = (amk) this.axc.get(i);
                c1128e.axy.m10606aw(amkVar.m10439It());
                c1128e.axy.notifyDataSetChanged();
                c1128e.ajP.setText(amkVar.getTitle());
                c1128e.axx.setOnClickListener(amkVar.m10438Iw());
                return;
            case 3:
                ((C1139k) viewHolder).ajP.setText(((amq) this.axc.get(i)).getTitle());
                return;
            case 4:
                ((C1140l) viewHolder).axK.m10576a((amr) this.axc.get(i));
                return;
            case 5:
                final C1124a c1124a = (C1124a) viewHolder;
                amd amdVar = (amd) this.axc.get(i);
                AppDownLoadModel m10443Io = amdVar.m10443Io();
                c1124a.afV.setText(m10443Io.appName);
                c1124a.awc.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(m10443Io.downloadCount)) + " " + anf.m10285bQ(m10443Io.fileSize));
                c1124a.awd.setText(m10443Io.describe);
                m10443Io.m4179a(c1124a.awe);
                m10443Io.m4181a(c1124a.awb);
                m10443Io.m4180a(c1124a.awh);
                if (m10443Io.isExpand) {
                    this.aoj.m10626b(m10443Io);
                } else {
                    c1124a.awh.getLayoutParams().height = 0;
                }
                c1124a.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        alj.this.m10601a(c1124a);
                    }
                });
                c1124a.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        alj.this.m10589j(viewHolder);
                    }
                });
                c1124a.awb.setImageResource(R.drawable.default_app);
                this.akC.put(c1124a.awb, m10443Io.iconUrl);
                apv.m9735LO().m9730a(m10443Io.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alj.9
                    @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                    /* renamed from: a */
                    public void mo4137a(String str, final Bitmap bitmap) {
                        if (TextUtils.equals(str, (CharSequence) alj.this.akC.get(c1124a.awb))) {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.9.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    c1124a.awb.setImageBitmap(bitmap);
                                }
                            });
                        }
                    }

                    @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                    /* renamed from: eE */
                    public void mo4136eE(String str) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.9.2
                            @Override // java.lang.Runnable
                            public void run() {
                                c1124a.awb.setImageResource(R.drawable.default_app);
                            }
                        });
                    }
                });
                c1124a.axs = amdVar;
                amdVar.azJ = new WeakReference<>(c1124a);
                and.m10320a(m10443Io, c1124a.awe, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), m10443Io.reportInfo);
                return;
            case 6:
                C1130f c1130f = (C1130f) viewHolder;
                if (i >= getItemCount() - 1 && this.axf && !this.f1477VM) {
                    anf.m10295a(c1130f.axD, c1130f.axC);
                    this.f1477VM = true;
                    if (this.axd != null) {
                        this.axd.mo10089GP();
                    }
                }
                if (this.axf) {
                    return;
                }
                anf.m10288b(c1130f.axD, c1130f.axC);
                return;
            case 7:
                C1131g c1131g = (C1131g) viewHolder;
                if (!akl.m11257AS().m11229Bn()) {
                    return;
                }
                c1131g.axI.setVisibility(8);
                return;
            case 8:
                C1127d c1127d = (C1127d) viewHolder;
                c1127d.axt.removeAllViews();
                for (AppBaseModel appBaseModel : this.axb) {
                    final ShapedImageView shapedImageView = (ShapedImageView) LayoutInflater.from(this.mContext).inflate(R.layout.app_maket_main_new_game_bespeak_icon, (ViewGroup) null);
                    shapedImageView.setLayoutParams(new ViewGroup.LayoutParams(abg.m12835r(40.0f), abg.m12835r(40.0f)));
                    c1127d.axt.addView(shapedImageView);
                    shapedImageView.setImageResource(R.drawable.default_app);
                    apv.m9735LO().m9730a(appBaseModel.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alj.12
                        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                        /* renamed from: a */
                        public void mo4137a(String str, final Bitmap bitmap) {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.12.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    shapedImageView.setImageBitmap(bitmap);
                                }
                            });
                        }

                        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                        /* renamed from: eE */
                        public void mo4136eE(String str) {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.12.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    shapedImageView.setImageResource(R.drawable.default_app);
                                }
                            });
                        }
                    });
                    c1127d.axu.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.13
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            ReserveActivity.m12613aK(alj.this.mContext);
                        }
                    });
                }
                return;
            case 9:
                C1136h c1136h = (C1136h) viewHolder;
                c1136h.axt.removeAllViews();
                for (AppBaseModel appBaseModel2 : ((amp) this.axc.get(i)).m10437It()) {
                    final ShapedImageView shapedImageView2 = (ShapedImageView) LayoutInflater.from(this.mContext).inflate(R.layout.app_maket_main_new_game_bespeak_icon, (ViewGroup) null);
                    shapedImageView2.setLayoutParams(new ViewGroup.LayoutParams(abg.m12835r(40.0f), abg.m12835r(40.0f)));
                    c1136h.axt.addView(shapedImageView2);
                    shapedImageView2.setImageResource(R.drawable.default_app);
                    apv.m9735LO().m9730a(appBaseModel2.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alj.4
                        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                        /* renamed from: a */
                        public void mo4137a(String str, final Bitmap bitmap) {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    shapedImageView2.setImageBitmap(bitmap);
                                }
                            });
                        }

                        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                        /* renamed from: eE */
                        public void mo4136eE(String str) {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.4.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    shapedImageView2.setImageResource(R.drawable.default_app);
                                }
                            });
                        }
                    });
                }
                c1136h.axu.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ady.m12308tK().mo1746bi(100714);
                        AppDownloadManagerActivity.m12643aK(alj.this.mContext);
                        alj.this.axc.remove(i);
                        alj.this.notifyItemRemoved(i);
                    }
                });
                c1136h.axv.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ady.m12308tK().mo1746bi(100713);
                        AppDownloadManagerActivity.m12642aM(alj.this.mContext);
                        alj.this.axc.remove(i);
                        alj.this.notifyItemRemoved(i);
                    }
                });
                return;
            case 10:
                C1125b c1125b = (C1125b) viewHolder;
                c1125b.axt.removeAllViews();
                List<AvailUpdateInfo> m10441Iq = ((amh) this.axc.get(i)).m10441Iq();
                c1125b.axv.setProgressText(C3953zi.m1311pr().getString(R.string.apps_market_app_update_notify_btn));
                c1125b.ajP.setText(C3953zi.m1311pr().getString(R.string.apps_market_app_update_card_title));
                c1125b.amj.setVisibility(0);
                c1125b.amj.setText(String.format(C3953zi.m1311pr().getString(R.string.apps_market_app_update_card_app_count), Integer.valueOf(m10441Iq.size())));
                for (AvailUpdateInfo availUpdateInfo : m10441Iq) {
                    if (i2 != 3) {
                        final ShapedImageView shapedImageView3 = (ShapedImageView) LayoutInflater.from(this.mContext).inflate(R.layout.app_maket_main_new_game_bespeak_icon, (ViewGroup) null);
                        shapedImageView3.setLayoutParams(new ViewGroup.LayoutParams(abg.m12835r(40.0f), abg.m12835r(40.0f)));
                        c1125b.axt.addView(shapedImageView3);
                        shapedImageView3.setImageResource(R.drawable.default_app);
                        apv.m9735LO().m9730a(availUpdateInfo.remoteIconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.alj.14
                            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                            /* renamed from: a */
                            public void mo4137a(String str, final Bitmap bitmap) {
                                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.14.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        shapedImageView3.setImageBitmap(bitmap);
                                    }
                                });
                            }

                            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                            /* renamed from: eE */
                            public void mo4136eE(String str) {
                                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.alj.14.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        shapedImageView3.setImageResource(R.drawable.default_app);
                                    }
                                });
                            }
                        });
                        i2++;
                    } else {
                        c1125b.axu.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                Intent intent = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
                                intent.putExtra("key_click_content_from_app_update_notification", true);
                                alj.this.mContext.startActivity(intent);
                                adm.m12480st().m12481sO();
                                akl.m11257AS().m11211aF(System.currentTimeMillis());
                                ady.m12308tK().mo1746bi(100723);
                            }
                        });
                        c1125b.axv.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.3
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                Intent intent = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
                                intent.putExtra("key_click_btn_from_app_update_notification", true);
                                alj.this.mContext.startActivity(intent);
                                adm.m12480st().m12481sO();
                                ady.m12308tK().mo1746bi(100724);
                            }
                        });
                        return;
                    }
                }
                c1125b.axu.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
                        intent.putExtra("key_click_content_from_app_update_notification", true);
                        alj.this.mContext.startActivity(intent);
                        adm.m12480st().m12481sO();
                        akl.m11257AS().m11211aF(System.currentTimeMillis());
                        ady.m12308tK().mo1746bi(100723);
                    }
                });
                c1125b.axv.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
                        intent.putExtra("key_click_btn_from_app_update_notification", true);
                        alj.this.mContext.startActivity(intent);
                        adm.m12480st().m12481sO();
                        ady.m12308tK().mo1746bi(100724);
                    }
                });
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m10601a(C1124a c1124a) {
        if (this.axe != null) {
            this.axe.mo10068c(((amd) this.axc.get(c1124a.getAdapterPosition())).m10443Io());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m10589j(RecyclerView.ViewHolder viewHolder) {
        amm ammVar = this.axc.get(viewHolder.getAdapterPosition());
        if (ammVar instanceof amd) {
            AppDetailActivity.m12647a(viewHolder.itemView.getContext(), ((amd) ammVar).azI);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.axc.get(i).getType();
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.axc.size();
    }

    /* renamed from: a */
    public void m10599a(InterfaceC1138j interfaceC1138j) {
        this.axd = interfaceC1138j;
    }

    /* renamed from: a */
    public void m10600a(InterfaceC1137i interfaceC1137i) {
        this.axe = interfaceC1137i;
    }

    /* renamed from: cw */
    public void m10592cw(boolean z) {
        this.axf = z;
    }

    @UiThread
    /* renamed from: fg */
    public void m10590fg(int i) {
        amm ammVar = this.axc.get(i);
        if (ammVar instanceof amd) {
            amd amdVar = (amd) ammVar;
            if (amdVar.azJ != null) {
                RecyclerView.ViewHolder viewHolder = amdVar.azJ.get();
                if ((viewHolder instanceof C1124a) && ((C1124a) viewHolder).axs == amdVar) {
                    and.m10320a(amdVar.azI, ((C1124a) viewHolder).awe, C3953zi.m1311pr().getString(R.string.app_download_state_btn));
                }
            }
        }
    }

    /* renamed from: cx */
    public void m10591cx(boolean z) {
        this.axh = z;
    }

    /* renamed from: com.kingroot.kinguser.alj$c */
    /* loaded from: classes.dex */
    class C1126c extends RecyclerView.ViewHolder {
        public BannerView axw;

        public C1126c(View view) {
            super(view);
            if (view instanceof BannerView) {
                this.axw = (BannerView) view;
                this.axw.setAutoPlayInterval(5000);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$e */
    /* loaded from: classes.dex */
    class C1128e extends RecyclerView.ViewHolder {
        private final TextView ajP;
        private final View axx;
        private ali axy;
        private final RecyclerView axz;

        public C1128e(View view) {
            super(view);
            this.axz = (RecyclerView) view.findViewById(R.id.horizontal_rv);
            this.axx = view.findViewById(R.id.more);
            this.ajP = (TextView) view.findViewById(R.id.item_title);
            this.axy = new ali(alj.this.mContext, this.axz);
            this.axz.setAdapter(this.axy);
            this.axz.setNestedScrollingEnabled(true);
            this.axz.setHasFixedSize(true);
            this.axz.setLayoutManager(new FixLinearLayoutManager(view.getContext(), 0, false));
            this.axz.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.alj.e.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    C1128e.this.axz.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    C1128e.this.axz.addItemDecoration(new ani());
                }
            });
            C3472qk.m2595a(this.axz, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.alj$a */
    /* loaded from: classes.dex */
    public class C1124a extends RecyclerView.ViewHolder {
        public TextView afV;
        public ImageView awb;
        public TextView awc;
        public TextView awd;
        public TextRoundCornerProgressBar awe;
        public LinearLayout awh;
        public amd axs;

        public C1124a(View view) {
            super(view);
            this.afV = (TextView) view.findViewById(R.id.item_title);
            this.awc = (TextView) view.findViewById(R.id.item_description1);
            this.awd = (TextView) view.findViewById(R.id.item_description2);
            this.awb = (ImageView) view.findViewById(R.id.item_icon);
            this.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
            this.awh = (LinearLayout) view.findViewById(R.id.recommend_layout);
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$l */
    /* loaded from: classes.dex */
    class C1140l extends RecyclerView.ViewHolder {
        private alk axK;
        private final RecyclerView axz;

        public C1140l(View view) {
            super(view);
            this.axz = (RecyclerView) view.findViewById(R.id.horizontal_rv);
            this.axz.addItemDecoration(new anj());
            this.axK = new alk(alj.this.mContext, this.axz);
            this.axz.setAdapter(this.axK);
            this.axz.setNestedScrollingEnabled(false);
            this.axz.setHasFixedSize(true);
            this.axz.setLayoutManager(new FixLinearLayoutManager(view.getContext(), 0, false));
            C3472qk.m2595a(this.axz, 1);
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$k */
    /* loaded from: classes.dex */
    class C1139k extends RecyclerView.ViewHolder {
        public TextView ajP;

        public C1139k(View view) {
            super(view);
            this.ajP = (TextView) view;
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$f */
    /* loaded from: classes.dex */
    class C1130f extends RecyclerView.ViewHolder {
        private final TextView axC;
        public ProgressBar axD;

        public C1130f(View view) {
            super(view);
            this.axD = (ProgressBar) view.findViewById(R.id.progress);
            this.axC = (TextView) view.findViewById(R.id.app_download_text);
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$g */
    /* loaded from: classes.dex */
    class C1131g extends RecyclerView.ViewHolder {
        private View axE;
        private View axF;
        private View axG;
        private View axH;
        private View axI;

        public C1131g(View view) {
            super(view);
            this.axE = view.findViewById(R.id.game_bespoke);
            this.axF = view.findViewById(R.id.rank);
            this.axG = view.findViewById(R.id.necessary);
            this.axH = view.findViewById(R.id.sort);
            this.axI = view.findViewById(R.id.new_tag);
            this.axE.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.g.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    C1131g.this.axI.setVisibility(8);
                    akl.m11257AS().m11230Bm();
                    ReserveActivity.m12613aK(alj.this.mContext);
                }
            });
            this.axF.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.g.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AppDownloadActivity.m12644c(alj.this.mContext, C3953zi.m1311pr().getString(R.string.apps_market_main_topic_title_rank_board), 5012414);
                }
            });
            this.axG.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.g.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AppDownloadActivity.m12644c(alj.this.mContext, C3953zi.m1311pr().getString(R.string.apps_market_main_topic_title_necessary_well_chosen), 5012407);
                }
            });
            this.axH.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alj.g.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AppsMarketCategoryActivity.m12638aL(alj.this.mContext);
                }
            });
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$d */
    /* loaded from: classes.dex */
    class C1127d extends RecyclerView.ViewHolder {
        ViewGroup axt;
        View axu;

        public C1127d(View view) {
            super(view);
            this.axt = (ViewGroup) view.findViewById(R.id.game_icon_container);
            this.axu = view.findViewById(R.id.content_layout);
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$h */
    /* loaded from: classes.dex */
    class C1136h extends RecyclerView.ViewHolder {
        ViewGroup axt;
        View axu;
        TextRoundCornerProgressBar axv;

        public C1136h(View view) {
            super(view);
            this.axt = (ViewGroup) view.findViewById(R.id.icon_container);
            this.axu = view.findViewById(R.id.content_layout);
            this.axv = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
        }
    }

    /* renamed from: com.kingroot.kinguser.alj$b */
    /* loaded from: classes.dex */
    class C1125b extends RecyclerView.ViewHolder {
        TextView ajP;
        TextView amj;
        ViewGroup axt;
        View axu;
        TextRoundCornerProgressBar axv;

        public C1125b(View view) {
            super(view);
            this.axt = (ViewGroup) view.findViewById(R.id.icon_container);
            this.axu = view.findViewById(R.id.content_layout);
            this.axv = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
            this.ajP = (TextView) view.findViewById(R.id.title);
            this.amj = (TextView) view.findViewById(R.id.app_count);
        }
    }

    /* renamed from: a */
    public void m10602a(alf alfVar) {
        this.aoj = alfVar;
    }
}
