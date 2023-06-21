package com.kingcore.uilib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class TextRoundCornerProgressBar extends BaseRoundCornerProgressBar implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: Dg */
    private TextView f705Dg;

    /* renamed from: Dh */
    private int f706Dh;

    /* renamed from: Di */
    private int f707Di;

    /* renamed from: Dj */
    private int f708Dj;

    /* renamed from: Dk */
    private String f709Dk;

    public TextRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.kingcore.uilib.BaseRoundCornerProgressBar
    /* renamed from: gp */
    protected int mo13500gp() {
        return R.layout.layout_text_round_corner_progress_bar;
    }

    @Override // com.kingcore.uilib.BaseRoundCornerProgressBar
    /* renamed from: a */
    protected void mo13503a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.TextRoundCornerProgress);
        this.f706Dh = obtainStyledAttributes.getColor(0, -1);
        this.f707Di = (int) obtainStyledAttributes.getDimension(1, m13626b(16.0f));
        this.f708Dj = (int) obtainStyledAttributes.getDimension(2, m13626b(10.0f));
        this.f709Dk = obtainStyledAttributes.getString(3);
        obtainStyledAttributes.recycle();
    }

    @Override // com.kingcore.uilib.BaseRoundCornerProgressBar
    /* renamed from: gq */
    protected void mo13499gq() {
        this.f705Dg = (TextView) findViewById(R.id.tv_progress);
        this.f705Dg.setSingleLine(true);
        this.f705Dg.setEllipsize(TextUtils.TruncateAt.END);
        this.f705Dg.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // com.kingcore.uilib.BaseRoundCornerProgressBar
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    protected void mo13502a(LinearLayout linearLayout, float f, float f2, float f3, int i, int i2, int i3, boolean z) {
        GradientDrawable az = m13627az(i3);
        int i4 = i - (i2 / 2);
        az.setCornerRadii(new float[]{i4, i4, i4, i4, i4, i4, i4, i4});
        if (Build.VERSION.SDK_INT >= 16) {
            linearLayout.setBackground(az);
        } else {
            linearLayout.setBackgroundDrawable(az);
        }
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = (int) ((f3 - (i2 * 2)) / (f / f2));
        linearLayout.setLayoutParams(layoutParams);
    }

    @Override // com.kingcore.uilib.BaseRoundCornerProgressBar
    /* renamed from: gr */
    protected void mo13498gr() {
        m13501gZ();
        m13496hb();
        m13495hc();
        m13494hd();
        m13497ha();
    }

    /* renamed from: gZ */
    private void m13501gZ() {
        this.f705Dg.setText(this.f709Dk);
    }

    /* renamed from: ha */
    private void m13497ha() {
        this.f705Dg.setTextColor(this.f706Dh);
    }

    /* renamed from: hb */
    private void m13496hb() {
        this.f705Dg.setTextSize(0, this.f707Di);
    }

    /* renamed from: hc */
    private void m13495hc() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f705Dg.getLayoutParams();
        marginLayoutParams.setMargins(this.f708Dj, 0, this.f708Dj, 0);
        this.f705Dg.setLayoutParams(marginLayoutParams);
    }

    /* renamed from: hd */
    private void m13494hd() {
        m13493he();
        int measuredWidth = this.f705Dg.getMeasuredWidth() + (getTextProgressMargin() * 2);
        if (measuredWidth + this.f708Dj < ((int) ((getLayoutWidth() - (getPadding() * 2)) / (getMax() / getProgress())))) {
            m13492hf();
        } else {
            m13491hg();
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: he */
    private void m13493he() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f705Dg.getLayoutParams();
        layoutParams.addRule(5, 0);
        layoutParams.addRule(7, 0);
        layoutParams.addRule(0, 0);
        layoutParams.addRule(1, 0);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.removeRule(16);
            layoutParams.removeRule(17);
            layoutParams.removeRule(18);
            layoutParams.removeRule(19);
        }
        this.f705Dg.setLayoutParams(layoutParams);
    }

    /* renamed from: hf */
    private void m13492hf() {
    }

    /* renamed from: hg */
    private void m13491hg() {
    }

    public String getProgressText() {
        return this.f709Dk;
    }

    public void setProgressText(String str) {
        this.f709Dk = str;
        m13501gZ();
        m13494hd();
    }

    @Override // com.kingcore.uilib.BaseRoundCornerProgressBar
    public void setProgress(float f) {
        super.setProgress(f);
        m13494hd();
    }

    public int getTextProgressColor() {
        return this.f706Dh;
    }

    public void setTextProgressColor(int i) {
        this.f706Dh = i;
        m13497ha();
    }

    public int getTextProgressSize() {
        return this.f707Di;
    }

    public void setTextProgressSize(int i) {
        this.f707Di = i;
        m13496hb();
        m13494hd();
    }

    public int getTextProgressMargin() {
        return this.f708Dj;
    }

    public void setTextProgressMargin(int i) {
        this.f708Dj = i;
        m13495hc();
        m13494hd();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    @SuppressLint({"NewApi"})
    public void onGlobalLayout() {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f705Dg.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        } else {
            this.f705Dg.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
        m13494hd();
    }
}
