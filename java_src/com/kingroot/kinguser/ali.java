package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class ali extends RecyclerView.Adapter<View$OnClickListenerC1099a> {
    private List<AppBaseModel> awU;
    private Context mContext;
    private RecyclerView mRecyclerView;
    private HashMap<ImageView, String> akC = new HashMap<>();
    private float awV = -1.0f;

    public ali(@NonNull Context context, @NonNull RecyclerView recyclerView) {
        this.mContext = context;
        this.mRecyclerView = recyclerView;
    }

    /* renamed from: aw */
    public void m10606aw(List<AppBaseModel> list) {
        this.awU = list;
        notifyItemRangeChanged(0, list.size() - 1);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: b */
    public View$OnClickListenerC1099a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new View$OnClickListenerC1099a(LayoutInflater.from(this.mContext).inflate(R.layout.app_market_main_app_item, viewGroup, false));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(View$OnClickListenerC1099a view$OnClickListenerC1099a, int i) {
        AppBaseModel appBaseModel = this.awU.get(i);
        this.akC.put(view$OnClickListenerC1099a.afU, appBaseModel.iconUrl);
        view$OnClickListenerC1099a.afU.setImageResource(R.drawable.default_app);
        apv.m9735LO().m9730a(appBaseModel.iconUrl, new C10961(view$OnClickListenerC1099a));
        view$OnClickListenerC1099a.afV.setText(appBaseModel.appName);
        view$OnClickListenerC1099a.axa.setText(C3953zi.m1311pr().getString(R.string.app_download_count, anf.m10286bP(appBaseModel.downloadCount)));
        ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), appBaseModel.reportInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ali$1 */
    /* loaded from: classes.dex */
    public class C10961 implements apv.InterfaceC1441b {
        final /* synthetic */ View$OnClickListenerC1099a awW;

        C10961(View$OnClickListenerC1099a view$OnClickListenerC1099a) {
            this.awW = view$OnClickListenerC1099a;
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(final String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.ali.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(str, (CharSequence) ali.this.akC.get(C10961.this.awW.afU))) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.ali.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C10961.this.awW.afU.setImageBitmap(bitmap);
                            }
                        });
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: eE */
        public void mo4136eE(String str) {
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.awU.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ali$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC1099a extends RecyclerView.ViewHolder implements View.OnClickListener {
        public ImageView afU;
        public TextView afV;
        public TextView axa;

        public View$OnClickListenerC1099a(View view) {
            super(view);
            view.setOnClickListener(this);
            this.afU = (ImageView) view.findViewById(R.id.icon);
            this.axa = (TextView) view.findViewById(R.id.download_count);
            this.afV = (TextView) view.findViewById(R.id.app_name);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AppDetailActivity.m12647a(ali.this.mContext, new AppDownLoadModel((AppBaseModel) ali.this.awU.get(getAdapterPosition())));
        }
    }
}
