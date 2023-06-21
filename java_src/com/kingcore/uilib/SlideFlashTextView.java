package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class SlideFlashTextView extends RelativeLayout {

    /* renamed from: CM */
    private TextView f690CM;

    /* renamed from: CN */
    private TextView f691CN;

    /* renamed from: CO */
    private TextView f692CO;

    /* renamed from: CP */
    private TextView f693CP;

    /* renamed from: CQ */
    private RelativeLayout f694CQ;

    /* renamed from: CR */
    private RelativeLayout f695CR;

    /* renamed from: CS */
    private RelativeLayout f696CS;

    /* renamed from: CT */
    private Animation f697CT;

    /* renamed from: CU */
    private Animation f698CU;

    /* renamed from: CV */
    private Animation f699CV;
    private View mView;

    public SlideFlashTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public SlideFlashTextView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        this.mView = LayoutInflater.from(context).inflate(R.layout.slide_slide_flash_textview, this);
        this.f694CQ = (RelativeLayout) this.mView.findViewById(R.id.rl1);
        this.f695CR = (RelativeLayout) this.mView.findViewById(R.id.rl2);
        this.f696CS = (RelativeLayout) this.mView.findViewById(R.id.rl3);
        this.f697CT = AnimationUtils.loadAnimation(context, R.anim.move_slide_flash_textview);
        this.f698CU = AnimationUtils.loadAnimation(context, R.anim.move_left_slide_flash_textview);
        this.f699CV = AnimationUtils.loadAnimation(context, R.anim.move_right_slide_flash_textview);
        this.f690CM = (TextView) this.mView.findViewById(R.id.tv);
        this.f691CN = (TextView) this.mView.findViewById(R.id.tv1);
        this.f692CO = (TextView) this.mView.findViewById(R.id.tv2);
        this.f693CP = (TextView) this.mView.findViewById(R.id.tv3);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingcore.uilib.SlideFlashTextView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SlideFlashTextView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, (-SlideFlashTextView.this.f695CR.getMeasuredWidth()) * 2, 0.0f, 0.0f);
                translateAnimation.setDuration(0L);
                translateAnimation.setFillAfter(true);
                SlideFlashTextView.this.f695CR.startAnimation(translateAnimation);
                TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, (-SlideFlashTextView.this.f695CR.getMeasuredWidth()) * 1, 0.0f, 0.0f);
                translateAnimation2.setFillAfter(true);
                translateAnimation2.setDuration(0L);
                SlideFlashTextView.this.f694CQ.startAnimation(translateAnimation2);
                return false;
            }
        });
    }

    public void setText(String str) {
        this.f690CM.setText(str);
        this.f691CN.setText(str);
        this.f692CO.setText(str);
        this.f693CP.setText(str);
    }

    /* renamed from: q */
    public void m13504q(int i, int i2) {
        this.f690CM.setTextSize(i, i2);
        this.f691CN.setTextSize(i, i2);
        this.f692CO.setTextSize(i, i2);
        this.f693CP.setTextSize(i, i2);
    }

    public void setTextColor(int i) {
        this.f690CM.setTextColor(i);
        this.f691CN.setTextColor(i);
        this.f692CO.setTextColor(i);
        this.f693CP.setTextColor(i);
    }

    public void setTypeface(Typeface typeface) {
        this.f690CM.setTypeface(typeface);
        this.f691CN.setTypeface(typeface);
        this.f692CO.setTypeface(typeface);
        this.f693CP.setTypeface(typeface);
    }

    /* renamed from: gY */
    public void m13505gY() {
        this.f694CQ.startAnimation(this.f697CT);
        this.f695CR.startAnimation(this.f698CU);
        this.f696CS.startAnimation(this.f699CV);
    }

    public void setBackgroundColor(String str) {
        String replace = str.replace("#", "");
        this.f695CR.setBackgroundColor(Color.parseColor("#66" + replace));
        this.f696CS.setBackgroundColor(Color.parseColor("#66" + replace));
        this.f694CQ.setBackgroundDrawable(new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{Color.parseColor("#66" + replace), Color.parseColor("#00" + replace), Color.parseColor("#66" + replace)}));
    }
}
