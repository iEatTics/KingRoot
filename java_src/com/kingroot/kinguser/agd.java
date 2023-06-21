package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.p007v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingcore.uilib.ProgressWhell;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.kinguser.ala;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class agd extends RecyclerView.Adapter {
    public IAppDownloadListener.Stub akA;
    public IAppInstallListener.Stub akB;
    private HashMap<ImageView, String> akC = new HashMap<>();
    private and.C1258a akD = new and.C1258a();
    private apv.InterfaceC1441b akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.agd.2
        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(final String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.agd.2.1
                @Override // java.lang.Runnable
                public void run() {
                    for (ImageView imageView : agd.this.akC.keySet()) {
                        if (str.equals(agd.this.akC.get(imageView))) {
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
    private List<C0867a> aky;
    private WeakReference<InterfaceC0868b> akz;

    /* renamed from: com.kingroot.kinguser.agd$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0868b {
        @UiThread
        /* renamed from: a */
        void mo8467a(C0867a c0867a);
    }

    public agd(List<C0867a> list, InterfaceC0868b interfaceC0868b, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2) {
        this.akz = null;
        this.aky = list;
        this.akA = stub;
        this.akB = stub2;
        if (interfaceC0868b != null) {
            this.akz = new WeakReference<>(interfaceC0868b);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.aky.get(i).type;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == 0) {
            View inflate = from.inflate(R.layout.list_item_default_settings_item, viewGroup, false);
            final ProgressWhell progressWhell = (ProgressWhell) inflate.findViewById(R.id.pb_load);
            progressWhell.setBarColor(C3953zi.m1311pr().getColor(R.color.blue_1));
            progressWhell.setProgress(0.0f);
            progressWhell.setBarWidth(abg.m12835r(2.0f));
            progressWhell.setCircleRadius(abg.m12835r(48.0f));
            progressWhell.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.agd.1
                @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
                /* renamed from: d */
                public void mo6827d(float f) {
                    if (f == 0.0f) {
                        progressWhell.setProgress(1.0f);
                    } else if (f == 1.0f) {
                        progressWhell.setProgress(0.0f);
                    }
                }
            });
            return new C0869c(inflate, (TextView) inflate.findViewById(R.id.main_text), null, (ImageView) inflate.findViewById(R.id.icon), (TextView) inflate.findViewById(R.id.tv_tips), progressWhell, null, this.akz == null ? null : this.akz.get());
        } else if (i == 1) {
            View inflate2 = from.inflate(R.layout.list_item_default_settings_app_item, viewGroup, false);
            return new C0869c(inflate2, (TextView) inflate2.findViewById(R.id.main_text), (ImageView) inflate2.findViewById(R.id.radio_button), (ImageView) inflate2.findViewById(R.id.icon), null, null, (TextRoundCornerProgressBar) inflate2.findViewById(R.id.btn_enable), this.akz == null ? null : this.akz.get());
        } else {
            View inflate3 = from.inflate(R.layout.list_title_item_advance_perm_app_list, viewGroup, false);
            return new C0869c(inflate3, (TextView) inflate3.findViewById(R.id.title), null, null, null, null, null, null);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (this.aky.size() > i) {
            ((C0869c) viewHolder).m11978b(this.aky.get(i));
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.aky.size();
    }

    /* renamed from: com.kingroot.kinguser.agd$a */
    /* loaded from: classes.dex */
    public static class C0867a {
        public final ala.C1052a akI;
        final int akJ;
        final Drawable akK;
        public boolean akL;
        public String akM;
        public boolean akN;
        public AppDownLoadModel akO;

        /* renamed from: id */
        public final int f1419id;
        public final String name;
        public int status;
        public final int type;

        private C0867a(int i, String str, int i2, ala.C1052a c1052a, boolean z, int i3, Drawable drawable, AppDownLoadModel appDownLoadModel, boolean z2) {
            this.type = i;
            this.name = str == null ? "" : str;
            this.f1419id = i2;
            this.akL = z;
            this.akI = c1052a;
            this.akJ = i3;
            this.akK = drawable;
            if (appDownLoadModel != null) {
                this.akO = appDownLoadModel;
            }
            this.akN = z2;
        }

        /* renamed from: e */
        public static C0867a m11981e(String str, int i, int i2) {
            return new C0867a(0, str, i, null, false, i2, null, null, false);
        }

        /* renamed from: a */
        public static C0867a m11982a(ala.C1052a c1052a, String str, Drawable drawable, boolean z, AppDownLoadModel appDownLoadModel, boolean z2) {
            return new C0867a(1, str, 0, c1052a, z, 0, drawable, appDownLoadModel, z2);
        }

        /* renamed from: fq */
        public static C0867a m11980fq(String str) {
            return new C0867a(2, str, 0, null, false, 0, null, null, false);
        }
    }

    /* renamed from: com.kingroot.kinguser.agd$c */
    /* loaded from: classes.dex */
    class C0869c extends RecyclerView.ViewHolder {
        private final View.OnClickListener ahN;
        private ImageView ahP;
        private final TextRoundCornerProgressBar akP;
        private View akQ;
        private TextView akR;
        private ImageView akS;
        private TextView akT;
        private C0867a akU;
        private ProgressWhell akV;
        private WeakReference<InterfaceC0868b> akz;

        C0869c(View view, TextView textView, ImageView imageView, ImageView imageView2, TextView textView2, ProgressWhell progressWhell, TextRoundCornerProgressBar textRoundCornerProgressBar, InterfaceC0868b interfaceC0868b) {
            super(view);
            this.akz = null;
            this.ahN = new View.OnClickListener() { // from class: com.kingroot.kinguser.agd.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (C0869c.this.akU != null) {
                        InterfaceC0868b interfaceC0868b2 = C0869c.this.akz == null ? null : (InterfaceC0868b) C0869c.this.akz.get();
                        if (interfaceC0868b2 != null) {
                            interfaceC0868b2.mo8467a(C0869c.this.akU);
                        }
                    }
                }
            };
            this.akQ = view;
            this.akQ.setOnClickListener(this.ahN);
            this.akR = textView;
            this.akS = imageView;
            this.ahP = imageView2;
            this.akT = textView2;
            this.akV = progressWhell;
            this.akP = textRoundCornerProgressBar;
            if (interfaceC0868b != null) {
                this.akz = new WeakReference<>(interfaceC0868b);
            }
        }

        /* renamed from: b */
        void m11978b(@NonNull C0867a c0867a) {
            if (this.akR != null) {
                this.akU = c0867a;
                if (c0867a.type == 1) {
                    m11976c(c0867a);
                } else if (c0867a.type == 0) {
                    m11975d(c0867a);
                } else {
                    this.akR.setText(c0867a.name);
                }
            }
        }

        /* renamed from: c */
        private void m11976c(final C0867a c0867a) {
            this.akR.setText(c0867a.akN ? Html.fromHtml(C3953zi.m1311pr().getString(R.string.def_setting_list_item_recommend_name, c0867a.name)) : c0867a.name);
            if (c0867a.akO != null) {
                ana.m10352IO().mo10330a(this.akQ.getContext().getClass().getName(), this.akQ.getContext().hashCode(), c0867a.akO.reportInfo);
                this.akQ.setClickable(false);
                this.akP.setVisibility(0);
                this.akS.setVisibility(8);
                if (!c0867a.akO.iconUrl.equals(this.ahP.getTag())) {
                    agd.this.akC.put(this.ahP, c0867a.akO.iconUrl);
                    this.ahP.setImageResource(R.drawable.default_app);
                    apv.m9735LO().m9730a(c0867a.akO.iconUrl, agd.this.akE);
                }
                c0867a.akO.m4179a(this.akP);
                and.m10319a(c0867a.akO, c0867a.akO.m4188Ih(), C3953zi.m1311pr().getString(R.string.examination_manual_entry_btn_open), agd.this.akA, agd.this.akB);
                this.akP.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agd.c.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        apd.m9836ao(c0867a.akO.pkgName, "DefaultSetting");
                        and.m10326a(C0869c.this.itemView.getContext(), c0867a.akO, agd.this.akA, agd.this.akB, agd.this.akD);
                    }
                });
                return;
            }
            this.akQ.setClickable(true);
            this.akP.setVisibility(8);
            this.akS.setVisibility(0);
            this.akS.setImageResource(c0867a.akL ? R.drawable.radio_button_checked : R.drawable.radio_button_unchecked);
            this.ahP.setImageDrawable(c0867a.akK);
        }

        /* renamed from: d */
        void m11975d(C0867a c0867a) {
            this.akR.setText(c0867a.name);
            this.ahP.setImageResource(c0867a.akJ);
            this.akV.setVisibility(8);
            this.akQ.setClickable(true);
            switch (c0867a.status) {
                case 0:
                    this.akT.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_2));
                    this.akT.setText(c0867a.akM);
                    return;
                case 1:
                    this.akT.setTextColor(C3953zi.m1311pr().getColor(R.color.green_0));
                    this.akT.setText(R.string.def_setting_item_tips_recommend_auto);
                    return;
                case 2:
                    this.akT.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_2));
                    this.akT.setText(c0867a.akM);
                    return;
                case 3:
                    this.akQ.setClickable(false);
                    this.akT.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_1));
                    this.akT.setText(R.string.def_setting_item_tips_recommend_doing);
                    this.akV.setVisibility(0);
                    return;
                case 4:
                    this.akT.setTextColor(C3953zi.m1311pr().getColor(R.color.green_0));
                    this.akT.setText(R.string.def_setting_item_tips_recommend_manual);
                    return;
                default:
                    return;
            }
        }
    }
}
