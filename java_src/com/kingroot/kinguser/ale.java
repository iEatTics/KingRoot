package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingcore.uilib.ExpandableTextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.asf;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class ale extends RecyclerView.Adapter implements asf.InterfaceC1476a {
    private List<ame> ahM;
    private asf alJ;
    private WeakReference<InterfaceC1068a> alK;
    private RecyclerView mRecyclerView;

    /* renamed from: com.kingroot.kinguser.ale$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1068a {
        /* renamed from: a */
        void mo9932a(AppDownLoadModel appDownLoadModel);

        /* renamed from: h */
        void mo9930h(View view, int i);

        /* renamed from: i */
        void mo9929i(View view, int i);
    }

    /* renamed from: com.kingroot.kinguser.ale$c */
    /* loaded from: classes.dex */
    public interface InterfaceC1072c extends InterfaceC1068a {
        /* renamed from: f */
        void mo9931f(View view, int i);

        /* renamed from: j */
        void mo9928j(View view, int i);
    }

    public ale(List<ame> list, InterfaceC1068a interfaceC1068a) {
        this.alK = null;
        this.ahM = list;
        if (interfaceC1068a != null) {
            this.alK = new WeakReference<>(interfaceC1068a);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new View$OnClickListenerC1069b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_app_download_recycle_item, viewGroup, false), this.alK.get());
            case 9:
                return new View$OnClickListenerC1073d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_app_update_recycle_item, viewGroup, false), (InterfaceC1072c) this.alK.get());
            default:
                return null;
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        switch (getItemViewType(i)) {
            case 1:
                ((View$OnClickListenerC1069b) viewHolder).m10633a(this.ahM.get(i));
                return;
            case 9:
                ((View$OnClickListenerC1073d) viewHolder).m10631a(this.ahM.get(i));
                return;
            default:
                return;
        }
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
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.alJ = new asf(recyclerView.getContext(), this);
        this.mRecyclerView.addOnItemTouchListener(this.alJ);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.size();
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: vM */
    public void mo7195vM() {
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: vN */
    public void mo7194vN() {
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: da */
    public boolean mo7199da(int i) {
        return true;
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: i */
    public int mo7197i(RecyclerView.ViewHolder viewHolder) {
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition < 0 || adapterPosition >= this.ahM.size()) {
            return 0;
        }
        AppDownLoadModel appDownLoadModel = (AppDownLoadModel) this.ahM.get(adapterPosition);
        if (appDownLoadModel == null || appDownLoadModel.appStatus != 6) {
            if (viewHolder.itemView instanceof LinearLayout) {
                ViewGroup viewGroup = (ViewGroup) viewHolder.itemView;
                if (viewGroup.getChildCount() == 2) {
                    return viewGroup.getChildAt(1).getLayoutParams().width;
                }
            }
            return 0;
        }
        return 0;
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    public RecyclerView.ViewHolder getChildViewHolder(View view) {
        return this.mRecyclerView.getChildViewHolder(view);
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: e */
    public Pair<View, View> mo7198e(float f, float f2) {
        View findChildViewUnder = this.mRecyclerView.findChildViewUnder(f, f2);
        return Pair.create(findChildViewUnder, findChildViewUnder);
    }

    /* renamed from: r */
    public void m10635r(int i, boolean z) {
        View childAt = this.mRecyclerView.getChildAt(i);
        if (childAt != null) {
            this.alJ.m9478c(childAt, z);
        }
    }

    /* renamed from: com.kingroot.kinguser.ale$b */
    /* loaded from: classes.dex */
    class View$OnClickListenerC1069b extends RecyclerView.ViewHolder implements View.OnClickListener {
        public TextView afV;
        private HashMap<ImageView, String> akC;
        private apv.InterfaceC1441b akE;
        private WeakReference<InterfaceC1068a> alK;
        public ImageView awb;
        public TextView awc;
        public TextView awd;
        public TextRoundCornerProgressBar awe;
        public TextView awm;

        public View$OnClickListenerC1069b(View view, InterfaceC1068a interfaceC1068a) {
            super(view);
            this.akC = new HashMap<>();
            this.alK = null;
            this.akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.ale.b.1
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.ale.b.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            for (ImageView imageView : View$OnClickListenerC1069b.this.akC.keySet()) {
                                if (str.equals(View$OnClickListenerC1069b.this.akC.get(imageView))) {
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
            this.afV = (TextView) view.findViewById(R.id.item_title);
            this.awc = (TextView) view.findViewById(R.id.item_description1);
            this.awd = (TextView) view.findViewById(R.id.item_description2);
            this.awb = (ImageView) view.findViewById(R.id.item_icon);
            this.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
            this.awm = (TextView) view.findViewById(R.id.item_delete);
            if (interfaceC1068a != null) {
                this.alK = new WeakReference<>(interfaceC1068a);
            }
        }

        /* renamed from: a */
        public void m10633a(ame ameVar) {
            AppDownLoadModel appDownLoadModel = (AppDownLoadModel) ameVar;
            this.afV.setText(appDownLoadModel.appName);
            this.awc.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appDownLoadModel.downloadCount)) + " " + anf.m10285bQ(appDownLoadModel.fileSize));
            this.awd.setText(appDownLoadModel.describe);
            this.awe.setOnClickListener(this);
            this.awe.setTag(this.awb);
            appDownLoadModel.m4179a(this.awe);
            this.awm.setOnClickListener(this);
            if (!appDownLoadModel.iconUrl.equals(this.awb.getTag())) {
                this.awb.setImageResource(R.drawable.default_app);
                this.akC.put(this.awb, appDownLoadModel.iconUrl);
                apv.m9735LO().m9730a(appDownLoadModel.iconUrl, this.akE);
            }
            if (this.alK != null && this.alK.get() != null) {
                this.alK.get().mo9932a(appDownLoadModel);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition;
            if (this.alK != null && this.alK.get() != null && (adapterPosition = getAdapterPosition()) != -1) {
                int id = view.getId();
                view.setClickable(false);
                switch (id) {
                    case R.id.item_button /* 2131689716 */:
                        this.alK.get().mo9929i(view, adapterPosition);
                        break;
                    case R.id.item_delete /* 2131690019 */:
                        this.alK.get().mo9930h(view, adapterPosition);
                        break;
                }
                view.setClickable(true);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.ale$d */
    /* loaded from: classes.dex */
    class View$OnClickListenerC1073d extends RecyclerView.ViewHolder implements View.OnClickListener {
        public TextView afV;
        private HashMap<ImageView, String> akC;
        private apv.InterfaceC1441b akE;
        private WeakReference<InterfaceC1072c> alK;
        public ImageView alk;
        public ImageView awb;
        public TextRoundCornerProgressBar awe;
        public TextView awi;
        public TextView awj;
        public ExpandableTextView awk;
        public TextView awl;
        public TextView awm;
        public TextView awq;

        public View$OnClickListenerC1073d(View view, InterfaceC1072c interfaceC1072c) {
            super(view);
            this.akC = new HashMap<>();
            this.alK = null;
            this.akE = new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.ale.d.4
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.ale.d.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            for (ImageView imageView : View$OnClickListenerC1073d.this.akC.keySet()) {
                                if (str.equals(View$OnClickListenerC1073d.this.akC.get(imageView))) {
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
            this.afV = (TextView) view.findViewById(R.id.item_title);
            this.awq = (TextView) view.findViewById(R.id.item_important_version);
            this.awi = (TextView) view.findViewById(R.id.item_origin_size);
            this.awj = (TextView) view.findViewById(R.id.item_diff_szie);
            this.awk = (ExpandableTextView) view.findViewById(R.id.item_description2);
            this.alk = (ImageView) view.findViewById(R.id.expand_btn);
            this.awb = (ImageView) view.findViewById(R.id.item_icon);
            this.awe = (TextRoundCornerProgressBar) view.findViewById(R.id.item_button);
            this.awm = (TextView) view.findViewById(R.id.item_delete);
            this.awl = (TextView) view.findViewById(R.id.ignore_button_text);
            this.awl.setOnClickListener(this);
            if (interfaceC1072c != null) {
                this.alK = new WeakReference<>(interfaceC1072c);
            }
        }

        /* renamed from: a */
        public void m10631a(ame ameVar) {
            AppUpdateModel appUpdateModel = (AppUpdateModel) ameVar;
            C3953zi m1311pr = C3953zi.m1311pr();
            this.afV.setText(appUpdateModel.appName);
            if (appUpdateModel.isImportantVersion) {
                this.awq.setVisibility(0);
            } else {
                this.awq.setVisibility(8);
            }
            StringBuilder sb = new StringBuilder();
            if (appUpdateModel.remoteDiffPkgSize > 0) {
                this.awi.setPaintFlags(this.awi.getPaintFlags() | 16);
                sb.append(anf.m10285bQ(appUpdateModel.remoteDiffPkgSize));
            } else {
                this.awi.setPaintFlags(this.awi.getPaintFlags() & (-17));
            }
            this.awi.setText(anf.m10285bQ(appUpdateModel.remoteSize));
            sb.append("  ");
            sb.append(appUpdateModel.oldVersion);
            sb.append(m1311pr.getString(R.string.old_to_new));
            sb.append(appUpdateModel.remoteVersion);
            this.awj.setText(sb);
            final String str = m1311pr.getString(R.string.new_version_feature) + appUpdateModel.remoteNewFeature;
            final String replaceAll = str.replaceAll("\\n", "");
            this.awk.setText(replaceAll);
            this.awk.setAnimationDuration(200L);
            this.alk.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ale.d.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    View$OnClickListenerC1073d.this.awk.m13586gF();
                    ((InterfaceC1072c) View$OnClickListenerC1073d.this.alK.get()).mo9928j(view, View$OnClickListenerC1073d.this.getAdapterPosition());
                }
            });
            this.awk.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ale.d.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!View$OnClickListenerC1073d.this.awk.m13583gI()) {
                        View$OnClickListenerC1073d.this.awk.m13585gG();
                    }
                }
            });
            this.awk.setExpandListener(new ExpandableTextView.InterfaceC0453a() { // from class: com.kingroot.kinguser.ale.d.3
                @Override // com.kingcore.uilib.ExpandableTextView.InterfaceC0453a
                /* renamed from: b */
                public void mo10225b(ExpandableTextView expandableTextView) {
                    if (!TextUtils.isEmpty(str)) {
                        View$OnClickListenerC1073d.this.awk.setText(str);
                    }
                    View$OnClickListenerC1073d.this.awl.setVisibility(0);
                    bhk.m6994b(View$OnClickListenerC1073d.this.alk, 0.0f, 180.0f, 200L);
                }

                @Override // com.kingcore.uilib.ExpandableTextView.InterfaceC0453a
                /* renamed from: c */
                public void mo10224c(ExpandableTextView expandableTextView) {
                    if (!TextUtils.isEmpty(replaceAll)) {
                        View$OnClickListenerC1073d.this.awk.setText(replaceAll);
                    }
                    View$OnClickListenerC1073d.this.awl.setVisibility(8);
                    bhk.m6994b(View$OnClickListenerC1073d.this.alk, 180.0f, 0.0f, 200L);
                }
            });
            this.awe.setOnClickListener(this);
            this.awe.setTag(this.awb);
            appUpdateModel.m4179a(this.awe);
            this.awm.setOnClickListener(this);
            if (!appUpdateModel.iconUrl.equals(this.awb.getTag())) {
                this.awb.setImageResource(R.drawable.default_app);
                this.akC.put(this.awb, appUpdateModel.iconUrl);
                apv.m9735LO().m9730a(appUpdateModel.iconUrl, this.akE);
            }
            if (this.alK != null && this.alK.get() != null) {
                this.alK.get().mo9932a(appUpdateModel);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition;
            if (this.alK != null && this.alK.get() != null && (adapterPosition = getAdapterPosition()) != -1) {
                int id = view.getId();
                view.setClickable(false);
                switch (id) {
                    case R.id.item_button /* 2131689716 */:
                        if (C3953zi.m1311pr().getString(R.string.update_init_state_btn).equals(this.awe.getProgressText())) {
                            ady.m12308tK().mo1746bi(100726);
                        } else if (C3953zi.m1311pr().getString(R.string.app_install_state_btn).equals(this.awe.getProgressText())) {
                            ady.m12308tK().mo1746bi(100727);
                        }
                        this.alK.get().mo9929i(view, adapterPosition);
                        break;
                    case R.id.item_delete /* 2131690019 */:
                        this.alK.get().mo9930h(view, adapterPosition);
                        break;
                    case R.id.ignore_button_text /* 2131690031 */:
                        this.alK.get().mo9931f(view, adapterPosition);
                        break;
                }
                view.setClickable(true);
            }
        }
    }
}
