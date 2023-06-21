package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.p004v4.view.ViewCompat;
import android.support.p007v7.widget.RecyclerView;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.common.uilib.QSwitchCheckBox;
import com.kingroot.kinguser.advance.model.AdvancePermModel;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes.dex */
public class agb extends RecyclerView.Adapter {
    private List<C0856e> ajB;
    private WeakReference<InterfaceC0858g> ajC;
    private WeakReference<InterfaceC0857f> ajQ;

    /* renamed from: com.kingroot.kinguser.agb$f */
    /* loaded from: classes.dex */
    public interface InterfaceC0857f {
        /* renamed from: n */
        void mo8581n(int i, boolean z);
    }

    /* renamed from: com.kingroot.kinguser.agb$g */
    /* loaded from: classes.dex */
    public interface InterfaceC0858g {
        /* renamed from: J */
        void mo8582J(int i, int i2);
    }

    public agb(List<C0856e> list, InterfaceC0858g interfaceC0858g, InterfaceC0857f interfaceC0857f) {
        this.ajB = list;
        if (this.ajC == null) {
            this.ajC = new WeakReference<>(interfaceC0858g);
        }
        if (this.ajQ == null) {
            this.ajQ = new WeakReference<>(interfaceC0857f);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new C0850c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_advance_perm_detail_expandable, viewGroup, false));
            case 2:
                return new C0847a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_advance_perm_detail_checkbox, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C0856e c0856e = this.ajB.get(i);
        if (i == this.ajB.size() - 1) {
            c0856e.akf = true;
        }
        switch (c0856e.type) {
            case 1:
                ((C0850c) viewHolder).m11994a(c0856e);
                return;
            case 2:
                ((C0847a) viewHolder).m11997a(c0856e);
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

    /* renamed from: com.kingroot.kinguser.agb$c */
    /* loaded from: classes.dex */
    public class C0850c extends RecyclerView.ViewHolder {
        public View ajG;
        public ImageView ajH;
        public TextView ajI;
        public TextView ajJ;
        private View ajL;
        private ImageView ajV;
        public LinearLayout ajW;
        public View ajX;
        public View ajY;
        public View ajZ;

        public C0850c(View view) {
            super(view);
            this.ajG = view.findViewById(R.id.container);
            this.ajH = (ImageView) view.findViewById(R.id.perm_icon);
            this.ajI = (TextView) view.findViewById(R.id.perm_name);
            this.ajJ = (TextView) view.findViewById(R.id.perm_rule);
            this.ajV = (ImageView) this.itemView.findViewById(R.id.expand_icon);
            this.ajW = (LinearLayout) view.findViewById(R.id.perm_select_panel);
            this.ajX = this.ajW.findViewById(R.id.first_btn);
            this.ajY = this.ajW.findViewById(R.id.second_btn);
            this.ajZ = this.ajW.findViewById(R.id.third_btn);
            this.ajL = this.itemView.findViewById(R.id.divider);
        }

        /* renamed from: a */
        void m11994a(C0856e c0856e) {
            final C0855d c0855d = (C0855d) c0856e;
            this.ajH.setImageDrawable(c0855d.icon);
            this.ajI.setText(c0855d.name);
            this.ajJ.setText(c0855d.akc);
            this.ajG.setClickable(true);
            if (!bbv.m7771WK().m7764WR()) {
                this.ajG.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agb.c.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        c0855d.akd = !c0855d.akd;
                        agb.this.notifyDataSetChanged();
                    }
                });
            } else {
                this.ajG.setClickable(false);
            }
            if (c0855d.ake != null) {
                ((TextView) this.ajX.findViewById(R.id.first_btn_text)).setText(c0855d.ake.akh);
                ((TextView) this.ajY.findViewById(R.id.second_btn_text)).setText(c0855d.ake.aki);
                ((TextView) this.ajZ.findViewById(R.id.third_btn_text)).setText(c0855d.ake.akj);
            }
            this.ajX.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agb.c.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InterfaceC0858g interfaceC0858g = (InterfaceC0858g) agb.this.ajC.get();
                    if (interfaceC0858g != null) {
                        interfaceC0858g.mo8582J(C0850c.this.getAdapterPosition(), 1);
                        c0855d.akd = !c0855d.akd;
                        agb.this.notifyDataSetChanged();
                    }
                }
            });
            this.ajY.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agb.c.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InterfaceC0858g interfaceC0858g = (InterfaceC0858g) agb.this.ajC.get();
                    if (interfaceC0858g != null) {
                        interfaceC0858g.mo8582J(C0850c.this.getAdapterPosition(), 2);
                        c0855d.akd = !c0855d.akd;
                        agb.this.notifyDataSetChanged();
                    }
                }
            });
            this.ajZ.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agb.c.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InterfaceC0858g interfaceC0858g = (InterfaceC0858g) agb.this.ajC.get();
                    if (interfaceC0858g != null) {
                        interfaceC0858g.mo8582J(C0850c.this.getAdapterPosition(), 3);
                        c0855d.akd = !c0855d.akd;
                        agb.this.notifyDataSetChanged();
                    }
                }
            });
            m11995a(c0855d);
        }

        /* renamed from: a */
        public void m11995a(C0855d c0855d) {
            if (c0855d.akd) {
                this.ajW.setVisibility(0);
                m11993f(this.ajV, 180.0f);
                return;
            }
            this.ajW.setVisibility(8);
            m11993f(this.ajV, 0.0f);
        }

        /* renamed from: f */
        private void m11993f(View view, float f) {
            ViewCompat.animate(view).rotation(f).setDuration(300L).start();
        }
    }

    /* renamed from: com.kingroot.kinguser.agb$a */
    /* loaded from: classes.dex */
    public class C0847a extends RecyclerView.ViewHolder {
        private final ImageView ajH;
        private final TextView ajI;
        private final View ajL;
        QSwitchCheckBox ajR;

        public C0847a(View view) {
            super(view);
            this.ajH = (ImageView) view.findViewById(R.id.perm_icon);
            this.ajI = (TextView) view.findViewById(R.id.perm_name);
            this.ajR = (QSwitchCheckBox) view.findViewById(R.id.item_checkbox);
            this.ajL = view.findViewById(R.id.divider);
        }

        /* renamed from: a */
        void m11997a(C0856e c0856e) {
            C0849b c0849b = (C0849b) c0856e;
            this.ajH.setImageDrawable(c0849b.icon);
            this.ajI.setText(c0849b.name);
            this.ajR.setChecked(c0849b.ajU);
            this.ajR.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.kingroot.kinguser.agb.a.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    InterfaceC0857f interfaceC0857f = (InterfaceC0857f) agb.this.ajQ.get();
                    if (interfaceC0857f != null) {
                        interfaceC0857f.mo8581n(C0847a.this.getAdapterPosition(), z);
                    }
                }
            });
        }
    }

    /* renamed from: com.kingroot.kinguser.agb$e */
    /* loaded from: classes.dex */
    public static class C0856e {
        public boolean akf;
        public AdvancePermModel akg;
        public Drawable icon;
        public String name;
        public int type;

        private C0856e(int i, Drawable drawable, String str, AdvancePermModel advancePermModel) {
            this.type = i;
            this.icon = drawable;
            this.name = str;
            this.akg = advancePermModel;
        }
    }

    /* renamed from: com.kingroot.kinguser.agb$d */
    /* loaded from: classes.dex */
    public static class C0855d extends C0856e {
        public Spanned akc;
        public boolean akd;
        public C0859h ake;

        private C0855d(Drawable drawable, String str, Spanned spanned, boolean z, C0859h c0859h, AdvancePermModel advancePermModel) {
            super(1, drawable, str, advancePermModel);
            this.akc = spanned;
            this.akd = z;
            this.ake = c0859h;
        }

        /* renamed from: a */
        public static C0855d m11992a(Drawable drawable, String str, Spanned spanned, boolean z, C0859h c0859h, AdvancePermModel advancePermModel) {
            return new C0855d(drawable, str, spanned, z, c0859h, advancePermModel);
        }
    }

    /* renamed from: com.kingroot.kinguser.agb$b */
    /* loaded from: classes.dex */
    public static class C0849b extends C0856e {
        boolean ajU;

        public C0849b(Drawable drawable, String str, boolean z, AdvancePermModel advancePermModel) {
            super(2, drawable, str, advancePermModel);
            this.ajU = z;
        }

        /* renamed from: a */
        public static C0849b m11996a(Drawable drawable, String str, boolean z, AdvancePermModel advancePermModel) {
            return new C0849b(drawable, str, z, advancePermModel);
        }
    }

    /* renamed from: com.kingroot.kinguser.agb$h */
    /* loaded from: classes.dex */
    public static class C0859h {
        Spanned akh;
        Spanned aki;
        Spanned akj;

        private C0859h(Spanned spanned, Spanned spanned2, Spanned spanned3) {
            this.akh = spanned;
            this.aki = spanned2;
            this.akj = spanned3;
        }

        /* renamed from: a */
        public static C0859h m11991a(Spanned spanned, Spanned spanned2, Spanned spanned3) {
            return new C0859h(spanned, spanned2, spanned3);
        }
    }
}
