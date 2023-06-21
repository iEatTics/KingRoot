package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class all extends RecyclerView.Adapter<C1146a> {
    private List<C1148c> ahM;
    private HashMap<ImageView, String> akC = new HashMap<>();
    private InterfaceC1147b axO = null;

    /* renamed from: com.kingroot.kinguser.all$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1147b {
        /* renamed from: a */
        void mo10158a(boolean z, C1148c c1148c);
    }

    public all(List<C1148c> list) {
        this.ahM = list;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: d */
    public C1146a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C1146a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.apps_market_well_chosen_rv_item, viewGroup, false));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(final C1146a c1146a, final int i) {
        C1148c c1148c = this.ahM.get(i);
        this.akC.put(c1146a.ajH, c1148c.axT.iconUrl);
        c1146a.ajI.setText(c1148c.axT.appName);
        c1146a.aga.setChecked(c1148c.akL);
        c1146a.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.all.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                all.this.m10569b(c1146a, i);
            }
        });
        apv.m9735LO().m9730a(c1148c.axT.iconUrl, new C11432(c1146a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.all$2 */
    /* loaded from: classes.dex */
    public class C11432 implements apv.InterfaceC1441b {
        final /* synthetic */ C1146a axP;

        C11432(C1146a c1146a) {
            this.axP = c1146a;
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(final String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.all.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(str, (CharSequence) all.this.akC.get(C11432.this.axP.ajH))) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.all.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C11432.this.axP.ajH.setImageBitmap(bitmap);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m10569b(C1146a c1146a, int i) {
        c1146a.aga.setChecked(!c1146a.aga.isChecked());
        if (this.axO != null) {
            this.axO.mo10158a(c1146a.aga.isChecked(), this.ahM.get(i));
        }
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

    /* renamed from: a */
    public void m10572a(InterfaceC1147b interfaceC1147b) {
        this.axO = interfaceC1147b;
    }

    /* renamed from: oX */
    public List<C1148c> m10567oX() {
        return this.ahM;
    }

    /* renamed from: com.kingroot.kinguser.all$a */
    /* loaded from: classes.dex */
    public static class C1146a extends RecyclerView.ViewHolder {
        public CheckBox aga;
        public ImageView ajH;
        public TextView ajI;

        public C1146a(View view) {
            super(view);
            this.ajI = (TextView) view.findViewById(R.id.name);
            this.aga = (CheckBox) view.findViewById(R.id.checkbox);
            this.ajH = (ImageView) view.findViewById(R.id.icon);
        }
    }

    /* renamed from: com.kingroot.kinguser.all$c */
    /* loaded from: classes.dex */
    public static class C1148c {
        public boolean akL;
        @NonNull
        public AppDownLoadModel axT;

        public C1148c(AppDownLoadModel appDownLoadModel, boolean z) {
            this.akL = false;
            this.akL = z;
            this.axT = (AppDownLoadModel) C3948zd.m1327k(appDownLoadModel);
        }
    }
}
