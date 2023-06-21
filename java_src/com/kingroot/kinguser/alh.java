package com.kingroot.kinguser;

import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class alh extends RecyclerView.Adapter<View$OnClickListenerC1093a> {
    private final WeakReference<InterfaceC1095c> awO;
    private List<C1094b> awP = new ArrayList();

    /* renamed from: com.kingroot.kinguser.alh$c */
    /* loaded from: classes.dex */
    public interface InterfaceC1095c {
        /* renamed from: A */
        void mo10106A(String str, int i);

        /* renamed from: z */
        void mo10105z(String str, int i);
    }

    public alh(InterfaceC1095c interfaceC1095c) {
        this.awO = new WeakReference<>(interfaceC1095c);
    }

    /* renamed from: av */
    public void m10612av(List<C1094b> list) {
        this.awP.clear();
        this.awP.addAll(list);
        notifyDataSetChanged();
    }

    /* renamed from: ff */
    public void m10610ff(int i) {
        this.awP.remove(i);
        notifyDataSetChanged();
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: a */
    public View$OnClickListenerC1093a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new View$OnClickListenerC1093a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_with_two_icon, (ViewGroup) null));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(View$OnClickListenerC1093a view$OnClickListenerC1093a, int i) {
        view$OnClickListenerC1093a.m10609a(this.awP.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.awP.size();
    }

    /* renamed from: com.kingroot.kinguser.alh$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC1093a extends RecyclerView.ViewHolder implements View.OnClickListener {
        public ImageView awQ;
        public TextView awR;
        public ImageView awS;

        public View$OnClickListenerC1093a(View view) {
            super(view);
            this.awQ = (ImageView) view.findViewById(R.id.front_img);
            this.awR = (TextView) view.findViewById(R.id.left_textView);
            this.awS = (ImageView) view.findViewById(R.id.end_img);
        }

        /* renamed from: a */
        public void m10609a(C1094b c1094b) {
            switch (c1094b.type) {
                case 1:
                    this.awQ.setVisibility(0);
                    this.awS.setVisibility(0);
                    this.awR.setText(c1094b.content);
                    this.awR.setOnClickListener(this);
                    this.awS.setOnClickListener(this);
                    return;
                case 2:
                    this.awQ.setVisibility(4);
                    this.awS.setVisibility(4);
                    this.awR.setText(c1094b.content);
                    this.awR.setOnClickListener(this);
                    return;
                default:
                    return;
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition;
            if (alh.this.awO.get() != null && (adapterPosition = getAdapterPosition()) != -1) {
                C1094b c1094b = (C1094b) alh.this.awP.get(adapterPosition);
                switch (view.getId()) {
                    case R.id.left_textView /* 2131690064 */:
                        ((InterfaceC1095c) alh.this.awO.get()).mo10106A(c1094b.content, getAdapterPosition());
                        return;
                    case R.id.end_img /* 2131690082 */:
                        ((InterfaceC1095c) alh.this.awO.get()).mo10105z(c1094b.content, getAdapterPosition());
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.alh$b */
    /* loaded from: classes.dex */
    public static class C1094b {
        public String content;
        public int type;

        public C1094b(int i, String str) {
            this.type = i;
            this.content = str;
        }
    }
}
