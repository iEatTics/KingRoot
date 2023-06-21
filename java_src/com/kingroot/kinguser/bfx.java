package com.kingroot.kinguser;

import android.content.Context;
import android.support.p007v7.widget.RecyclerView;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.asf;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bfx extends RecyclerView.Adapter implements asf.InterfaceC1476a {
    private List<UrlCheckLog> ahM;
    private asf alJ;
    private WeakReference<InterfaceC2226d> alK;
    private WeakReference<InterfaceC2227e> bnK;
    private RecyclerView mRecyclerView;

    /* renamed from: com.kingroot.kinguser.bfx$d */
    /* loaded from: classes.dex */
    public interface InterfaceC2226d {
        /* renamed from: e */
        void mo7170e(View view, int i);

        /* renamed from: p */
        void mo7154p(View view, int i);
    }

    /* renamed from: com.kingroot.kinguser.bfx$e */
    /* loaded from: classes.dex */
    public interface InterfaceC2227e {
        /* renamed from: c */
        void mo7139c(View view, int i);

        /* renamed from: e */
        void mo7136e(View view, int i);

        /* renamed from: q */
        void mo7128q(View view, int i);
    }

    public bfx(List<UrlCheckLog> list, InterfaceC2226d interfaceC2226d, InterfaceC2227e interfaceC2227e) {
        this.alK = null;
        if (interfaceC2226d != null) {
            this.alK = new WeakReference<>(interfaceC2226d);
        }
        if (interfaceC2227e != null) {
            this.bnK = new WeakReference<>(interfaceC2227e);
        }
        this.ahM = list;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 1:
                return new View$OnClickListenerC2223b(from.inflate(R.layout.list_item_url_check_recycle_item, viewGroup, false), this.alK.get());
            case 2:
                return new View$OnClickListenerC2224c(from.inflate(R.layout.list_item_url_check_risk_log, viewGroup, false), this.bnK.get());
            default:
                return null;
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((AbstractC2222a) viewHolder).mo7191j(this.ahM.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (C3942yy.m1351d(this.ahM) || i > this.ahM.size() || i < 0) {
            return 0;
        }
        return this.ahM.get(i).bnx ? 1 : 2;
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
        if (viewHolder.itemView instanceof LinearLayout) {
            ViewGroup viewGroup = (ViewGroup) viewHolder.itemView;
            if (viewGroup.getChildCount() == 3) {
                return viewGroup.getChildAt(1).getLayoutParams().width * 2;
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

    /* renamed from: r */
    public void m7196r(int i, boolean z) {
        View childAt = this.mRecyclerView.getChildAt(i);
        if (childAt != null) {
            this.alJ.m9478c(childAt, z);
        }
    }

    /* renamed from: com.kingroot.kinguser.bfx$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC2222a extends RecyclerView.ViewHolder {
        /* renamed from: j */
        public abstract void mo7191j(UrlCheckLog urlCheckLog);

        public AbstractC2222a(View view) {
            super(view);
        }
    }

    /* renamed from: com.kingroot.kinguser.bfx$b */
    /* loaded from: classes.dex */
    public static class View$OnClickListenerC2223b extends AbstractC2222a implements View.OnClickListener {
        private WeakReference<InterfaceC2226d> alK;
        public TextView awm;
        public TextView bnL;
        public TextView bnM;
        public TextView bnN;

        public View$OnClickListenerC2223b(View view, InterfaceC2226d interfaceC2226d) {
            super(view);
            this.alK = null;
            this.bnL = (TextView) view.findViewById(R.id.item_title);
            this.bnM = (TextView) view.findViewById(R.id.item_description1);
            this.awm = (TextView) view.findViewById(R.id.item_clear);
            this.bnN = (TextView) view.findViewById(R.id.item_trust);
            if (interfaceC2226d != null) {
                this.alK = new WeakReference<>(interfaceC2226d);
            }
        }

        @Override // com.kingroot.kinguser.bfx.AbstractC2222a
        /* renamed from: j */
        public void mo7191j(UrlCheckLog urlCheckLog) {
            this.bnL.setText(urlCheckLog.url);
            String valueOf = String.valueOf(urlCheckLog.bnu);
            if (urlCheckLog.bnu >= 999) {
                valueOf = valueOf + "+";
            }
            this.bnM.setText(C3953zi.m1311pr().getString(R.string.urlcheck_log_desc, urlCheckLog.aaP(), valueOf));
            this.bnN.setOnClickListener(this);
            this.awm.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition;
            if (this.alK != null && this.alK.get() != null && (adapterPosition = getAdapterPosition()) != -1) {
                switch (view.getId()) {
                    case R.id.item_trust /* 2131689883 */:
                        this.alK.get().mo7170e(view, adapterPosition);
                        return;
                    case R.id.item_clear /* 2131690078 */:
                        this.alK.get().mo7154p(view, adapterPosition);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bfx$c */
    /* loaded from: classes.dex */
    public static class View$OnClickListenerC2224c extends AbstractC2222a implements View.OnClickListener {
        private WeakReference<InterfaceC2227e> alK;
        public TextView bnL;
        public TextView bnM;
        public ImageView bnO;

        public View$OnClickListenerC2224c(View view, InterfaceC2227e interfaceC2227e) {
            super(view);
            view.setOnClickListener(this);
            this.bnL = (TextView) view.findViewById(R.id.item_title);
            this.bnM = (TextView) view.findViewById(R.id.item_description1);
            this.bnO = (ImageView) view.findViewById(R.id.option_icon);
            this.bnO.setOnClickListener(this);
            if (interfaceC2227e != null) {
                this.alK = new WeakReference<>(interfaceC2227e);
            }
        }

        /* renamed from: g */
        private void m7192g(View view, final int i) {
            Context context = view.getContext();
            final aic aicVar = new aic(context, view);
            ArrayList arrayList = new ArrayList();
            arrayList.add(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_intercept));
            arrayList.add(C3953zi.m1311pr().getString(R.string.security_protect_trust));
            aic.C0981b c0981b = new aic.C0981b(context, arrayList, false, null);
            aicVar.m11674Y(arrayList);
            aicVar.m11673a(c0981b);
            aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bfx.c.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j) {
                    aicVar.dismiss();
                    switch (i2) {
                        case 0:
                            if (View$OnClickListenerC2224c.this.alK != null) {
                                ((InterfaceC2227e) View$OnClickListenerC2224c.this.alK.get()).mo7128q(view2, i);
                                return;
                            }
                            return;
                        case 1:
                            if (View$OnClickListenerC2224c.this.alK != null) {
                                ((InterfaceC2227e) View$OnClickListenerC2224c.this.alK.get()).mo7136e(view2, i);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
            });
            aicVar.show();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.option_icon /* 2131690079 */:
                    m7192g(view, getAdapterPosition());
                    return;
                default:
                    int adapterPosition = getAdapterPosition();
                    if (adapterPosition >= 0 && this.alK != null) {
                        this.alK.get().mo7139c(view, adapterPosition);
                        return;
                    }
                    return;
            }
        }

        @Override // com.kingroot.kinguser.bfx.AbstractC2222a
        /* renamed from: j */
        public void mo7191j(UrlCheckLog urlCheckLog) {
            this.bnL.setText(urlCheckLog.url);
            this.bnM.setText(C3953zi.m1311pr().getString(R.string.urlcheck_risk_log_desc, urlCheckLog.aaP(), urlCheckLog.aaQ()));
        }
    }
}
