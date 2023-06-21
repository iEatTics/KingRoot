package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class asr {
    public String aNq;
    public PackageInfo aNr;
    public AppDownLoadModel aNs;
    public boolean aNt;
    public boolean aha;
    public String mName;
    public int mType;
    public View mView;

    public asr(String str, PackageInfo packageInfo) {
        boolean z = false;
        this.mType = -1;
        this.mView = null;
        this.aNt = false;
        this.mType = 2;
        this.aNr = packageInfo;
        this.mName = str;
        if (this.aNr != null && (this.aNr.applicationInfo.flags & 1) != 0) {
            z = true;
        }
        this.aha = z;
    }

    public asr(View view) {
        this.mType = -1;
        this.mView = null;
        this.aNt = false;
        this.mType = 1;
        this.mView = view;
    }

    public asr(String str) {
        this.mType = -1;
        this.mView = null;
        this.aNt = false;
        this.mType = 0;
        this.aNq = str;
    }

    public asr(AppDownLoadModel appDownLoadModel) {
        this.mType = -1;
        this.mView = null;
        this.aNt = false;
        this.mType = 3;
        this.aNs = appDownLoadModel;
    }

    /* renamed from: com.kingroot.kinguser.asr$a */
    /* loaded from: classes.dex */
    public static class C1494a extends AbstractC3856wr {
        private String aGj;
        private View.OnClickListener ahN;
        private IAppDownloadListener.Stub akA;
        private IAppInstallListener.Stub akB;
        private and.C1258a akD;
        protected Context mContext;
        protected List<asr> ahM = new ArrayList(0);
        private HashMap<ImageView, String> akC = new HashMap<>();
        private apv.InterfaceC1441b akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.asr.a.1
            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: a */
            public void mo4137a(final String str, final Bitmap bitmap) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.asr.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (ImageView imageView : C1494a.this.akC.keySet()) {
                            if (str.equals(C1494a.this.akC.get(imageView))) {
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

        public C1494a(Context context, String str, View.OnClickListener onClickListener, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2, and.C1258a c1258a) {
            this.aGj = "";
            this.mContext = context;
            this.aGj = str;
            this.ahN = onClickListener;
            this.akA = stub;
            this.akB = stub2;
            this.akD = c1258a;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.ahM == null) {
                return 0;
            }
            return this.ahM.size();
        }

        @Override // android.widget.Adapter
        /* renamed from: gy */
        public asr getItem(int i) {
            return this.ahM.get(i);
        }

        public void setData(List<asr> list) {
            this.ahM = list;
        }

        /* renamed from: Op */
        public List<asr> m9385Op() {
            return this.ahM;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return this.ahM.get(i).mType;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C1500d c1500d;
            C1501e c1501e;
            asr item = getItem(i);
            int itemViewType = getItemViewType(i);
            switch (itemViewType) {
                case 0:
                    if (view == null || ((C1499c) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_gamebox_add_page_title, (ViewGroup) null);
                        C1501e c1501e2 = new C1501e();
                        c1501e2.aFj = (TextView) view.findViewById(R.id.list_view_title);
                        c1501e2.type = 0;
                        view.setTag(c1501e2);
                        c1501e = c1501e2;
                    } else {
                        c1501e = (C1501e) view.getTag();
                    }
                    c1501e.aFj.setText(item.aNq);
                    return view;
                case 1:
                    if (item.mView != null) {
                        return item.mView;
                    }
                    return view;
                case 2:
                    if (view == null || ((C1499c) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.page_gamebox_add_list_item, (ViewGroup) null);
                        C1498b c1498b = new C1498b(view, this.ahN);
                        c1498b.type = 2;
                        view.setTag(c1498b);
                    }
                    ((C1498b) view.getTag()).m9378a(getItem(i), getImageFetcher());
                    return view;
                case 3:
                    final AppDownLoadModel appDownLoadModel = item.aNs;
                    if (view == null || ((C1499c) view.getTag()).type != itemViewType) {
                        view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_app_download_item, viewGroup, false);
                        C1500d c1500d2 = new C1500d();
                        c1500d2.type = 3;
                        c1500d2.afV = (TextView) view.findViewById(R.id.item_title);
                        c1500d2.awc = (TextView) view.findViewById(R.id.item_description1);
                        c1500d2.awd = (TextView) view.findViewById(R.id.item_description2);
                        view.findViewById(R.id.item_description2).setVisibility(8);
                        c1500d2.awb = (ImageView) view.findViewById(R.id.item_icon);
                        c1500d2.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
                        view.setTag(c1500d2);
                        c1500d = c1500d2;
                    } else {
                        c1500d = (C1500d) view.getTag();
                    }
                    if (c1500d != null) {
                        c1500d.afV.setText(appDownLoadModel.appName);
                        c1500d.awc.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appDownLoadModel.downloadCount)) + " " + anf.m10285bQ(appDownLoadModel.fileSize));
                        c1500d.awd.setText(appDownLoadModel.describe);
                        c1500d.awe.setTag(c1500d.awb);
                        appDownLoadModel.m4179a(c1500d.awe);
                        appDownLoadModel.m4181a(c1500d.awb);
                        if (!appDownLoadModel.iconUrl.equals(c1500d.awb.getTag())) {
                            this.akC.put(c1500d.awb, appDownLoadModel.iconUrl);
                            c1500d.awb.setImageResource(R.drawable.default_app);
                            apv.m9735LO().m9730a(appDownLoadModel.iconUrl, this.akE);
                        }
                        c1500d.awe.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.asr.a.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                aks.m11143BP().m10892al(C1494a.this.aGj, appDownLoadModel.pkgName);
                                and.m10326a(C1494a.this.mContext, appDownLoadModel, C1494a.this.akA, C1494a.this.akB, C1494a.this.akD);
                                ady.m12308tK().m12315eM(appDownLoadModel.pkgName);
                            }
                        });
                        and.m10319a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), this.akA, this.akB);
                    }
                    ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), appDownLoadModel.reportInfo);
                    return view;
                default:
                    return view;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.asr$b */
    /* loaded from: classes.dex */
    static class C1498b extends C1499c {
        public Button aNw;
        public TextView age;
        public ImageView ahP;

        C1498b(View view, View.OnClickListener onClickListener) {
            this.aNw = (Button) view.findViewById(R.id.item_button);
            this.ahP = (ImageView) view.findViewById(R.id.item_icon);
            this.age = (TextView) view.findViewById(R.id.item_title);
            this.aNw.setOnClickListener(onClickListener);
        }

        /* renamed from: a */
        void m9378a(asr asrVar, acr acrVar) {
            this.age.setText(asrVar.mName);
            if (asrVar.aNr != null && acrVar != null) {
                acrVar.m12667a(asrVar.aNr.packageName, this.ahP, R.drawable.default_icon);
            }
            if (asrVar.aNt) {
                this.aNw.setText(C3953zi.m1311pr().getString(R.string.gamebox_add_list_button_added));
                this.aNw.setTextColor(C3953zi.m1311pr().getColor(R.color.gamebox_add_page_list_added_blue));
                this.aNw.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.transparent));
                this.aNw.setClickable(false);
            } else {
                this.aNw.setText(C3953zi.m1311pr().getString(R.string.gamebox_add_list_button_add));
                this.aNw.setTextColor(C3953zi.m1311pr().getColor(R.color.global_primary_black_text_color));
                this.aNw.setBackgroundResource(R.drawable.gamebox_remove_button_selector);
                this.aNw.setClickable(true);
            }
            this.aNw.setTag(asrVar);
        }
    }

    /* renamed from: com.kingroot.kinguser.asr$c */
    /* loaded from: classes.dex */
    static class C1499c {
        public int type;

        C1499c() {
        }
    }

    /* renamed from: com.kingroot.kinguser.asr$e */
    /* loaded from: classes.dex */
    static class C1501e extends C1499c {
        public TextView aFj;

        C1501e() {
        }
    }

    /* renamed from: com.kingroot.kinguser.asr$d */
    /* loaded from: classes.dex */
    static class C1500d extends C1499c {
        public TextView afV;
        public ImageView awb;
        public TextView awc;
        public TextView awd;
        public TextRoundCornerProgressBar awe;

        C1500d() {
        }
    }
}
