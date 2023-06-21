package com.kingcore.uilib;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public abstract class BaseRoundCornerProgressBar extends LinearLayout {
    private int colorBackground;
    private int padding;
    private int radius;

    /* renamed from: zi */
    private LinearLayout f454zi;

    /* renamed from: zj */
    private LinearLayout f455zj;

    /* renamed from: zk */
    private LinearLayout f456zk;

    /* renamed from: zl */
    private int f457zl;

    /* renamed from: zm */
    private float f458zm;

    /* renamed from: zn */
    private float f459zn;

    /* renamed from: zo */
    private float f460zo;

    /* renamed from: zp */
    private int f461zp;

    /* renamed from: zq */
    private int f462zq;

    /* renamed from: zr */
    private boolean f463zr;

    /* renamed from: zs */
    private InterfaceC0433a f464zs;

    /* renamed from: zt */
    private boolean f465zt;

    /* renamed from: com.kingcore.uilib.BaseRoundCornerProgressBar$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0433a {
        /* renamed from: a */
        void m13616a(int i, float f, boolean z, boolean z2);
    }

    /* renamed from: a */
    protected abstract void mo13503a(Context context, AttributeSet attributeSet);

    /* renamed from: a */
    protected abstract void mo13502a(LinearLayout linearLayout, float f, float f2, float f3, int i, int i2, int i3, boolean z);

    /* renamed from: gp */
    protected abstract int mo13500gp();

    /* renamed from: gq */
    protected abstract void mo13499gq();

    /* renamed from: gr */
    protected abstract void mo13498gr();

    public BaseRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f465zt = false;
        if (isInEditMode()) {
            m13630F(context);
        } else {
            m13625b(context, attributeSet);
        }
    }

    @TargetApi(11)
    public BaseRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f465zt = false;
        if (isInEditMode()) {
            m13630F(context);
        } else {
            m13625b(context, attributeSet);
        }
    }

    /* renamed from: F */
    private void m13630F(Context context) {
        setGravity(17);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        textView.setGravity(17);
        textView.setText(getClass().getSimpleName());
        textView.setTextColor(-1);
        textView.setBackgroundColor(-7829368);
        addView(textView);
    }

    /* renamed from: b */
    private void m13625b(Context context, AttributeSet attributeSet) {
        m13623c(context, attributeSet);
        removeAllViews();
        LayoutInflater.from(context).inflate(mo13500gp(), this);
        this.f454zi = (LinearLayout) findViewById(R.id.layout_background);
        this.f455zj = (LinearLayout) findViewById(R.id.layout_progress);
        this.f456zk = (LinearLayout) findViewById(R.id.layout_secondary_progress);
        mo13499gq();
        this.f465zt = true;
    }

    /* renamed from: c */
    public void m13623c(Context context, AttributeSet attributeSet) {
        TypedArray typedArray = null;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, afs.C0826a.RoundCornerProgress);
            this.radius = (int) typedArray.getDimension(5, m13626b(30.0f));
            this.padding = (int) typedArray.getDimension(4, m13626b(0.0f));
            this.f463zr = typedArray.getBoolean(0, false);
            this.f458zm = typedArray.getFloat(2, 100.0f);
            this.f459zn = typedArray.getFloat(1, 0.0f);
            this.f460zo = typedArray.getFloat(3, 0.0f);
            this.colorBackground = typedArray.getColor(8, context.getResources().getColor(R.color.round_corner_progress_bar_background_default));
            this.f461zp = typedArray.getColor(6, context.getResources().getColor(R.color.round_corner_progress_bar_progress_default));
            this.f462zq = typedArray.getColor(7, context.getResources().getColor(R.color.round_corner_progress_bar_secondary_progress_default));
            mo13503a(context, attributeSet);
        } finally {
            if (typedArray != null) {
                try {
                    typedArray.recycle();
                } catch (Throwable th) {
                }
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!isInEditMode()) {
            this.f457zl = i;
            m13622gs();
            postDelayed(new Runnable() { // from class: com.kingcore.uilib.BaseRoundCornerProgressBar.1
                @Override // java.lang.Runnable
                public void run() {
                    BaseRoundCornerProgressBar.this.m13620gu();
                    BaseRoundCornerProgressBar.this.m13619gv();
                }
            }, 5L);
        }
    }

    /* renamed from: gs */
    protected void m13622gs() {
        if (this.f465zt) {
            m13621gt();
            m13617gx();
            m13618gw();
            m13620gu();
            m13619gv();
            mo13498gr();
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: gt */
    private void m13621gt() {
        GradientDrawable m13627az = m13627az(this.colorBackground);
        int i = this.radius - (this.padding / 2);
        m13627az.setCornerRadii(new float[]{i, i, i, i, i, i, i, i});
        if (this.f454zi != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f454zi.setBackground(m13627az);
            } else {
                this.f454zi.setBackgroundDrawable(m13627az);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: az */
    public GradientDrawable m13627az(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gu */
    public void m13620gu() {
        mo13502a(this.f455zj, this.f458zm, this.f459zn, this.f457zl, this.radius, this.padding, this.f461zp, this.f463zr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gv */
    public void m13619gv() {
        mo13502a(this.f456zk, this.f458zm, this.f460zo, this.f457zl, this.radius, this.padding, this.f462zq, this.f463zr);
    }

    /* renamed from: gw */
    private void m13618gw() {
        setupReverse(this.f455zj);
        setupReverse(this.f456zk);
    }

    private void setupReverse(LinearLayout linearLayout) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
        m13629a(layoutParams);
        if (this.f463zr) {
            layoutParams.addRule(11);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(21);
            }
        } else {
            layoutParams.addRule(9);
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(20);
            }
        }
        linearLayout.setLayoutParams(layoutParams);
    }

    /* renamed from: gx */
    private void m13617gx() {
        if (this.f454zi != null) {
            this.f454zi.setPadding(this.padding, this.padding, this.padding, this.padding);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private void m13629a(RelativeLayout.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.removeRule(11);
            layoutParams.removeRule(21);
            layoutParams.removeRule(9);
            layoutParams.removeRule(20);
            return;
        }
        layoutParams.addRule(11, 0);
        layoutParams.addRule(9, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"NewApi"})
    /* renamed from: b */
    public float m13626b(float f) {
        return Math.round((getContext().getResources().getDisplayMetrics().densityDpi / C4393util.S_GET_SMS) * f);
    }

    public void setReverse(boolean z) {
        this.f463zr = z;
        m13618gw();
        m13620gu();
        m13619gv();
    }

    public int getRadius() {
        return this.radius;
    }

    public void setRadius(int i) {
        if (i >= 0) {
            this.radius = i;
        }
        m13621gt();
        m13620gu();
        m13619gv();
    }

    public int getPadding() {
        return this.padding;
    }

    public void setPadding(int i) {
        if (i >= 0) {
            this.padding = i;
        }
        m13617gx();
        m13620gu();
        m13619gv();
    }

    public float getMax() {
        return this.f458zm;
    }

    public void setMax(float f) {
        if (f >= 0.0f) {
            this.f458zm = f;
        }
        if (this.f459zn > f) {
            this.f459zn = f;
        }
        m13620gu();
        m13619gv();
    }

    public float getLayoutWidth() {
        return this.f457zl;
    }

    public float getProgress() {
        return this.f459zn;
    }

    public void setProgress(float f) {
        if (f < 0.0f) {
            this.f459zn = 0.0f;
        } else if (f > this.f458zm) {
            this.f459zn = this.f458zm;
        } else {
            this.f459zn = f;
        }
        m13620gu();
        if (this.f464zs != null) {
            this.f464zs.m13616a(getId(), this.f459zn, true, false);
        }
    }

    public float getSecondaryProgressWidth() {
        if (this.f456zk != null) {
            return this.f456zk.getWidth();
        }
        return 0.0f;
    }

    public float getSecondaryProgress() {
        return this.f460zo;
    }

    public void setSecondaryProgress(float f) {
        if (f < 0.0f) {
            this.f460zo = 0.0f;
        } else if (f > this.f458zm) {
            this.f460zo = this.f458zm;
        } else {
            this.f460zo = f;
        }
        m13619gv();
        if (this.f464zs != null) {
            this.f464zs.m13616a(getId(), this.f460zo, false, true);
        }
    }

    public int getProgressBackgroundColor() {
        return this.colorBackground;
    }

    public void setProgressBackgroundColor(int i) {
        this.colorBackground = i;
        m13621gt();
    }

    public int getProgressColor() {
        return this.f461zp;
    }

    public void setProgressColor(int i) {
        this.f461zp = i;
        m13620gu();
    }

    public int getSecondaryProgressColor() {
        return this.f462zq;
    }

    public void setSecondaryProgressColor(int i) {
        this.f462zq = i;
        m13619gv();
    }

    public void setOnProgressChangedListener(InterfaceC0433a interfaceC0433a) {
        this.f464zs = interfaceC0433a;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        m13622gs();
    }
}
