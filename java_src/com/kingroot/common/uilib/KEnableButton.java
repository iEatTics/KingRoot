package com.kingroot.common.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguser.C3953zi;
/* loaded from: classes.dex */
public class KEnableButton extends LinearLayout {

    /* renamed from: NA */
    private String f837NA;

    /* renamed from: NB */
    private int f838NB;

    /* renamed from: NC */
    private int f839NC;

    /* renamed from: ND */
    private boolean f840ND;

    /* renamed from: NE */
    private ImageView f841NE;

    /* renamed from: NF */
    private InterfaceC0523a f842NF;

    /* renamed from: NG */
    private View.OnClickListener f843NG;

    /* renamed from: Nz */
    private String f844Nz;
    private TextView mTextView;

    /* renamed from: com.kingroot.common.uilib.KEnableButton$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0523a {
        /* renamed from: a */
        void m13326a(boolean z, View view);
    }

    public KEnableButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13330a(attributeSet);
    }

    /* renamed from: gq */
    private void m13327gq() {
        Context context = getContext();
        this.mTextView = new TextView(context);
        this.f841NE = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        setOrientation(1);
        setGravity(17);
        addView(this.f841NE, layoutParams2);
        addView(this.mTextView, layoutParams);
        this.mTextView.setVisibility(8);
        this.mTextView.setTextSize(2, 10.0f);
    }

    /* renamed from: a */
    private void m13330a(AttributeSet attributeSet) {
        m13327gq();
        int attributeResourceValue = attributeSet.getAttributeResourceValue("com.kinguser", "text_color", -1);
        if (attributeResourceValue < 0) {
            int attributeUnsignedIntValue = attributeSet.getAttributeUnsignedIntValue("com.kinguser", "text_color", -1);
            if (attributeUnsignedIntValue > 0) {
                this.mTextView.setTextColor(attributeUnsignedIntValue);
            }
        } else {
            this.mTextView.setTextColor(C3953zi.m1311pr().getColor(attributeResourceValue));
        }
        int attributeResourceValue2 = attributeSet.getAttributeResourceValue("com.kinguser", "enable_text", -1);
        if (attributeResourceValue2 < 0) {
            this.f844Nz = attributeSet.getAttributeValue("com.kinguser", "enable_text");
        } else {
            this.f844Nz = C3953zi.m1311pr().getString(attributeResourceValue2);
        }
        int attributeResourceValue3 = attributeSet.getAttributeResourceValue("com.kinguser", "disable_text", -1);
        if (attributeResourceValue2 < 0) {
            this.f837NA = attributeSet.getAttributeValue("com.kinguser", "disable_text");
        } else {
            this.f837NA = C3953zi.m1311pr().getString(attributeResourceValue3);
        }
        this.f838NB = attributeSet.getAttributeResourceValue("com.kinguser", "enable_bg", -1);
        this.f839NC = attributeSet.getAttributeResourceValue("com.kinguser", "disable_bg", -1);
        setEnable(attributeSet.getAttributeBooleanValue("com.kinguser", "enable", true));
        this.f843NG = new View.OnClickListener() { // from class: com.kingroot.common.uilib.KEnableButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                KEnableButton.this.setEnable(!KEnableButton.this.f840ND);
                if (KEnableButton.this.f842NF != null) {
                    KEnableButton.this.f842NF.m13326a(KEnableButton.this.f840ND, KEnableButton.this);
                }
            }
        };
        setOnClickListener(this.f843NG);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        if (onClickListener == this.f843NG) {
            super.setOnClickListener(onClickListener);
        }
    }

    public void setEnable(boolean z) {
        if (this.f840ND != z) {
            this.f840ND = z;
            if (this.f840ND) {
                if (this.f844Nz != null) {
                    this.mTextView.setVisibility(0);
                    this.mTextView.setText(this.f844Nz);
                } else {
                    this.mTextView.setVisibility(8);
                }
                if (this.f838NB > 0) {
                    this.f841NE.setBackgroundResource(this.f838NB);
                    return;
                }
                return;
            }
            if (this.f837NA != null) {
                this.mTextView.setVisibility(0);
                this.mTextView.setText(this.f837NA);
            } else {
                this.mTextView.setVisibility(8);
            }
            if (this.f839NC > 0) {
                this.f841NE.setBackgroundResource(this.f839NC);
            }
        }
    }

    public String getEnableText() {
        return this.f844Nz;
    }

    public void setEnableText(String str) {
        this.f844Nz = str;
        if (this.f840ND) {
            this.mTextView.setVisibility(0);
            this.mTextView.setText(str);
        }
    }

    public String getDisableText() {
        return this.f837NA;
    }

    public void setDisableText(String str) {
        this.f837NA = str;
        if (!this.f840ND) {
            this.mTextView.setVisibility(0);
            this.mTextView.setText(str);
        }
    }

    public int getEnableBgRes() {
        return this.f838NB;
    }

    public void setEnableBgRes(int i) {
        this.f838NB = i;
        if (this.f840ND) {
            this.f841NE.setBackgroundResource(i);
        }
    }

    public int getDisableBgRes() {
        return this.f839NC;
    }

    public void setDisableBgRes(int i) {
        this.f839NC = i;
        if (!this.f840ND) {
            this.f841NE.setBackgroundResource(i);
        }
    }

    public void setOnStateChangeListener(InterfaceC0523a interfaceC0523a) {
        this.f842NF = interfaceC0523a;
    }
}
