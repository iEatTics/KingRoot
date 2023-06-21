package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.common.uilib.ShapedImageView;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.CategoryEntity;
import com.kingroot.kinguses.R;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class anv extends AbstractC3922ym {
    private final List<CategoryEntity> aEn;
    private C1336a aEo;
    private ProgressWhell aEp;
    private ant aEq;
    private List<String> aEr;
    private View mEmptyView;
    private RecyclerView mRecyclerView;
    private int mType;

    public anv(Context context, ant antVar, List<CategoryEntity> list, int i) {
        super(context);
        this.aEr = Arrays.asList("腾讯软件");
        this.aEn = list;
        this.aEq = antVar;
        this.mType = i;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.layout_apps_market_soft_category, (ViewGroup) null);
        this.mRecyclerView = (RecyclerView) inflate.findViewById(R.id.list);
        this.aEo = new C1336a(getContext(), this.aEn, this.mType);
        this.mRecyclerView.setLayoutManager(new FixLinearLayoutManager(this.mContext, 1, false));
        this.mRecyclerView.setAdapter(this.aEo);
        this.mRecyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.kingroot.kinguser.anv.1
            @Override // android.support.p007v7.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                super.getItemOffsets(rect, view, recyclerView, state);
                if (recyclerView.getChildLayoutPosition(view) == 0) {
                    rect.set(rect.left, rect.top + abg.m12835r(8.0f), rect.right, rect.bottom);
                }
            }
        });
        this.aEp = (ProgressWhell) inflate.findViewById(R.id.loading_progress);
        this.aEp.setVisibility(0);
        this.aEp.setBarColor(C3953zi.m1311pr().getColor(R.color.blue_0));
        this.aEp.setProgress(0.0f);
        this.aEp.setBarWidth(abg.m12835r(2.0f));
        this.aEp.setCircleRadius(abg.m12835r(20.0f));
        this.aEp.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.anv.2
            @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
            /* renamed from: d */
            public void mo6827d(float f) {
                if (f == 0.0f) {
                    anv.this.aEp.setProgress(1.0f);
                } else if (f == 1.0f) {
                    anv.this.aEp.setProgress(0.0f);
                }
            }
        });
        this.mEmptyView = ((ViewStub) inflate.findViewById(R.id.list_empty)).inflate();
        this.mEmptyView.setBackgroundResource(R.color.card_background);
        ((TextView) this.mEmptyView.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131166179L));
        this.mEmptyView.setVisibility(8);
        this.mEmptyView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anv.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                anv.this.aEq.m10093sb();
            }
        });
        return inflate;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oR */
    public void mo1402oR() {
        super.mo1402oR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
    }

    /* renamed from: JC */
    public void m10041JC() {
        this.aEo.notifyDataSetChanged();
        if (C3942yy.m1351d(this.aEn)) {
            this.mRecyclerView.setVisibility(4);
            this.mEmptyView.setVisibility(0);
        } else {
            this.mRecyclerView.setVisibility(0);
            this.mEmptyView.setVisibility(8);
            m10039JL();
        }
        this.aEp.setVisibility(8);
        this.aEp.m13556gT();
    }

    @UiThread
    /* renamed from: JL */
    private void m10039JL() {
        Iterator it = C3942yy.m1350e(this.aEn).iterator();
        while (it.hasNext()) {
            if (this.aEr.contains(((CategoryEntity) it.next()).mTitle)) {
                it.remove();
            }
        }
    }

    /* renamed from: JD */
    public void m10040JD() {
        this.mRecyclerView.setVisibility(4);
        this.mEmptyView.setVisibility(8);
        this.aEp.setVisibility(0);
        this.aEp.m13555gU();
    }

    /* renamed from: com.kingroot.kinguser.anv$a */
    /* loaded from: classes.dex */
    public static class C1336a extends RecyclerView.Adapter<C1341a> {
        private List<CategoryEntity> aEn;
        private final Context mContext;
        private final int mType;

        public C1336a(@NonNull Context context, @NonNull List<CategoryEntity> list, int i) {
            this.mContext = context;
            this.aEn = list;
            this.mType = i;
        }

        @Override // android.support.p007v7.widget.RecyclerView.Adapter
        /* renamed from: e */
        public C1341a onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C1341a(LayoutInflater.from(this.mContext).inflate(R.layout.app_market_category_list_item, viewGroup, false));
        }

        @Override // android.support.p007v7.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(final C1341a c1341a, int i) {
            final CategoryEntity categoryEntity = this.aEn.get(i);
            c1341a.aEx.setText(categoryEntity.mTitle);
            c1341a.amM.setText(categoryEntity.mContent);
            c1341a.iconUrl = categoryEntity.mIconUrl;
            c1341a.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anv.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AppDownloadActivity.m12644c(C1336a.this.mContext, categoryEntity.mTitle, categoryEntity.mID);
                    if (C1336a.this.mType != 1) {
                        if (C1336a.this.mType == 2) {
                            ady.m12308tK().mo1746bi(100673);
                            return;
                        }
                        return;
                    }
                    ady.m12308tK().mo1746bi(100672);
                }
            });
            apv.m9735LO().m9730a(categoryEntity.mIconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.anv.a.2
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(final String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anv.a.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TextUtils.equals(c1341a.iconUrl, str)) {
                                c1341a.aEy.setImageBitmap(bitmap);
                            }
                        }
                    });
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: eE */
                public void mo4136eE(final String str) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anv.a.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TextUtils.equals(c1341a.iconUrl, str)) {
                                c1341a.aEy.setImageResource(R.drawable.default_app);
                            }
                        }
                    });
                }
            });
        }

        @Override // android.support.p007v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.aEn.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.kingroot.kinguser.anv$a$a */
        /* loaded from: classes.dex */
        public class C1341a extends RecyclerView.ViewHolder {
            public TextView aEx;
            public ShapedImageView aEy;
            public TextView amM;
            public String iconUrl;

            public C1341a(View view) {
                super(view);
                this.aEx = (TextView) view.findViewById(R.id.main_title);
                this.amM = (TextView) view.findViewById(R.id.sub_title);
                this.aEy = (ShapedImageView) view.findViewById(R.id.icon);
            }
        }
    }
}
