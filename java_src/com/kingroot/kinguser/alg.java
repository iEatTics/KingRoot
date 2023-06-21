package com.kingroot.kinguser;

import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes.dex */
public class alg extends RecyclerView.Adapter {
    private List<aml> ahM;
    private WeakReference<InterfaceC1090a> alK;

    /* renamed from: com.kingroot.kinguser.alg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1090a {
        /* renamed from: y */
        void mo10107y(String str, int i);
    }

    public alg(List<aml> list, InterfaceC1090a interfaceC1090a) {
        this.alK = null;
        this.ahM = list;
        if (interfaceC1090a != null) {
            this.alK = new WeakReference<>(interfaceC1090a);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C1091b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_hot_word_recycle_item, viewGroup, false), m10619GO());
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((C1091b) viewHolder).m10616a(this.ahM.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return super.getItemViewType(i);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.size();
    }

    /* renamed from: com.kingroot.kinguser.alg$b */
    /* loaded from: classes.dex */
    public class C1091b extends RecyclerView.ViewHolder {
        private WeakReference<InterfaceC1090a> alK;
        public TextView awK;

        public C1091b(View view, InterfaceC1090a interfaceC1090a) {
            super(view);
            this.alK = null;
            if (interfaceC1090a != null) {
                this.alK = new WeakReference<>(interfaceC1090a);
            }
            this.awK = (TextView) view.findViewById(R.id.hot_word_text);
            this.awK.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alg.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    aml amlVar;
                    if (C1091b.this.alK != null && C1091b.this.alK.get() != null && (amlVar = (aml) alg.this.ahM.get(C1091b.this.getAdapterPosition())) != null) {
                        ((InterfaceC1090a) C1091b.this.alK.get()).mo10107y(amlVar.azM, C1091b.this.getAdapterPosition());
                    }
                }
            });
        }

        /* renamed from: a */
        public void m10616a(aml amlVar) {
            this.awK.setText(amlVar.azM);
        }
    }

    /* renamed from: GO */
    private InterfaceC1090a m10619GO() {
        if (this.alK != null) {
            return this.alK.get();
        }
        return null;
    }
}
