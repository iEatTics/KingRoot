package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.aud;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class awu extends AbstractC3922ym implements aud.InterfaceC1602b {
    private aud.InterfaceC1601a aVl;
    private View aVm;
    private ViewGroup aVn;
    private ViewGroup aVo;
    private ViewGroup aVp;
    private akj aVq;
    private bcd aVr;
    private View aVs;
    private TextView aVt;
    private TextView aVu;
    private bcp aVv;
    private boolean aVw;

    public awu(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        ady.m12308tK().mo1746bi(100449);
        this.aVm = LayoutInflater.from(getContext()).inflate(R.layout.activity_adapt_ranking, (ViewGroup) null);
        this.aVn = (ViewGroup) this.aVm.findViewById(R.id.refresh_view_container);
        this.aVp = (ViewGroup) this.aVm.findViewById(R.id.refresh_head_view);
        this.aVu = (TextView) this.aVp.findViewById(R.id.description_head_view);
        if (C3946zb.m1331pk()) {
            this.aVm.findViewById(R.id.stub_foot_view1).setVisibility(0);
            this.aVo = (ViewGroup) this.aVm.findViewById(R.id.refresh_foot_view);
            this.aVt = (TextView) this.aVo.findViewById(R.id.description_foot_view);
            this.aVs = this.aVo.findViewById(R.id.kingroot_qr_code);
            this.aVs.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.awu.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    awu.this.m8595Ty();
                }
            });
            this.aVw = false;
            m8594a(getContext(), this.aVs);
        }
        m8591gq();
        return this.aVm;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(this.mContext, m1417V(2131165589L));
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private void m8594a(Context context, View view) {
        String m7811bl;
        if (!this.aVw && (m7811bl = bbk.m7817Wo().m7811bl(context)) != null) {
            Drawable createFromPath = BitmapDrawable.createFromPath(m7811bl);
            if (Build.VERSION.SDK_INT < 16) {
                view.setBackgroundDrawable(createFromPath);
            } else {
                view.setBackground(createFromPath);
            }
            this.aVw = true;
        }
    }

    /* renamed from: y */
    private void m8590y(View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.awu.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (C3946zb.m1331pk()) {
                        awu.this.m8595Ty();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ty */
    public void m8595Ty() {
        if (this.aVv == null) {
            this.aVv = new bcp(getActivity(), getContext());
        }
        this.aVv.show();
    }

    /* renamed from: gq */
    private void m8591gq() {
        this.aVq = akj.m11270aT(KApplication.m13453ge());
        this.aVr = new bcd(KApplication.m13453ge());
        long m11274AL = this.aVq.m11274AL();
        boolean z = false;
        if (m11274AL > 0 && m11274AL <= 200) {
            z = true;
        }
        for (int i = 0; i < 6; i++) {
            if (i == 0 && z) {
                View inflate = LayoutInflater.from(getContext()).inflate(R.layout.kr4_detail_ranking_listview_my_item, (ViewGroup) null);
                this.aVn.addView(inflate, i, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                this.aVr.m7713c(inflate, this.aVq.m11273AM());
                this.aVr.m7715b(inflate, this.aVq.m11283AC());
                this.aVr.m7720I(inflate);
                this.aVr.m7717a(this.aVu, this.aVt);
                m8590y(inflate);
            } else if (i == 5 && m11274AL > 200) {
                View inflate2 = LayoutInflater.from(getContext()).inflate(R.layout.kr4_detail_ranking_listview_my_item, (ViewGroup) null);
                this.aVn.addView(inflate2, i, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                this.aVr.m7713c(inflate2, this.aVq.m11273AM());
                this.aVr.m7715b(inflate2, this.aVq.m11283AC());
                this.aVr.m7720I(inflate2);
                this.aVr.m7722G(inflate2);
                this.aVr.m7716a(this.aVu, this.aVt, m11274AL - 200);
                m8590y(inflate2);
            } else {
                View inflate3 = LayoutInflater.from(getContext()).inflate(R.layout.kr4_detail_ranking_listview_item, (ViewGroup) null);
                this.aVn.addView(inflate3, i, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                if (z) {
                    this.aVr.m7714b(inflate3, this.aVq.m11264dW(i - 1));
                    this.aVr.m7719a(inflate3, this.aVq.m11265dV(i - 1));
                    this.aVr.m7718a(inflate3, this.aVq.m11263dX(i - 1));
                } else {
                    if (this.aVq.m11283AC() - this.aVq.m11265dV(i) == 1) {
                        this.aVr.m7719a(inflate3, this.aVq.m11265dV(i) + 1);
                    } else {
                        this.aVr.m7719a(inflate3, this.aVq.m11265dV(i));
                    }
                    this.aVr.m7714b(inflate3, this.aVq.m11264dW(i));
                    this.aVr.m7718a(inflate3, this.aVq.m11263dX(i));
                }
                if (i == 0 && m11274AL - 5 <= 200) {
                    this.aVr.m7721H(inflate3);
                } else {
                    this.aVr.m7722G(inflate3);
                }
            }
        }
    }

    /* renamed from: a */
    public void m8593a(aud.InterfaceC1601a interfaceC1601a) {
        this.aVl = (aud.InterfaceC1601a) C3948zd.m1327k(interfaceC1601a);
    }
}
