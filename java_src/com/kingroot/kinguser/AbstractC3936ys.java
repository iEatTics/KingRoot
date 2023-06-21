package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
/* renamed from: com.kingroot.kinguser.ys */
/* loaded from: classes.dex */
public abstract class AbstractC3936ys extends AbstractC3921yl {

    /* renamed from: VL */
    private ProgressBar f4042VL;

    /* renamed from: VM */
    private boolean f4043VM;

    /* renamed from: pd */
    protected abstract int mo1369pd();

    public AbstractC3936ys(Context context) {
        super(context);
        this.f4043VM = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        View mo1371oG = super.mo1371oG();
        if (m1407oM() == null) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.addView(mo1371oG, new RelativeLayout.LayoutParams(-1, -1));
            this.f4042VL = (ProgressBar) getLayoutInflater().inflate(mo1369pd(), (ViewGroup) relativeLayout, false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f4042VL.getLayoutParams();
            layoutParams.addRule(13);
            relativeLayout.addView(this.f4042VL, layoutParams);
            return relativeLayout;
        }
        return mo1371oG;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        AbstractC3933yp oM = m1407oM();
        if (oM != null) {
            this.f4042VL = (ProgressBar) getLayoutInflater().inflate(mo1369pd(), oM.getContainer(), false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f4042VL.getLayoutParams();
            layoutParams.addRule(13);
            oM.getContainer().addView(this.f4042VL, layoutParams);
        }
        if (this.f4011Vd != null) {
            this.f4011Vd.setVisibility(8);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        if (this.f4042VL.getVisibility() == 0) {
            this.f4042VL.setVisibility(8);
            if (this.f4011Vd != null) {
                this.f4011Vd.setVisibility(0);
            }
        }
        super.mo1372i(obj);
    }
}
