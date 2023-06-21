package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingcore.uilib.ExpandableTextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppReserveModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class ald extends AbstractC3856wr {
    private List<ame> ahM;
    public IAppDownloadListener.Stub akA;
    public IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private alf aoj;
    private Context mContext;
    private HashMap<ImageView, String> akC = new HashMap<>();
    private apv.InterfaceC1441b akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.ald.8
        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(final String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.ald.8.1
                @Override // java.lang.Runnable
                public void run() {
                    for (ImageView imageView : ald.this.akC.keySet()) {
                        if (str.equals(ald.this.akC.get(imageView))) {
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

    /* renamed from: com.kingroot.kinguser.ald$a */
    /* loaded from: classes.dex */
    public static class C1067a {
        public TextView afV;
        public ImageView alk;
        public ImageView awb;
        public TextView awc;
        public TextView awd;
        public TextRoundCornerProgressBar awe;
        public ImageView awf;
        public ImageView awg;
        public LinearLayout awh;
        public TextView awi;
        public TextView awj;
        public ExpandableTextView awk;
        public TextView awl;
        public int type;
    }

    public ald(Context context, List<ame> list, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2) {
        this.mContext = context;
        this.ahM = list;
        this.akA = stub;
        this.akB = stub2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.size();
    }

    @Override // android.widget.Adapter
    /* renamed from: fd */
    public ame getItem(int i) {
        return this.ahM.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.get(i).getType();
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        final C1067a c1067a;
        C1067a c1067a2;
        C1067a c1067a3;
        ame ameVar = this.ahM.get(i);
        int itemViewType = getItemViewType(i);
        switch (itemViewType) {
            case 1:
                if (ameVar instanceof AppDownLoadModel) {
                    final AppDownLoadModel appDownLoadModel = (AppDownLoadModel) ameVar;
                    if (view == null || ((C1067a) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_app_download_item, viewGroup, false);
                        C1067a c1067a4 = new C1067a();
                        c1067a4.type = itemViewType;
                        c1067a4.afV = (TextView) view.findViewById(R.id.item_title);
                        c1067a4.awc = (TextView) view.findViewById(R.id.item_description1);
                        c1067a4.awd = (TextView) view.findViewById(R.id.item_description2);
                        c1067a4.awb = (ImageView) view.findViewById(R.id.item_icon);
                        c1067a4.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
                        c1067a4.awh = (LinearLayout) view.findViewById(R.id.recommend_layout);
                        view.setTag(c1067a4);
                        c1067a3 = c1067a4;
                    } else {
                        c1067a3 = (C1067a) view.getTag();
                    }
                    if (c1067a3 != null) {
                        c1067a3.afV.setText(appDownLoadModel.appName);
                        c1067a3.awc.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appDownLoadModel.downloadCount)) + " " + anf.m10285bQ(appDownLoadModel.fileSize));
                        c1067a3.awd.setText(appDownLoadModel.describe);
                        c1067a3.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ald.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                and.m10326a(ald.this.mContext, appDownLoadModel, ald.this.akA, ald.this.akB, ald.this.akD);
                            }
                        });
                        c1067a3.awe.setTag(c1067a3.awb);
                        appDownLoadModel.m4179a(c1067a3.awe);
                        appDownLoadModel.m4181a(c1067a3.awb);
                        appDownLoadModel.m4180a(c1067a3.awh);
                        if (appDownLoadModel.isExpand) {
                            this.aoj.m10626b(appDownLoadModel);
                        } else {
                            c1067a3.awh.getLayoutParams().height = 0;
                        }
                        if (!appDownLoadModel.iconUrl.equals(c1067a3.awb.getTag())) {
                            this.akC.put(c1067a3.awb, appDownLoadModel.iconUrl);
                            c1067a3.awb.setImageResource(R.drawable.default_app);
                            apv.m9735LO().m9730a(appDownLoadModel.iconUrl, this.akE);
                        }
                        and.m10319a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), this.akA, this.akB);
                    }
                    ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), ((AppDownLoadModel) ameVar).reportInfo);
                    return view;
                }
                return view;
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            default:
                return view;
            case 6:
                if (ameVar instanceof AppReserveModel) {
                    final AppReserveModel appReserveModel = (AppReserveModel) ameVar;
                    if (view == null || ((C1067a) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_app_reserve_item, viewGroup, false);
                        c1067a2 = new C1067a();
                        c1067a2.type = itemViewType;
                        c1067a2.afV = (TextView) view.findViewById(R.id.item_title);
                        c1067a2.awc = (TextView) view.findViewById(R.id.item_description1);
                        c1067a2.awd = (TextView) view.findViewById(R.id.item_description2);
                        c1067a2.awb = (ImageView) view.findViewById(R.id.item_icon);
                        c1067a2.awf = (ImageView) view.findViewById(R.id.bottom_pic1);
                        c1067a2.awg = (ImageView) view.findViewById(R.id.bottom_pic2);
                        c1067a2.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
                        view.setTag(c1067a2);
                    } else {
                        c1067a2 = (C1067a) view.getTag();
                    }
                    if (c1067a2 != null) {
                        c1067a2.afV.setText(appReserveModel.appName);
                        c1067a2.awc.setText(C3953zi.m1311pr().getString(R.string.app_reserve_count, anf.m10286bP(appReserveModel.reservationEntity.reservationCount)) + " " + appReserveModel.reservationEntity.publicDesc);
                        c1067a2.awd.setText(appReserveModel.describe);
                        c1067a2.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ald.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                and.m10314b(ald.this.mContext, appReserveModel, ald.this.akA, ald.this.akB, ald.this.akD);
                            }
                        });
                        c1067a2.awe.setTag(c1067a2.awb);
                        appReserveModel.m4179a(c1067a2.awe);
                        appReserveModel.m4181a(c1067a2.awb);
                        if (!appReserveModel.iconUrl.equals(c1067a2.awb.getTag())) {
                            this.akC.put(c1067a2.awb, appReserveModel.iconUrl);
                            c1067a2.awb.setImageResource(R.drawable.default_app);
                            apv.m9735LO().m9730a(appReserveModel.iconUrl, this.akE);
                            if (!C3942yy.m1351d(appReserveModel.bottomPics) && appReserveModel.bottomPics.size() >= 2) {
                                this.akC.put(c1067a2.awf, appReserveModel.bottomPics.get(0).miniUrl);
                                this.akC.put(c1067a2.awg, appReserveModel.bottomPics.get(1).miniUrl);
                                apv.m9735LO().m9730a(appReserveModel.bottomPics.get(0).miniUrl, this.akE);
                                apv.m9735LO().m9730a(appReserveModel.bottomPics.get(1).miniUrl, this.akE);
                            }
                        }
                        and.m10319a(appReserveModel, appReserveModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), this.akA, this.akB);
                    }
                    ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), ((AppDownLoadModel) ameVar).reportInfo);
                    return view;
                }
                return view;
            case 8:
                if (ameVar instanceof amf) {
                    if (view == null || ((C1067a) view.getTag()).type != itemViewType) {
                        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.layout_phone_logo, viewGroup, false);
                        ((ImageView) inflate.findViewById(R.id.brand_logo)).setImageResource(R.drawable.brand_00 + bgv.bgg);
                        C1067a c1067a5 = new C1067a();
                        c1067a5.type = itemViewType;
                        inflate.setTag(c1067a5);
                        return inflate;
                    }
                    return view;
                }
                return view;
            case 9:
                if (ameVar instanceof AppUpdateModel) {
                    final AppUpdateModel appUpdateModel = (AppUpdateModel) ameVar;
                    if (view == null || ((C1067a) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_app_update_recycle_item, viewGroup, false);
                        c1067a = new C1067a();
                        c1067a.type = itemViewType;
                        c1067a.afV = (TextView) view.findViewById(R.id.item_title);
                        c1067a.awi = (TextView) view.findViewById(R.id.item_origin_size);
                        c1067a.awj = (TextView) view.findViewById(R.id.item_diff_szie);
                        c1067a.awk = (ExpandableTextView) view.findViewById(R.id.item_description2);
                        c1067a.alk = (ImageView) view.findViewById(R.id.expand_btn);
                        c1067a.awb = (ImageView) view.findViewById(R.id.item_icon);
                        c1067a.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
                        c1067a.awl = (TextView) view.findViewById(R.id.ignore_button_text);
                        view.setTag(c1067a);
                    } else {
                        c1067a = (C1067a) view.getTag();
                    }
                    if (c1067a != null) {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        c1067a.afV.setText(appUpdateModel.appName);
                        c1067a.awl.setText(m1311pr.getString(R.string.ignore_update_button_notify_text));
                        c1067a.awl.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ald.3
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                ald.this.akD.mo10000fF(i);
                            }
                        });
                        StringBuilder sb = new StringBuilder();
                        if (appUpdateModel.remoteDiffPkgSize > 0) {
                            c1067a.awi.setPaintFlags(c1067a.awi.getPaintFlags() | 16);
                            sb.append(anf.m10285bQ(appUpdateModel.remoteDiffPkgSize));
                        } else {
                            c1067a.awi.setPaintFlags(c1067a.awi.getPaintFlags() & (-17));
                        }
                        c1067a.awi.setText(anf.m10285bQ(appUpdateModel.remoteSize));
                        sb.append("  ");
                        sb.append(appUpdateModel.oldVersion);
                        sb.append(m1311pr.getString(R.string.old_to_new));
                        sb.append(appUpdateModel.remoteVersion);
                        c1067a.awj.setText(sb);
                        final String str = m1311pr.getString(R.string.new_version_feature) + appUpdateModel.remoteNewFeature;
                        final String replaceAll = str.replaceAll("\\n", "");
                        c1067a.awk.setText(replaceAll);
                        c1067a.awk.setAnimationDuration(200L);
                        c1067a.alk.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ald.4
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                c1067a.awk.m13586gF();
                            }
                        });
                        c1067a.awk.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ald.5
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (!c1067a.awk.m13583gI()) {
                                    c1067a.awk.m13585gG();
                                }
                            }
                        });
                        c1067a.awk.setExpandListener(new ExpandableTextView.InterfaceC0453a() { // from class: com.kingroot.kinguser.ald.6
                            @Override // com.kingcore.uilib.ExpandableTextView.InterfaceC0453a
                            /* renamed from: b */
                            public void mo10225b(ExpandableTextView expandableTextView) {
                                if (!TextUtils.isEmpty(str)) {
                                    c1067a.awk.setText(str);
                                }
                                c1067a.awl.setVisibility(0);
                                appUpdateModel.isExpand = true;
                                bhk.m6994b(c1067a.alk, 0.0f, 180.0f, 200L);
                            }

                            @Override // com.kingcore.uilib.ExpandableTextView.InterfaceC0453a
                            /* renamed from: c */
                            public void mo10224c(ExpandableTextView expandableTextView) {
                                if (!TextUtils.isEmpty(replaceAll)) {
                                    c1067a.awk.setText(replaceAll);
                                }
                                c1067a.awl.setVisibility(8);
                                appUpdateModel.isExpand = false;
                                bhk.m6994b(c1067a.alk, 180.0f, 0.0f, 200L);
                            }
                        });
                        if (appUpdateModel.isExpand) {
                            c1067a.awk.m13585gG();
                        } else {
                            c1067a.awk.m13584gH();
                        }
                        c1067a.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ald.7
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                and.m10326a(ald.this.mContext, appUpdateModel, ald.this.akA, ald.this.akB, ald.this.akD);
                            }
                        });
                        c1067a.awe.setTag(c1067a.awb);
                        appUpdateModel.m4179a(c1067a.awe);
                        appUpdateModel.m4181a(c1067a.awb);
                        if (!appUpdateModel.iconUrl.equals(c1067a.awb.getTag())) {
                            this.akC.put(c1067a.awb, appUpdateModel.iconUrl);
                            c1067a.awb.setImageResource(R.drawable.default_app);
                            apv.m9735LO().m9730a(appUpdateModel.iconUrl, this.akE);
                        }
                        and.m10319a(appUpdateModel, appUpdateModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), this.akA, this.akB);
                        return view;
                    }
                    return view;
                }
                return view;
        }
    }

    /* renamed from: a */
    public void m10639a(and.C1258a c1258a) {
        this.akD = c1258a;
    }

    /* renamed from: a */
    public void m10640a(alf alfVar) {
        this.aoj = alfVar;
    }
}
