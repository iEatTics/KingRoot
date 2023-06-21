package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.RecyclerView;
import android.text.Html;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.asf;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class apz extends RecyclerView.Adapter implements asf.InterfaceC1476a {
    private WeakReference<aqf> aKq;
    private EnumC1455b aKs;
    private asf alJ;
    private RecyclerView mRecyclerView;
    private final List<aqc> ajB = new ArrayList();
    private boolean aKr = false;

    /* renamed from: com.kingroot.kinguser.apz$b */
    /* loaded from: classes.dex */
    public enum EnumC1455b {
        MAIN_PAGE,
        RESULT_PAGE
    }

    /* renamed from: Mp */
    private aqf m9649Mp() {
        if (this.aKq != null) {
            return this.aKq.get();
        }
        return null;
    }

    public apz(aqf aqfVar, @NonNull EnumC1455b enumC1455b) {
        this.aKq = null;
        this.aKs = null;
        if (aqfVar != null) {
            this.aKq = new WeakReference<>(aqfVar);
        }
        this.aKs = enumC1455b;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate;
        switch (i) {
            case 0:
                inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_examination_manual_entry, viewGroup, false);
                C3857ws.m1500a(inflate, 1, true);
                break;
            case 1:
                inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_examination_module, viewGroup, false);
                C3857ws.m1500a(inflate, 2, true);
                break;
            case 2:
                inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_examination_module_unit, viewGroup, false);
                break;
            case 3:
                inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_examination_manual_entry_with_ignore, viewGroup, false);
                C3857ws.m1500a(((ViewGroup) inflate).getChildAt(0), 0, true);
                break;
            case 4:
            default:
                return null;
            case 5:
                return new C1454a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.examination_result_detail_page_header, viewGroup, false), i, m9649Mp());
            case 6:
                inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_examination_cloud_guide_entry, viewGroup, false);
                C3857ws.m1500a(((ViewGroup) inflate).getChildAt(0), 2, true);
                break;
        }
        return new View$OnClickListenerC1456c(inflate, i, m9649Mp());
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.alJ = new asf(recyclerView.getContext(), this);
        this.mRecyclerView.addOnItemTouchListener(this.alJ);
    }

    /* renamed from: t */
    public void m9645t(int i, boolean z) {
        View childAt = this.mRecyclerView.getChildAt(i);
        if (childAt != null && this.alJ != null) {
            this.alJ.m9480b(childAt, z);
        }
    }

    /* renamed from: aZ */
    public void m9647aZ(List<aqc> list) {
        if (list != null) {
            synchronized (this.ajB) {
                this.ajB.clear();
                this.ajB.addAll(list);
            }
            if (!C3942yy.m1351d(list) && list.get(0).type == 5) {
                list.remove(0);
            }
            aqd.m9599ba(list);
        }
    }

    /* renamed from: Mq */
    public List<aqc> m9648Mq() {
        ArrayList arrayList;
        synchronized (this.ajB) {
            arrayList = new ArrayList(this.ajB);
        }
        return arrayList;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2;
        synchronized (this.ajB) {
            i2 = this.ajB.get(i).type;
        }
        return i2;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (this.ajB) {
            arrayList.addAll(this.ajB);
        }
        if (arrayList.size() > i) {
            View$OnClickListenerC1456c view$OnClickListenerC1456c = (View$OnClickListenerC1456c) viewHolder;
            aqc aqcVar = (aqc) arrayList.get(i);
            switch (view$OnClickListenerC1456c.aKF) {
                case 0:
                case 3:
                    view$OnClickListenerC1456c.f1528Vv.setText(Html.fromHtml(aqcVar.title != null ? aqcVar.title : ""));
                    view$OnClickListenerC1456c.aKz.setText(aqcVar.description);
                    view$OnClickListenerC1456c.aKt.setText(aqcVar.aKX);
                    view$OnClickListenerC1456c.aKy.setImageDrawable(aqcVar.akK);
                    return;
                case 1:
                    view$OnClickListenerC1456c.f1528Vv.setText(aqcVar.title);
                    view$OnClickListenerC1456c.aKA.setText(aqcVar.aKV);
                    view$OnClickListenerC1456c.aKy.setImageDrawable(aqcVar.akK);
                    if (aqcVar.akd) {
                        aqcVar.akd = false;
                    }
                    view$OnClickListenerC1456c.alk.setBackgroundResource(R.drawable.arrow_down);
                    return;
                case 2:
                    view$OnClickListenerC1456c.f1528Vv.setText(aqcVar.title);
                    view$OnClickListenerC1456c.aKA.setText(Html.fromHtml(aqcVar.aKV != null ? aqcVar.aKV : ""));
                    if (arrayList.size() > i + 1 && 2 != ((aqc) arrayList.get(i + 1)).type) {
                        view$OnClickListenerC1456c.aKG.setVisibility(0);
                        return;
                    } else {
                        view$OnClickListenerC1456c.aKG.setVisibility(8);
                        return;
                    }
                case 4:
                default:
                    return;
                case 5:
                    C1454a c1454a = (C1454a) view$OnClickListenerC1456c;
                    c1454a.aKt.setText(aqcVar.aKW);
                    c1454a.aKu.setText(aqcVar.aKV);
                    Iterator it = C3942yy.m1350e(this.ajB).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                        } else if (((aqc) it.next()).aKZ instanceof aqi) {
                            z = true;
                        }
                    }
                    if (z) {
                        c1454a.aKu.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_exam_detail_status_warning));
                        return;
                    } else {
                        c1454a.aKu.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_exam_detail_status_normal));
                        return;
                    }
                case 6:
                    view$OnClickListenerC1456c.f1528Vv.setText(aqcVar.title);
                    view$OnClickListenerC1456c.aKz.setText(aqcVar.description);
                    view$OnClickListenerC1456c.aKD.setImageDrawable(aqcVar.aLa);
                    if (aqcVar.aKZ instanceof aqj) {
                        if (this.aKr) {
                            view$OnClickListenerC1456c.itemView.setVisibility(0);
                            return;
                        } else {
                            view$OnClickListenerC1456c.itemView.setVisibility(8);
                            return;
                        }
                    }
                    return;
            }
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size;
        synchronized (this.ajB) {
            size = this.ajB.size();
        }
        return size;
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: da */
    public boolean mo7199da(int i) {
        return i == 3;
    }

    @Override // com.kingroot.kinguser.asf.InterfaceC1476a
    /* renamed from: i */
    public int mo7197i(RecyclerView.ViewHolder viewHolder) {
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
        aks.m11143BP().m10778eC(2);
    }

    /* renamed from: com.kingroot.kinguser.apz$a */
    /* loaded from: classes.dex */
    public static class C1454a extends View$OnClickListenerC1456c {
        public TextView aKt;
        public TextView aKu;

        public C1454a(View view, int i, aqf aqfVar) {
            super(view, i, aqfVar);
            this.aKt = (TextView) view.findViewById(R.id.score_text);
            this.aKu = (TextView) view.findViewById(R.id.status_text);
            this.aKt.setTypeface(blg.m6503jH(0));
            this.aKu.setTypeface(blg.m6503jH(0));
        }
    }

    /* renamed from: cG */
    public void m9646cG(boolean z) {
        this.aKr = z;
    }

    /* renamed from: com.kingroot.kinguser.apz$c */
    /* loaded from: classes.dex */
    public static class View$OnClickListenerC1456c extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* renamed from: Vv */
        public TextView f1528Vv;
        public TextView aKA;
        public RecyclerView aKB;
        public C1457a aKC;
        public ImageView aKD;
        public TextView aKE;
        public int aKF;
        public View aKG;
        private WeakReference<aqf> aKq;
        public TextView aKt;
        public ImageView aKy;
        public TextView aKz;
        public ImageView alk;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public View$OnClickListenerC1456c(View view, int i, aqf aqfVar) {
            super(view);
            this.aKq = null;
            this.aKC = new C1457a(view.getContext());
            if (aqfVar != null) {
                this.aKq = new WeakReference<>(aqfVar);
            }
            this.aKF = i;
            this.f1528Vv = (TextView) view.findViewById(R.id.item_title);
            switch (i) {
                case 0:
                    break;
                case 1:
                    this.aKy = (ImageView) view.findViewById(R.id.item_icon);
                    this.aKA = (TextView) view.findViewById(R.id.item_describe);
                    this.alk = (ImageView) view.findViewById(R.id.expand_icon);
                    this.aKB = (RecyclerView) view.findViewById(R.id.list_view);
                    this.aKG = view.findViewById(R.id.item_divider);
                    this.aKB.setAdapter(this.aKC);
                    this.aKB.getItemAnimator().setChangeDuration(0L);
                    this.aKB.setLayoutManager(new FixLinearLayoutManager(view.getContext()));
                    view.setOnClickListener(this);
                    return;
                case 2:
                case 4:
                case 5:
                default:
                    this.aKA = (TextView) view.findViewById(R.id.item_describe);
                    this.aKG = view.findViewById(R.id.item_divider);
                    return;
                case 3:
                    this.aKE = (TextView) view.findViewById(R.id.item_ignore);
                    this.aKE.setOnClickListener(this);
                    break;
                case 6:
                    this.aKD = (ImageView) view.findViewById(R.id.bg);
                    this.f1528Vv = (TextView) view.findViewById(R.id.item_title);
                    this.aKz = (TextView) view.findViewById(R.id.item_sub_title);
                    view.setOnClickListener(this);
                    return;
            }
            this.aKy = (ImageView) view.findViewById(R.id.item_icon);
            this.aKz = (TextView) view.findViewById(R.id.item_title_desc);
            this.aKt = (TextView) view.findViewById(R.id.score_text);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            aqf m9644Mp = m9644Mp();
            if (m9644Mp != null) {
                if (view.getId() == R.id.item_ignore) {
                    m9644Mp.mo9596l(view, getPosition());
                } else {
                    m9644Mp.mo9597c(view, getPosition());
                }
            }
        }

        /* renamed from: Mp */
        private aqf m9644Mp() {
            if (this.aKq != null) {
                return this.aKq.get();
            }
            return null;
        }

        /* renamed from: a */
        public void m9641a(aqc aqcVar, List<aqc> list) {
            if (!aqcVar.akd) {
                ady.m12308tK().mo1746bi(100454);
                m9642a(0, list, false);
                bhk.m6998a(this.aKG, 300L, (AnimatorListenerAdapter) null);
                bhk.m6994b(this.alk, 0.0f, -180.0f, 300L);
                this.aKB.setVisibility(0);
                return;
            }
            m9643Mr();
            bhk.m6999a(this.aKG, 300, (AnimatorListenerAdapter) null);
            bhk.m6994b(this.alk, -180.0f, 0.0f, 300L);
            this.aKB.setVisibility(8);
        }

        /* renamed from: a */
        public void m9642a(int i, List<aqc> list, boolean z) {
            ArrayList arrayList = new ArrayList(list);
            Collections.reverse(arrayList);
            if (this.aKB.getVisibility() != 0) {
                this.aKB.setVisibility(0);
            }
            this.aKC.setData(arrayList);
            if (z && !C3942yy.m1352c(list)) {
                if (i == 3) {
                    this.aKC.notifyItemInserted(0);
                } else if (i == 4) {
                    this.aKC.notifyItemChanged(0);
                }
            }
        }

        /* renamed from: Mr */
        public void m9643Mr() {
            this.aKB.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.kingroot.kinguser.apz$c$a */
        /* loaded from: classes.dex */
        public static class C1457a extends RecyclerView.Adapter<C1458a> {
            private List<aqc> aKH = new ArrayList();
            private final Context mContext;

            public C1457a(@NonNull Context context) {
                this.mContext = context;
            }

            public void setData(List<aqc> list) {
                this.aKH.clear();
                this.aKH.addAll(C3942yy.m1350e(list));
            }

            @Override // android.support.p007v7.widget.RecyclerView.Adapter
            /* renamed from: f */
            public C1458a onCreateViewHolder(ViewGroup viewGroup, int i) {
                return new C1458a(LayoutInflater.from(this.mContext).inflate(R.layout.list_item_examination_module_unit, viewGroup, false));
            }

            @Override // android.support.p007v7.widget.RecyclerView.Adapter
            public int getItemCount() {
                return this.aKH.size();
            }

            @Override // android.support.p007v7.widget.RecyclerView.Adapter
            /* renamed from: a */
            public void onBindViewHolder(C1458a c1458a, int i) {
                c1458a.m9638a(this.aKH.get(i));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.kingroot.kinguser.apz$c$a$a */
            /* loaded from: classes.dex */
            public class C1458a extends RecyclerView.ViewHolder {
                public TextView aKI;
                public ImageView aKJ;

                public C1458a(View view) {
                    super(view);
                    this.aKI = (TextView) view.findViewById(R.id.itemView);
                    this.aKJ = (ImageView) view.findViewById(R.id.status);
                }

                /* renamed from: a */
                public void m9638a(aqc aqcVar) {
                    if (aqcVar != null) {
                        this.aKI.setText(aqcVar.title);
                        if (aqcVar.f1540gw == 4) {
                            this.aKJ.setImageResource(R.drawable.common_tick);
                            Animation animation = this.aKJ.getAnimation();
                            if (animation != null) {
                                animation.cancel();
                            }
                        } else if (aqcVar.f1540gw == 3) {
                            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
                            rotateAnimation.setDuration(400L);
                            rotateAnimation.setRepeatCount(-1);
                            rotateAnimation.setFillAfter(true);
                            this.aKJ.setImageResource(R.drawable.common_check);
                            this.aKJ.startAnimation(rotateAnimation);
                        }
                    }
                }
            }
        }
    }
}
