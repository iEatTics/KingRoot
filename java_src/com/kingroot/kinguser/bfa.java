package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public abstract class bfa extends bez {
    protected TextView aFj;
    protected ImageView ahP;
    protected TextView bgq;
    protected ImageView blQ;
    protected TextView blR;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZE */
    public void mo7286ZE() {
        this.ahP = (ImageView) this.mView.findViewById(R.id.item_icon);
        this.aFj = (TextView) this.mView.findViewById(R.id.item_title);
        this.bgq = (TextView) this.mView.findViewById(R.id.item_description);
        this.blQ = (ImageView) this.mView.findViewById(R.id.item_new_tag);
        this.blR = (TextView) this.mView.findViewById(R.id.item_tips);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: r */
    public void mo7285r(Object obj) {
        if (obj != null) {
            this.blN = (ToolBoxView.C3655a) obj;
            m7349b(this.blN);
            m7348c(this.blN);
            m7347d(this.blN);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: s */
    public void mo7284s(Object obj) {
        if (obj != null) {
            this.blN = (ToolBoxView.C3655a) obj;
            m7346e(this.blN);
        }
    }

    /* renamed from: b */
    protected void m7349b(ToolBoxView.C3655a c3655a) {
        if (!TextUtils.isEmpty(c3655a.iconUrl)) {
            apv.m9735LO().m9730a(c3655a.iconUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.bfa.1
                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: a */
                public void mo4137a(String str, final Bitmap bitmap) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bfa.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bfa.this.ahP.setImageBitmap(bitmap);
                        }
                    });
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                /* renamed from: eE */
                public void mo4136eE(String str) {
                }
            });
        }
    }

    /* renamed from: c */
    protected void m7348c(ToolBoxView.C3655a c3655a) {
        if (!TextUtils.isEmpty(c3655a.mainTitle)) {
            this.aFj.setText(c3655a.mainTitle);
        }
    }

    /* renamed from: d */
    protected void m7347d(ToolBoxView.C3655a c3655a) {
        if (!TextUtils.isEmpty(c3655a.softTitle)) {
            this.bgq.setText(c3655a.softTitle);
        }
    }

    /* renamed from: e */
    protected void m7346e(ToolBoxView.C3655a c3655a) {
        if (c3655a.bmJ) {
            this.blQ.setVisibility(0);
        } else {
            this.blQ.setVisibility(8);
        }
    }
}
