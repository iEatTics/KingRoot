package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes.dex */
public class alc extends RecyclerView.Adapter {
    private List<amc> ahM;
    private WeakReference<InterfaceC1055a> alK;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.alc$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1055a {
        /* renamed from: c */
        void mo10226c(View view, int i);
    }

    public alc(@NonNull Context context, List<amc> list, InterfaceC1055a interfaceC1055a) {
        this.alK = null;
        this.ahM = list;
        this.mContext = context;
        if (interfaceC1055a != null) {
            this.alK = new WeakReference<>(interfaceC1055a);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C1056b(LayoutInflater.from(this.mContext).inflate(R.layout.list_item_app_detail_image_item, viewGroup, false));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((C1056b) viewHolder).m10642a(this.ahM.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ahM == null) {
            return 0;
        }
        return this.ahM.size();
    }

    /* renamed from: com.kingroot.kinguser.alc$b */
    /* loaded from: classes.dex */
    class C1056b extends RecyclerView.ViewHolder {

        /* renamed from: NE */
        public ImageView f1470NE;

        public C1056b(View view) {
            super(view);
            this.f1470NE = (ImageView) view.findViewById(R.id.detail_image);
        }

        /* renamed from: a */
        public void m10642a(amc amcVar) {
            if (amcVar.m10447Ig() != null) {
                this.f1470NE.setImageBitmap(amcVar.m10447Ig());
            }
            this.f1470NE.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.alc.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (alc.this.alK != null && alc.this.alK.get() != null) {
                        ((InterfaceC1055a) alc.this.alK.get()).mo10226c(view, C1056b.this.getAdapterPosition());
                    }
                }
            });
        }
    }
}
