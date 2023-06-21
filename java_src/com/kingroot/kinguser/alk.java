package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.kingroot.common.uilib.ShapedImageView;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class alk extends RecyclerView.Adapter<View$OnClickListenerC1141a> {
    private float awV = -1.0f;
    private amr axL;
    private Context mContext;
    private RecyclerView mRecyclerView;

    public alk(@NonNull Context context, @NonNull RecyclerView recyclerView) {
        this.mContext = context;
        this.mRecyclerView = recyclerView;
    }

    /* renamed from: a */
    public void m10576a(amr amrVar) {
        this.axL = amrVar;
        notifyItemRangeChanged(0, this.axL.m10434Iz().size() - 1);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: c */
    public View$OnClickListenerC1141a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new View$OnClickListenerC1141a(LayoutInflater.from(this.mContext).inflate(R.layout.app_market_main_topic_item, (ViewGroup) null));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(View$OnClickListenerC1141a view$OnClickListenerC1141a, int i) {
        view$OnClickListenerC1141a.axM.setImageResource(this.axL.m10435Iy().get(i).intValue());
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.axL.m10434Iz().size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.alk$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC1141a extends RecyclerView.ViewHolder implements View.OnClickListener {
        ShapedImageView axM;

        public View$OnClickListenerC1141a(View view) {
            super(view);
            this.axM = (ShapedImageView) view.findViewById(R.id.iv);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AppDownloadActivity.m12644c(alk.this.mContext, C3953zi.m1311pr().getString(alk.this.axL.m10436IA().get(getAdapterPosition()).intValue()), alk.this.axL.m10434Iz().get(getAdapterPosition()).intValue());
        }
    }
}
