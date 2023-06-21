package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppReserveModel;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguser.webview.WebViewActivity;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class atp extends BaseAdapter {
    private List<ame> aOt;
    private View aPI;
    private int aPJ;
    private String aPK;
    public IAppDownloadListener.Stub akA;
    public IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private Context mContext;
    private Handler mHandler;
    private HashMap<ImageView, String> akC = new HashMap<>();
    private apv.InterfaceC1441b akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.atp.4
        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(final String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.atp.4.1
                @Override // java.lang.Runnable
                public void run() {
                    for (ImageView imageView : atp.this.akC.keySet()) {
                        if (str.equals(atp.this.akC.get(imageView))) {
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

    public atp(Context context, String str, List<ame> list, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2, Handler handler) {
        this.aPJ = 0;
        this.aPK = "";
        this.mContext = context;
        this.aPK = str;
        this.aOt = list;
        this.aPJ = list.size();
        this.akA = stub;
        this.akB = stub2;
        this.mHandler = handler;
    }

    /* renamed from: Pv */
    public View m9153Pv() {
        return this.aPI;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.aOt == null) {
            return 0;
        }
        return this.aOt.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.aOt == null) {
            return null;
        }
        return this.aOt.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (this.aOt == null) {
            return 1;
        }
        return this.aOt.get(i).getType();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 7;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1583c c1583c;
        C1583c c1583c2;
        C1583c c1583c3;
        ame ameVar = this.aOt.get(i);
        int itemViewType = getItemViewType(i);
        switch (itemViewType) {
            case 1:
                if (ameVar instanceof AppDownLoadModel) {
                    if (this.aPJ > i) {
                        this.aPJ = i;
                    }
                    final AppDownLoadModel appDownLoadModel = (AppDownLoadModel) ameVar;
                    if (view == null || ((C1583c) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_gamebox_app_download_item, viewGroup, false);
                        C1583c c1583c4 = new C1583c();
                        c1583c4.type = 1;
                        c1583c4.afV = (TextView) view.findViewById(R.id.item_title);
                        c1583c4.awc = (TextView) view.findViewById(R.id.item_description1);
                        c1583c4.awd = (TextView) view.findViewById(R.id.item_description2);
                        c1583c4.awb = (ImageView) view.findViewById(R.id.item_icon);
                        c1583c4.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
                        view.setTag(c1583c4);
                        c1583c2 = c1583c4;
                    } else {
                        c1583c2 = (C1583c) view.getTag();
                    }
                    if (c1583c2 != null) {
                        c1583c2.afV.setText(appDownLoadModel.appName);
                        c1583c2.awc.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appDownLoadModel.downloadCount)) + " " + anf.m10285bQ(appDownLoadModel.fileSize));
                        c1583c2.awd.setText(appDownLoadModel.describe);
                        c1583c2.awe.setTag(c1583c2.awb);
                        appDownLoadModel.m4179a(c1583c2.awe);
                        appDownLoadModel.m4181a(c1583c2.awb);
                        if (!appDownLoadModel.iconUrl.equals(c1583c2.awb.getTag())) {
                            this.akC.put(c1583c2.awb, appDownLoadModel.iconUrl);
                            c1583c2.awb.setImageResource(R.drawable.default_app);
                            apv.m9735LO().m9730a(appDownLoadModel.iconUrl, this.akE);
                        }
                        c1583c2.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atp.3
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                and.m10326a(atp.this.mContext, appDownLoadModel, atp.this.akA, atp.this.akB, atp.this.akD);
                                ady.m12308tK().m12315eM(appDownLoadModel.pkgName);
                            }
                        });
                        and.m10319a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), this.akA, this.akB);
                    }
                    this.mHandler.obtainMessage(109, appDownLoadModel.jumptype, -1, appDownLoadModel.pkgName).sendToTarget();
                    ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), appDownLoadModel.reportInfo);
                    return view;
                }
                return view;
            case 2:
            case 3:
            default:
                return view;
            case 4:
                if (ameVar instanceof C1582b) {
                    C1582b c1582b = (C1582b) ameVar;
                    if (c1582b.aPP != null) {
                        this.aPI = c1582b.aPP;
                        return c1582b.aPP;
                    }
                    return view;
                }
                return view;
            case 5:
                if (ameVar instanceof C1581a) {
                    C1581a c1581a = (C1581a) ameVar;
                    if (view == null || ((C1583c) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_game_recommend_title, viewGroup, false);
                        C1583c c1583c5 = new C1583c();
                        c1583c5.type = 5;
                        c1583c5.ajP = (TextView) view.findViewById(R.id.title);
                        c1583c5.aPS = view.findViewById(R.id.more);
                        view.setTag(c1583c5);
                        c1583c = c1583c5;
                    } else {
                        c1583c = (C1583c) view.getTag();
                    }
                    c1583c.ajP.setText(c1581a.title);
                    if (c1581a.aPN && c1581a.aPO != null) {
                        c1583c.aPS.setVisibility(0);
                        c1583c.aPS.setOnClickListener(c1581a.aPO);
                        return view;
                    }
                    return view;
                }
                return view;
            case 6:
                if (ameVar instanceof AppReserveModel) {
                    final AppReserveModel appReserveModel = (AppReserveModel) ameVar;
                    if (view == null || ((C1583c) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_app_reserve_item, viewGroup, false);
                        C1583c c1583c6 = new C1583c();
                        c1583c6.type = 6;
                        c1583c6.afV = (TextView) view.findViewById(R.id.item_title);
                        c1583c6.awc = (TextView) view.findViewById(R.id.item_description1);
                        c1583c6.awd = (TextView) view.findViewById(R.id.item_description2);
                        c1583c6.awb = (ImageView) view.findViewById(R.id.item_icon);
                        c1583c6.aPQ = (ImageView) view.findViewById(R.id.bottom_pic1);
                        c1583c6.aPR = (ImageView) view.findViewById(R.id.bottom_pic2);
                        c1583c6.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
                        view.findViewById(R.id.divider).setVisibility(8);
                        c1583c6.afV.setTextColor(C3953zi.m1311pr().getColor(R.color.gamebox_title_text));
                        c1583c6.awc.setTextColor(C3953zi.m1311pr().getColor(R.color.gamebox_description_text));
                        c1583c6.awd.setTextColor(C3953zi.m1311pr().getColor(R.color.gamebox_description_text));
                        view.setTag(c1583c6);
                        view.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atp.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                WebViewActivity.m1566g(atp.this.mContext, appReserveModel.reservationEntity.reservationUrl, appReserveModel.appName);
                            }
                        });
                        c1583c3 = c1583c6;
                    } else {
                        c1583c3 = (C1583c) view.getTag();
                    }
                    if (appReserveModel != null) {
                        c1583c3.afV.setText(appReserveModel.appName);
                        c1583c3.awc.setText(C3953zi.m1311pr().getString(R.string.app_reserve_count, anf.m10286bP(appReserveModel.reservationEntity.reservationCount)) + " " + appReserveModel.reservationEntity.publicDesc);
                        c1583c3.awd.setText(appReserveModel.describe);
                        c1583c3.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atp.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                and.m10314b(atp.this.mContext, appReserveModel, atp.this.akA, atp.this.akB, atp.this.akD);
                            }
                        });
                        c1583c3.awe.setTag(c1583c3.awb);
                        appReserveModel.m4179a(c1583c3.awe);
                        appReserveModel.m4181a(c1583c3.awb);
                        if (!appReserveModel.iconUrl.equals(c1583c3.awb.getTag())) {
                            this.akC.put(c1583c3.awb, appReserveModel.iconUrl);
                            c1583c3.awb.setImageResource(R.drawable.default_app);
                            apv.m9735LO().m9730a(appReserveModel.iconUrl, this.akE);
                        }
                        String str = "";
                        String str2 = "";
                        if (appReserveModel.bottomPics.size() >= 2) {
                            str = appReserveModel.bottomPics.get(0).miniUrl;
                            str2 = appReserveModel.bottomPics.get(1).miniUrl;
                        }
                        if (!TextUtils.isEmpty(str) && !str.equals(c1583c3.aPQ.getTag())) {
                            this.akC.put(c1583c3.aPQ, str);
                            apv.m9735LO().m9730a(str, this.akE);
                        }
                        if (!TextUtils.isEmpty(str2) && !str2.equals(c1583c3.aPR.getTag())) {
                            this.akC.put(c1583c3.aPR, str2);
                            apv.m9735LO().m9730a(str2, this.akE);
                        }
                        and.m10319a(appReserveModel, appReserveModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), this.akA, this.akB);
                        return view;
                    }
                    return view;
                }
                return view;
        }
    }

    /* renamed from: com.kingroot.kinguser.atp$c */
    /* loaded from: classes.dex */
    public class C1583c {
        public ImageView aPQ;
        public ImageView aPR;
        public View aPS;
        public TextView afV;
        public TextView ajP;
        public ImageView awb;
        public TextView awc;
        public TextView awd;
        public TextRoundCornerProgressBar awe;
        public int type;

        public C1583c() {
        }
    }

    /* renamed from: com.kingroot.kinguser.atp$b */
    /* loaded from: classes.dex */
    public static class C1582b implements ame {
        public View aPP;

        @Override // com.kingroot.kinguser.ame
        public int getType() {
            return 4;
        }
    }

    /* renamed from: com.kingroot.kinguser.atp$a */
    /* loaded from: classes.dex */
    public static class C1581a implements ame {
        public boolean aPN = false;
        public View.OnClickListener aPO = null;
        public String title;

        @Override // com.kingroot.kinguser.ame
        public int getType() {
            return 5;
        }
    }

    /* renamed from: a */
    public void m9152a(and.C1258a c1258a) {
        this.akD = c1258a;
    }
}
