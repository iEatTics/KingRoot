package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.utils.p011ui.ImageViewDot;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class acw extends AbstractC3933yp {
    protected View abA;
    protected View abB;
    protected ImageViewDot abC;
    protected ImageViewDot abD;
    protected View abE;
    protected TextView abF;
    protected TextView abG;
    private int abv;
    protected ImageView abw;
    protected ViewGroup abx;
    protected TextView aby;
    protected TextView abz;

    public acw(Context context, String str) {
        super(context, str);
        this.abv = 0;
    }

    /* renamed from: sf */
    private void m12557sf() {
        switch (this.abv) {
            case 0:
                this.abx.setVisibility(8);
                this.aby.setVisibility(0);
                m12558ez(getTitle());
                return;
            case 1:
                this.abx.setVisibility(0);
                this.aby.setVisibility(8);
                m12559ey(getTitle());
                return;
            case 2:
                this.abx.setVisibility(8);
                this.abA.setVisibility(8);
                this.abB.setVisibility(8);
                this.aby.setVisibility(0);
                m12558ez(getTitle());
                return;
            default:
                return;
        }
    }

    /* renamed from: ck */
    public void m12560ck(int i) {
        this.abv = i;
        m12557sf();
    }

    @Override // com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oY */
    protected View mo1368oY() {
        try {
            return getLayoutInflater().inflate(R.layout.template_common, (ViewGroup) null);
        } catch (Throwable th) {
            return new View(getContext());
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oZ */
    protected ViewGroup mo1367oZ() {
        return (ViewGroup) getWholeView().findViewById(R.id.container);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: pa */
    public void mo1366pa() {
        this.abx = (ViewGroup) getWholeView().findViewById(R.id.left_button);
        this.abw = (ImageView) getWholeView().findViewById(R.id.left_iv);
        this.aby = (TextView) getWholeView().findViewById(R.id.center_title);
        this.abA = getWholeView().findViewById(R.id.right_btn);
        this.abB = getWholeView().findViewById(R.id.right_btn2);
        this.abC = (ImageViewDot) getWholeView().findViewById(R.id.right_iv);
        this.abC.setDotDrawable(C3953zi.m1311pr().getDrawable(R.drawable.tip_dot_shape));
        this.abD = (ImageViewDot) getWholeView().findViewById(R.id.right_iv2);
        this.abD.setDotDrawable(C3953zi.m1311pr().getDrawable(R.drawable.tip_dot_shape));
        this.abF = (TextView) getWholeView().findViewById(R.id.right_tv);
        this.abG = (TextView) getWholeView().findViewById(R.id.right_tv2);
        this.abz = (TextView) getWholeView().findViewById(R.id.left_title);
        this.abE = getWholeView().findViewById(R.id.title_bar);
        m12557sf();
    }

    /* renamed from: c */
    public void m12562c(Drawable drawable) {
        if (drawable != null) {
            this.abC.setImageDrawable(drawable);
            this.abA.setVisibility(0);
            this.abF.setVisibility(8);
            this.abC.setVisibility(0);
        }
    }

    /* renamed from: ey */
    public void m12559ey(String str) {
        this.abz.setText(str);
    }

    /* renamed from: ez */
    public void m12558ez(String str) {
        this.aby.setText(str);
    }

    /* renamed from: b */
    public void m12563b(View.OnClickListener onClickListener) {
        this.abA.setVisibility(0);
        this.abA.setOnClickListener(onClickListener);
    }

    /* renamed from: aq */
    public void m12567aq(boolean z) {
        this.abC.setShowDot(z);
    }

    /* renamed from: ar */
    public void m12566ar(boolean z) {
        if (z) {
            this.abA.setVisibility(0);
            this.abC.setVisibility(0);
            this.abF.setVisibility(8);
            this.abA.setBackgroundResource(R.drawable.selector_button_template_bar);
            return;
        }
        this.abA.setVisibility(8);
    }

    /* renamed from: as */
    public void m12565as(boolean z) {
        this.abA.setEnabled(z);
    }

    /* renamed from: at */
    public void m12564at(boolean z) {
        if (z) {
            this.abA.setVisibility(0);
            this.abC.setVisibility(8);
            this.abF.setVisibility(0);
            this.abA.setBackgroundResource(17170445);
            return;
        }
        this.abA.setVisibility(8);
    }

    /* renamed from: c */
    public void m12561c(View.OnClickListener onClickListener) {
        this.abw.setOnClickListener(onClickListener);
    }

    /* renamed from: sg */
    public View mo10167sg() {
        return this.abE;
    }
}
