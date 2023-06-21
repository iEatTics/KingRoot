package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguser.bhk;
import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class agf extends AbstractC3926yn.AbstractC3927a<RootMgrAppModel> {
    private int alc;
    private View.OnClickListener ald;
    private View.OnClickListener ale;
    private View.OnClickListener alf;

    public agf(Context context, int i) {
        super(context, i);
        this.alc = -1;
    }

    /* renamed from: cZ */
    public void m11973cZ(int i) {
        this.alc = i;
    }

    /* renamed from: vK */
    public int m11970vK() {
        return this.alc;
    }

    /* renamed from: a */
    public void m11974a(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3) {
        this.ald = onClickListener;
        this.ale = onClickListener2;
        this.alf = onClickListener3;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a
    /* renamed from: b */
    public View mo1384b(int i, View view, ViewGroup viewGroup) {
        C0875a c0875a;
        if (view == null) {
            c0875a = new C0875a();
            view = getLayoutInflater().inflate(R.layout.list_view_title, (ViewGroup) null);
            c0875a.afT = (TextView) view.findViewById(this.f4029Vu);
        } else {
            c0875a = (C0875a) view.getTag();
        }
        AbstractC3926yn.C3929b c3929b = (AbstractC3926yn.C3929b) this.f4028Vt.get(i);
        if (c0875a != null && c0875a.afT != null) {
            c0875a.afT.setText(c3929b.title);
        }
        view.setTag(c0875a);
        return view;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a
    /* renamed from: c */
    public View mo1379c(int i, View view, ViewGroup viewGroup) {
        final C0875a c0875a;
        RootMgrAppModel rootMgrAppModel = (RootMgrAppModel) ((AbstractC3926yn.C3929b) this.f4028Vt.get(i)).data;
        if (view == null) {
            c0875a = new C0875a();
            view = getLayoutInflater().inflate(R.layout.list_item_main_root_mgr, (ViewGroup) null);
            c0875a.ajH = (ImageView) view.findViewById(R.id.item_icon);
            c0875a.afT = (TextView) view.findViewById(R.id.item_title);
            c0875a.alj = (TextView) view.findViewById(R.id.use_desc);
            c0875a.ali = (TextView) view.findViewById(R.id.item_describe);
            c0875a.alk = (ImageView) view.findViewById(R.id.expand_icon);
            c0875a.alm = (LinearLayout) view.findViewById(R.id.item_btn_bar);
            c0875a.aln = view.findViewById(R.id.item_first_btn);
            c0875a.alo = view.findViewById(R.id.item_second_btn);
            c0875a.alp = view.findViewById(R.id.item_third_btn);
            c0875a.alq = (TextView) view.findViewById(R.id.risk_tag);
            view.setTag(c0875a);
        } else {
            c0875a = (C0875a) view.getTag();
        }
        if (this.alc != i) {
            bhk.m6995a((View) c0875a.alm, false, new bhk.animationAnimation$AnimationListenerC2285a() { // from class: com.kingroot.kinguser.agf.1
                @Override // com.kingroot.kinguser.bhk.animationAnimation$AnimationListenerC2285a, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    super.onAnimationEnd(animation);
                    c0875a.alm.setVisibility(8);
                }
            });
            m11972f(c0875a.alk, 0.0f);
            c0875a.alj.setSingleLine();
            c0875a.alj.setEllipsize(TextUtils.TruncateAt.END);
        } else {
            c0875a.alm.setVisibility(0);
            bhk.m6995a((View) c0875a.alm, true, (bhk.animationAnimation$AnimationListenerC2285a) null);
            m11972f(c0875a.alk, 180.0f);
            c0875a.aln.setOnClickListener(this.ald);
            c0875a.alo.setOnClickListener(this.ale);
            c0875a.alp.setOnClickListener(this.alf);
            c0875a.alj.setSingleLine(false);
            c0875a.alj.setMaxLines(100);
            c0875a.alj.setEllipsize(null);
        }
        c0875a.afT.setText(rootMgrAppModel.aQQ.m3056PD());
        c0875a.alj.setText(m11971fr(rootMgrAppModel.aQQ.m3055PE()));
        if (rootMgrAppModel.aQS == 0) {
            c0875a.ali.setText(C3953zi.m1311pr().getString(R.string.root_authorization_allow));
            c0875a.ali.setTextColor(C3953zi.m1311pr().getColor(R.color.root_mgr_allow_label));
        } else if (rootMgrAppModel.aQS == 1) {
            c0875a.ali.setText(C3953zi.m1311pr().getString(R.string.root_authorization_deny));
            c0875a.ali.setTextColor(C3953zi.m1311pr().getColor(R.color.root_mgr_forbid_label));
        } else {
            c0875a.ali.setText(C3953zi.m1311pr().getString(R.string.root_authorization_ask));
            c0875a.ali.setTextColor(C3953zi.m1311pr().getColor(R.color.black_1));
        }
        if (rootMgrAppModel.f3142ot == 0) {
            c0875a.alq.setVisibility(8);
            c0875a.afT.setPadding(0, 0, 0, 0);
        } else {
            if (rootMgrAppModel.f3142ot == 1) {
                c0875a.alq.setTextColor(C3953zi.m1311pr().getColor(R.color.app_tag_risk_color));
                c0875a.alq.setBackgroundResource(R.drawable.shape_rounded_background_risk_tag);
                c0875a.alq.setText(R.string.risk_app_tag_text);
            } else if (rootMgrAppModel.f3142ot == 2) {
                c0875a.alq.setTextColor(C3953zi.m1311pr().getColor(R.color.app_tag_careful_color));
                c0875a.alq.setBackgroundResource(R.drawable.shape_rounded_background_careful_tag);
                c0875a.alq.setText(R.string.careful_app_tag_text);
            } else {
                c0875a.alq.setTextColor(C3953zi.m1311pr().getColor(R.color.app_tag_safe_color));
                c0875a.alq.setBackgroundResource(R.drawable.shape_rounded_background_safe_tag);
                c0875a.alq.setText(R.string.safe_app_tag_text);
            }
            c0875a.alq.setVisibility(0);
            int m12835r = abg.m12835r(7.0f) + ((int) bhd.m7061a(c0875a.alq));
            c0875a.afT.setPadding(0, 0, m12835r, 0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) c0875a.alq.getLayoutParams();
            layoutParams.setMargins(-m12835r, 0, 0, 0);
            c0875a.alq.setLayoutParams(layoutParams);
        }
        C3935yr.m1374pb().m12667a(rootMgrAppModel.aQQ.getPackageName(), c0875a.ajH, R.drawable.icon);
        return view;
    }

    /* renamed from: fr */
    private String m11971fr(String str) {
        return TextUtils.isEmpty(str) ? C3953zi.m1311pr().getString(R.string.root_authorization_use_descript_default) : String.format(C3953zi.m1311pr().getString(R.string.root_authorization_use_descript), str);
    }

    /* renamed from: f */
    private void m11972f(View view, float f) {
        ViewCompat.animate(view).rotation(f).setDuration(300L).start();
    }

    /* renamed from: com.kingroot.kinguser.agf$a */
    /* loaded from: classes.dex */
    public class C0875a {
        public TextView afT;
        public ImageView ajH;
        public TextView ali;
        public TextView alj;
        public ImageView alk;
        public LinearLayout alm;
        public View aln;
        public View alo;
        public View alp;
        public TextView alq;

        public C0875a() {
        }
    }
}
