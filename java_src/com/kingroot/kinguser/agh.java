package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.view.ViewCompat;
import android.support.p007v7.widget.RecyclerView;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AccelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.animation.ObjectAnimator;
import com.kingcore.uilib.ProgressWhell;
import com.kingcore.uilib.TimeLineView;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.asf;
import com.kingroot.kinguser.biw;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class agh extends RecyclerView.Adapter implements asf.InterfaceC1476a {
    private List<bcy> alI;
    private asf alJ;
    private WeakReference<InterfaceC0896k> alK;
    private RecyclerView mRecyclerView;

    /* renamed from: com.kingroot.kinguser.agh$k */
    /* loaded from: classes.dex */
    public interface InterfaceC0896k {
        /* renamed from: c */
        void mo8165c(View view, int i);

        /* renamed from: d */
        void mo8164d(View view, int i);

        /* renamed from: e */
        void mo8163e(View view, int i);

        /* renamed from: f */
        void mo8162f(View view, int i);
    }

    public agh(List<bcy> list, InterfaceC0896k interfaceC0896k) {
        this.alK = null;
        this.alI = list;
        if (interfaceC0896k != null) {
            this.alK = new WeakReference<>(interfaceC0896k);
        }
    }

    public void setData(List<bcy> list) {
        this.alI = list;
    }

    /* renamed from: vL */
    private InterfaceC0896k m11969vL() {
        if (this.alK != null) {
            return this.alK.get();
        }
        return null;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 1:
                return new C0890f(from.inflate(R.layout.list_item_security_protect_header, viewGroup, false));
            case 2:
                return new C0889e(from.inflate(R.layout.cardview_common_one_button, viewGroup, false), m11969vL());
            case 3:
                return new C0894j(from.inflate(R.layout.cardview_common, viewGroup, false), m11969vL());
            case 4:
                return new C0891g(from.inflate(R.layout.list_item_security_protect_module_style_icon, viewGroup, false), m11969vL());
            case 5:
                return new C0897l(from.inflate(R.layout.list_item_security_protect_style_two_line, viewGroup, false), m11969vL());
            case 6:
                return new C0893i(from.inflate(R.layout.list_item_security_protect_module, viewGroup, false), m11969vL());
            case 7:
                return new C0887d(viewGroup.getContext(), from.inflate(R.layout.list_item_security_protect_expandable_module, viewGroup, false), m11969vL());
            case 8:
                return new View$OnClickListenerC0886c(from.inflate(R.layout.cardview_list_one_button, viewGroup, false), m11969vL());
            default:
                return null;
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((AbstractC0884a) viewHolder).mo11956a(this.alI.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.alJ = new asf(recyclerView.getContext(), this);
        this.mRecyclerView.addOnItemTouchListener(this.alJ);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.alI.size();
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        bcy bcyVar = this.alI.get(i);
        return bcyVar != null ? bcyVar.mo7559Yp() : super.getItemViewType(i);
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: da */
    public boolean mo7199da(int i) {
        return i <= 3 || i == 8;
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: i */
    public int mo7197i(RecyclerView.ViewHolder viewHolder) {
        if ((viewHolder instanceof C0894j) && ((C0894j) viewHolder).amk.getVisibility() == 0) {
            return 0;
        }
        if (viewHolder.itemView instanceof LinearLayout) {
            ViewGroup viewGroup = (ViewGroup) viewHolder.itemView;
            if (viewGroup.getChildCount() == 2) {
                return viewGroup.getChildAt(1).getLayoutParams().width;
            }
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

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: vM */
    public void mo7195vM() {
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: vN */
    public void mo7194vN() {
    }

    /* renamed from: com.kingroot.kinguser.agh$a */
    /* loaded from: classes.dex */
    static abstract class AbstractC0884a extends RecyclerView.ViewHolder {
        /* renamed from: a */
        abstract void mo11956a(bcy bcyVar);

        public AbstractC0884a(View view) {
            super(view);
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$f */
    /* loaded from: classes.dex */
    public static class C0890f extends AbstractC0884a {
        private ImageView ajH;
        private TextView ajP;

        public C0890f(View view) {
            super(view);
            this.ajH = (ImageView) view.findViewById(R.id.topImage);
            this.ajP = (TextView) view.findViewById(R.id.topPrimaryText);
        }

        @Override // com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        public void mo11956a(bcy bcyVar) {
            m11964a((bdd) bcyVar);
        }

        /* renamed from: a */
        public void m11964a(bdd bddVar) {
            this.ajH.setImageDrawable(bddVar.getIcon());
            this.ajP.setText(bddVar.getTitle());
            this.ajP.setTextColor(bddVar.getTitleColor());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.agh$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractView$OnClickListenerC0885b extends AbstractC0884a implements View.OnClickListener {
        ImageView ajH;
        View ajL;
        TextView ajP;
        private WeakReference<InterfaceC0896k> alK;
        TextView alL;
        TextView alM;
        Button alN;
        Button alO;
        Button alP;

        public AbstractView$OnClickListenerC0885b(View view, InterfaceC0896k interfaceC0896k) {
            super(view);
            this.alK = null;
            C3857ws.m1497h(((ViewGroup) this.itemView).findViewById(R.id.card_container));
            this.ajH = (ImageView) view.findViewById(R.id.card_header_icon);
            this.ajP = (TextView) view.findViewById(R.id.card_header_title);
            this.alL = (TextView) view.findViewById(R.id.card_content_title);
            this.alM = (TextView) view.findViewById(R.id.card_content_desc);
            this.alN = (Button) view.findViewById(R.id.card_bottom_button);
            this.alN.setOnClickListener(this);
            View inflate = ((ViewStub) view.findViewById(R.id.stub_hidden_buttons)).inflate();
            this.alO = (Button) inflate.findViewById(R.id.btn_ignore);
            this.alO.setOnClickListener(this);
            this.alP = (Button) inflate.findViewById(R.id.btn_trust);
            this.alP.setOnClickListener(this);
            this.ajL = inflate.findViewById(R.id.divider_line);
            if (interfaceC0896k != null) {
                this.alK = new WeakReference<>(interfaceC0896k);
            }
        }

        @Override // com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InterfaceC0896k interfaceC0896k;
            if (this.alK != null && (interfaceC0896k = this.alK.get()) != null) {
                switch (view.getId()) {
                    case R.id.btn_ignore /* 2131689695 */:
                        interfaceC0896k.mo8162f(view, getAdapterPosition());
                        return;
                    case R.id.card_bottom_button /* 2131689743 */:
                        interfaceC0896k.mo8164d(view, getAdapterPosition());
                        return;
                    case R.id.btn_trust /* 2131689763 */:
                        interfaceC0896k.mo8163e(view, getAdapterPosition());
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$j */
    /* loaded from: classes.dex */
    public static class C0894j extends AbstractView$OnClickListenerC0885b {
        private final RelativeLayout amk;
        private final LinearLayout aml;
        private final ProgressWhell amm;
        private final TextView amn;
        private final TextView amo;
        private final LinearLayout amp;
        private final TextView amq;

        @Override // com.kingroot.kinguser.agh.AbstractView$OnClickListenerC0885b, android.view.View.OnClickListener
        public /* bridge */ /* synthetic */ void onClick(View view) {
            super.onClick(view);
        }

        public C0894j(View view, InterfaceC0896k interfaceC0896k) {
            super(view, interfaceC0896k);
            this.amk = (RelativeLayout) view.findViewById(R.id.card_mask);
            C3857ws.m1502a(this.amk, 3);
            this.aml = (LinearLayout) view.findViewById(R.id.card_mask_processing);
            this.amn = (TextView) view.findViewById(R.id.process_desc);
            this.amo = (TextView) view.findViewById(R.id.process_name);
            this.amm = (ProgressWhell) view.findViewById(R.id.card_bottom_progresswhell);
            this.amm.setBarColor(C3953zi.m1311pr().getColor(R.color.white));
            this.amm.setProgress(0.0f);
            this.amm.setBarWidth(abg.m12835r(4.0f));
            this.amm.setCircleRadius(abg.m12835r(48.0f));
            this.amm.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.agh.j.1
                @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
                /* renamed from: d */
                public void mo6827d(float f) {
                    if (f == 0.0f) {
                        C0894j.this.amm.setProgress(1.0f);
                    } else if (f == 1.0f) {
                        C0894j.this.amm.setProgress(0.0f);
                    }
                }
            });
            this.amp = (LinearLayout) view.findViewById(R.id.card_mask_done);
            this.amq = (TextView) view.findViewById(R.id.process_done);
        }

        @Override // com.kingroot.kinguser.agh.AbstractView$OnClickListenerC0885b, com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            bdg bdgVar = (bdg) bcyVar;
            m11961a(bdgVar);
            m11960a(bdgVar, false);
        }

        /* renamed from: a */
        private void m11961a(bdg bdgVar) {
            if (bdgVar.m7561YB()) {
                C3935yr.m1374pb().m12667a(bdgVar.getTitle(), this.ajH, bdgVar.getIconResId());
                try {
                    C3952zh m1312pq = C3952zh.m1312pq();
                    this.ajP.setText((String) m1312pq.getApplicationLabel(m1312pq.getApplicationInfo(bdgVar.getTitle(), 0)));
                } catch (Throwable th) {
                    this.ajP.setText(bdgVar.getTitle());
                }
            } else {
                this.ajH.setImageResource(bdgVar.getIconResId());
                this.ajP.setText(bdgVar.getTitle());
            }
            this.alL.setText(bdgVar.m7557Yw());
            this.alM.setText(bdgVar.m7556Yx());
            this.alN.setText(bdgVar.m7555Yy());
            this.alL.setVisibility(0);
            this.alM.setVisibility(0);
            this.alO.setVisibility(0);
            this.alP.setVisibility(0);
            this.alO.setText(R.string.security_protect_ignore);
            this.alP.setText(R.string.security_protect_trust);
            this.amn.setText(bdgVar.m7554Yz());
            this.amo.setText(this.ajP.getText());
            this.amq.setText(bdgVar.m7562YA());
            this.amk.setVisibility(8);
            this.aml.setVisibility(8);
            this.amp.setVisibility(8);
        }

        /* renamed from: b */
        public void m11958b(bdg bdgVar) {
            m11960a(bdgVar, true);
        }

        /* renamed from: a */
        public void m11960a(bdg bdgVar, boolean z) {
            switch (bdgVar.m7558Yv()) {
                case 0:
                    this.amk.setVisibility(8);
                    this.aml.setVisibility(8);
                    this.amp.setVisibility(8);
                    return;
                case 1:
                    this.amk.setVisibility(0);
                    this.aml.setVisibility(0);
                    if (z) {
                        m11957q(this.amk);
                    }
                    this.amp.setVisibility(8);
                    return;
                case 2:
                    this.amk.setVisibility(0);
                    this.aml.setVisibility(8);
                    this.amp.setVisibility(0);
                    return;
                default:
                    return;
            }
        }

        /* renamed from: q */
        private void m11957q(View view) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
            ofFloat.setDuration(700L);
            ofFloat.setInterpolator(new AccelerateInterpolator());
            ofFloat.start();
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$e */
    /* loaded from: classes.dex */
    class C0889e extends AbstractView$OnClickListenerC0885b {
        public C0889e(View view, InterfaceC0896k interfaceC0896k) {
            super(view, interfaceC0896k);
        }

        @Override // com.kingroot.kinguser.agh.AbstractView$OnClickListenerC0885b, com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            bdc bdcVar = (bdc) bcyVar;
            if (bcyVar instanceof bdi) {
                apd.m9837an(((bdi) bcyVar).m7552YC().pkgName, "RootSafe");
            }
            this.ajH.setImageDrawable(bdcVar.getIcon());
            this.ajP.setText(bdcVar.getTitle());
            this.alM.setText(bdcVar.m7568Ny());
            this.alN.setText(bdcVar.m7567Yr());
            this.alL.setVisibility(8);
            this.alP.setVisibility(8);
            this.ajL.setVisibility(8);
            this.alO.setVisibility(0);
            this.alO.setText(R.string.security_protect_ignore);
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$h */
    /* loaded from: classes.dex */
    abstract class AbstractView$OnClickListenerC0892h extends AbstractC0884a implements View.OnClickListener {
        private WeakReference<InterfaceC0896k> alK;

        public AbstractView$OnClickListenerC0892h(View view, InterfaceC0896k interfaceC0896k) {
            super(view);
            this.alK = null;
            C3857ws.m1497h(((ViewGroup) view).getChildAt(0));
            View findViewById = view.findViewById(R.id.list_item_container);
            if (findViewById != null) {
                findViewById.setOnClickListener(this);
                findViewById.setClickable(true);
            } else {
                view.setOnClickListener(this);
                view.setClickable(true);
            }
            if (interfaceC0896k != null) {
                this.alK = new WeakReference<>(interfaceC0896k);
            }
        }

        @Override // com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InterfaceC0896k interfaceC0896k;
            if (this.alK != null && (interfaceC0896k = this.alK.get()) != null) {
                interfaceC0896k.mo8165c(view, getAdapterPosition());
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$l */
    /* loaded from: classes.dex */
    class C0897l extends AbstractView$OnClickListenerC0892h {
        private TextView ajJ;
        private TextView ajP;
        private ImageView amd;

        public C0897l(View view, InterfaceC0896k interfaceC0896k) {
            super(view, interfaceC0896k);
            this.amd = (ImageView) view.findViewById(R.id.item_icon);
            this.ajP = (TextView) view.findViewById(R.id.item_title);
            this.ajJ = (TextView) view.findViewById(R.id.cv_list_desc);
        }

        @Override // com.kingroot.kinguser.agh.AbstractView$OnClickListenerC0892h, com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            bcv bcvVar = (bcv) bcyVar;
            this.amd.setImageDrawable(bcvVar.getIcon());
            this.ajP.setText(bcvVar.getTitle());
            this.ajJ.setText(bcvVar.m7571Ny());
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$i */
    /* loaded from: classes.dex */
    class C0893i extends AbstractView$OnClickListenerC0892h {
        private TextView ajP;
        private ImageView ajV;
        private ImageView amd;
        private TextView amj;

        public C0893i(View view, InterfaceC0896k interfaceC0896k) {
            super(view, interfaceC0896k);
            this.amd = (ImageView) view.findViewById(R.id.item_icon);
            this.ajP = (TextView) view.findViewById(R.id.item_title);
            this.ajV = (ImageView) view.findViewById(R.id.expand_icon);
            this.amj = (TextView) view.findViewById(R.id.item_describe);
        }

        @Override // com.kingroot.kinguser.agh.AbstractView$OnClickListenerC0892h, com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            bdf bdfVar = (bdf) bcyVar;
            this.amd.setImageDrawable(bdfVar.getIcon());
            this.ajP.setText(bdfVar.getTitle());
            this.amj.setText(bdfVar.m7565Yu());
            this.ajV.setBackgroundResource(R.drawable.common_show_arrow_right);
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$g */
    /* loaded from: classes.dex */
    class C0891g extends AbstractView$OnClickListenerC0892h {
        private TextView ajP;
        private ImageView amd;
        private ImageView ame;
        private ImageView amf;
        private ImageView amg;
        private ImageView amh;
        private TextView ami;
        private TextView amj;

        public C0891g(View view, InterfaceC0896k interfaceC0896k) {
            super(view, interfaceC0896k);
            this.amd = (ImageView) this.itemView.findViewById(R.id.item_icon);
            this.ajP = (TextView) this.itemView.findViewById(R.id.item_title);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.cv_list_icon_container);
            this.ame = (ImageView) linearLayout.findViewById(R.id.small_icon1);
            this.amf = (ImageView) linearLayout.findViewById(R.id.small_icon2);
            this.amg = (ImageView) linearLayout.findViewById(R.id.small_icon3);
            this.amh = (ImageView) linearLayout.findViewById(R.id.small_icon4);
            this.ami = (TextView) view.findViewById(R.id.more_icon);
            this.amj = (TextView) view.findViewById(R.id.item_describe);
        }

        @Override // com.kingroot.kinguser.agh.AbstractView$OnClickListenerC0892h, com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            bcx bcxVar = (bcx) bcyVar;
            if (bcxVar.m7570Yq().size() <= 4) {
                this.ami.setVisibility(8);
            } else {
                this.ami.setVisibility(0);
            }
            this.amd.setImageDrawable(bcxVar.getIcon());
            this.ajP.setText(bcxVar.getTitle());
            this.amj.setText(String.format(C3953zi.m1311pr().getString(R.string.security_protect_how_many_app_has_been_protected), Integer.valueOf(bcxVar.m7570Yq().size())));
            m11963a(this.ame, bcxVar.m7570Yq(), 0);
            m11963a(this.amf, bcxVar.m7570Yq(), 1);
            m11963a(this.amg, bcxVar.m7570Yq(), 2);
            m11963a(this.amh, bcxVar.m7570Yq(), 3);
        }

        /* renamed from: a */
        private void m11963a(ImageView imageView, List<String> list, int i) {
            try {
                imageView.setVisibility(0);
                C3935yr.m1374pb().m12667a(list.get(i), imageView, R.drawable.engine_black);
            } catch (Throwable th) {
                imageView.setVisibility(8);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$d */
    /* loaded from: classes.dex */
    public static class C0887d extends AbstractC0884a {

        /* renamed from: Vv */
        public TextView f1422Vv;
        public ImageView ajH;
        private ImageView ajV;
        public TextView alT;
        public LinearLayout alU;
        private String alV;
        private String alW;
        private String alX;
        private String alY;
        private boolean alZ;
        public Context context;

        public C0887d(Context context, View view, final InterfaceC0896k interfaceC0896k) {
            super(view);
            this.alZ = false;
            this.context = context;
            C3857ws.m1497h(view);
            ((LinearLayout) view.findViewById(R.id.item_module_header_container)).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agh.d.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    interfaceC0896k.mo8165c(view2, C0887d.this.getAdapterPosition());
                }
            });
            this.ajH = (ImageView) view.findViewById(R.id.item_icon);
            this.f1422Vv = (TextView) view.findViewById(R.id.item_title);
            this.alT = (TextView) view.findViewById(R.id.item_describe);
            this.ajV = (ImageView) this.itemView.findViewById(R.id.expand_icon);
            this.alU = (LinearLayout) view.findViewById(R.id.expandableLayout);
            C3953zi m1311pr = C3953zi.m1311pr();
            this.alV = m1311pr.getString(R.string.security_protect_timestamp_just);
            this.alW = m1311pr.getString(R.string.security_protect_timestamp_min);
            this.alX = m1311pr.getString(R.string.security_protect_timestamp_hour);
            this.alY = m1311pr.getString(R.string.security_protect_timestamp_day);
        }

        @Override // com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            if (!this.alZ) {
                bdb bdbVar = (bdb) bcyVar;
                this.ajH.setImageDrawable(bdbVar.getIcon());
                this.f1422Vv.setText(bdbVar.getTitle());
                this.alT.setText(bdbVar.m7565Yu());
                m11966a(bdbVar, false);
            }
        }

        /* renamed from: a */
        public void m11967a(bdb bdbVar) {
            m11966a(bdbVar, true);
        }

        /* renamed from: a */
        public void m11966a(bdb bdbVar, boolean z) {
            if (bdbVar.m7563gI()) {
                this.alU.setVisibility(0);
                m11968a(this.ajV, 180.0f, z);
                if (!this.alZ) {
                    LayoutInflater from = LayoutInflater.from(this.context);
                    int i = 0;
                    int i2 = 0;
                    while (i < bdbVar.biK.size()) {
                        bde bdeVar = bdbVar.biK.get(i);
                        View inflate = from.inflate(R.layout.list_item_security_protect_unit, (ViewGroup) this.alU, false);
                        ((TextView) inflate.findViewById(R.id.item_title)).setText(bdeVar.getTitle());
                        ((TextView) inflate.findViewById(R.id.item_describe)).setText(m11965af(bdeVar.getTimestamp()));
                        TimeLineView timeLineView = (TimeLineView) inflate.findViewById(R.id.item_icon);
                        int size = bdbVar.biK.size();
                        if (i2 == 0) {
                            timeLineView.m13489b(false, size != 1);
                        } else if (i2 == size - 1) {
                            timeLineView.m13489b(true, false);
                        } else {
                            timeLineView.m13489b(true, true);
                        }
                        this.alU.addView(inflate);
                        i++;
                        i2++;
                    }
                    this.alZ = true;
                    return;
                }
                return;
            }
            this.alU.setVisibility(8);
            m11968a(this.ajV, 0.0f, z);
        }

        /* renamed from: a */
        private void m11968a(View view, float f, boolean z) {
            ViewCompat.animate(view).rotation(f).setDuration(z ? 300L : 0L).start();
        }

        /* renamed from: af */
        private String m11965af(long j) {
            long currentTimeMillis = System.currentTimeMillis() - j;
            if (currentTimeMillis <= BuglyBroadcastRecevier.UPLOADLIMITED) {
                return this.alV;
            }
            if (currentTimeMillis <= 3600000) {
                return (currentTimeMillis / BuglyBroadcastRecevier.UPLOADLIMITED) + this.alW;
            }
            if (currentTimeMillis <= 86400000) {
                return (currentTimeMillis / 3600000) + this.alX;
            }
            return (currentTimeMillis / 86400000) + this.alY;
        }
    }

    /* renamed from: com.kingroot.kinguser.agh$c */
    /* loaded from: classes.dex */
    static class View$OnClickListenerC0886c extends AbstractC0884a implements View.OnClickListener {
        ImageView ajH;
        View ajL;
        TextView ajP;
        private WeakReference<InterfaceC0896k> alK;
        Button alN;
        Button alO;
        Button alP;
        TextView alQ;
        RecyclerView alR;
        View alS;

        public View$OnClickListenerC0886c(View view, InterfaceC0896k interfaceC0896k) {
            super(view);
            this.alK = null;
            C3857ws.m1502a(((ViewGroup) this.itemView).findViewById(R.id.card_container), 2);
            this.alS = view.findViewById(R.id.card_header);
            this.ajH = (ImageView) view.findViewById(R.id.card_header_icon);
            this.ajP = (TextView) view.findViewById(R.id.card_header_title);
            this.alQ = (TextView) view.findViewById(R.id.card_more_text);
            this.alR = (RecyclerView) view.findViewById(R.id.card_desc_list);
            this.alR.setLayoutManager(new FixLinearLayoutManager(this.itemView.getContext()));
            this.alS.setOnClickListener(this);
            this.alN = (Button) view.findViewById(R.id.card_bottom_button);
            this.alN.setOnClickListener(this);
            View inflate = ((ViewStub) view.findViewById(R.id.stub_hidden_buttons)).inflate();
            this.alO = (Button) inflate.findViewById(R.id.btn_ignore);
            this.alO.setOnClickListener(this);
            this.alP = (Button) inflate.findViewById(R.id.btn_trust);
            this.alP.setOnClickListener(this);
            this.ajL = inflate.findViewById(R.id.divider_line);
            if (interfaceC0896k != null) {
                this.alK = new WeakReference<>(interfaceC0896k);
            }
        }

        @Override // com.kingroot.kinguser.agh.AbstractC0884a
        /* renamed from: a */
        void mo11956a(bcy bcyVar) {
            if (bcyVar instanceof bda) {
                bda bdaVar = (bda) bcyVar;
                List<CveCloudListManager.CveInfo> m7569Mq = bdaVar.m7569Mq();
                this.alO.setVisibility(0);
                this.alP.setVisibility(0);
                this.alO.setText(R.string.security_protect_ignore);
                this.alP.setText(R.string.security_protect_trust);
                if (!C3942yy.m1351d(m7569Mq)) {
                    int count = bdaVar.getCount();
                    this.ajP.setText(String.format(C3953zi.m1311pr().getString(R.string.security_protect_cve_card_sub_title), Integer.valueOf(count)));
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new biw.C2363b(3, C3953zi.m1311pr().getString(R.string.security_protect_cve_card_warning)));
                    for (CveCloudListManager.CveInfo cveInfo : m7569Mq) {
                        if (cveInfo != null) {
                            arrayList.add(new biw.C2363b(1, cveInfo.name));
                        }
                    }
                    if (count >= 3) {
                        arrayList.add(new biw.C2363b(2, ""));
                    }
                    this.alR.setAdapter(new biw(arrayList));
                }
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InterfaceC0896k interfaceC0896k;
            if (this.alK != null && (interfaceC0896k = this.alK.get()) != null) {
                switch (view.getId()) {
                    case R.id.btn_ignore /* 2131689695 */:
                        interfaceC0896k.mo8162f(view, getAdapterPosition());
                        return;
                    case R.id.card_header /* 2131689738 */:
                        interfaceC0896k.mo8165c(view, getAdapterPosition());
                        return;
                    case R.id.card_bottom_button /* 2131689743 */:
                        interfaceC0896k.mo8164d(view, getAdapterPosition());
                        return;
                    case R.id.btn_trust /* 2131689763 */:
                        interfaceC0896k.mo8163e(view, getAdapterPosition());
                        return;
                    default:
                        return;
                }
            }
        }
    }
}
