package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes.dex */
public class aga extends RecyclerView.Adapter {
    private List<C0839a> ajB;
    private WeakReference<InterfaceC0840b> ajC;

    /* renamed from: com.kingroot.kinguser.aga$a */
    /* loaded from: classes.dex */
    public static class C0839a {
        int type;
    }

    /* renamed from: com.kingroot.kinguser.aga$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0840b {
        /* renamed from: fn */
        void mo8571fn(String str);
    }

    public aga(List<C0839a> list, InterfaceC0840b interfaceC0840b) {
        this.ajB = list;
        if (this.ajC == null) {
            this.ajC = new WeakReference<>(interfaceC0840b);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new C0845f(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_title_item_advance_perm_app_list, viewGroup, false));
            case 2:
                return new C0842d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_advance_perm_app, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C0839a c0839a = this.ajB.get(i);
        switch (c0839a.type) {
            case 1:
                ((C0845f) viewHolder).m12000a((C0844e) c0839a);
                return;
            case 2:
                ((C0842d) viewHolder).m12002a((C0841c) c0839a);
                return;
            default:
                return;
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.ajB.get(i).type;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.ajB.size();
    }

    /* renamed from: com.kingroot.kinguser.aga$f */
    /* loaded from: classes.dex */
    public class C0845f extends RecyclerView.ViewHolder {
        TextView ajP;

        public C0845f(View view) {
            super(view);
            this.ajP = null;
            this.ajP = (TextView) view.findViewById(R.id.title);
        }

        /* renamed from: a */
        public void m12000a(C0844e c0844e) {
            this.ajP.setText(c0844e.title);
        }
    }

    /* renamed from: com.kingroot.kinguser.aga$d */
    /* loaded from: classes.dex */
    public class C0842d extends RecyclerView.ViewHolder {
        View ajG;
        ImageView ajH;
        TextView ajI;
        TextView ajJ;
        View ajK;
        View ajL;

        public C0842d(View view) {
            super(view);
            this.ajG = null;
            this.ajH = null;
            this.ajI = null;
            this.ajJ = null;
            this.ajK = null;
            this.ajL = null;
            this.ajG = view.findViewById(R.id.container);
            this.ajH = (ImageView) view.findViewById(R.id.icon);
            this.ajI = (TextView) view.findViewById(R.id.main_text);
            this.ajJ = (TextView) view.findViewById(R.id.sub_text);
            this.ajK = view.findViewById(R.id.risk_icon);
            this.ajL = view.findViewById(R.id.top_divider);
        }

        /* renamed from: a */
        public void m12002a(C0841c c0841c) {
            if (c0841c != null) {
                final String str = c0841c.packageName;
                this.ajG.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aga.d.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        InterfaceC0840b interfaceC0840b = (InterfaceC0840b) aga.this.ajC.get();
                        if (interfaceC0840b != null) {
                            interfaceC0840b.mo8571fn(str);
                        }
                    }
                });
                this.ajH.setImageDrawable(c0841c.icon);
                this.ajI.setText(c0841c.name);
                this.ajJ.setText(c0841c.desc);
                this.ajK.setVisibility(c0841c.ajD ? 0 : 8);
                if (c0841c.ajE) {
                    this.ajL.setVisibility(0);
                } else {
                    this.ajL.setVisibility(8);
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.aga$c */
    /* loaded from: classes.dex */
    public static class C0841c extends C0839a {
        boolean ajD;
        public boolean ajE;
        public boolean ajF;
        String desc;
        Drawable icon;
        boolean isSystem;
        public String name;
        String packageName;

        private C0841c(String str, Drawable drawable, String str2, String str3, boolean z, boolean z2) {
            this.type = 2;
            this.packageName = str;
            this.icon = drawable;
            this.name = str2;
            this.desc = str3;
            this.ajD = z;
            this.isSystem = z2;
        }

        /* renamed from: a */
        public static C0841c m12003a(String str, Drawable drawable, String str2, String str3, boolean z, boolean z2) {
            return new C0841c(str, drawable, str2, str3, z, z2);
        }
    }

    /* renamed from: com.kingroot.kinguser.aga$e */
    /* loaded from: classes.dex */
    public static class C0844e extends C0839a {
        String title;

        private C0844e(String str) {
            this.type = 1;
            this.title = str;
        }

        /* renamed from: fo */
        public static C0844e m12001fo(String str) {
            return new C0844e(str);
        }
    }
}
