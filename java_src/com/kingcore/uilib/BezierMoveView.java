package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.support.p004v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.bgk;
import com.kingroot.kinguser.bhi;
/* loaded from: classes.dex */
public class BezierMoveView extends TextView implements ValueAnimator.AnimatorUpdateListener {
    protected Context mContext;
    protected int radius;

    /* renamed from: zw */
    protected Paint f467zw;

    /* renamed from: zx */
    protected Point f468zx;

    /* renamed from: zy */
    protected Point f469zy;

    public BezierMoveView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezierMoveView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContext = context;
        this.f467zw = new Paint();
        this.f467zw.setColor(SupportMenu.CATEGORY_MASK);
        this.f467zw.setAntiAlias(true);
        setGravity(17);
        setText("1");
        setTextColor(-1);
        setTextSize(12.0f);
    }

    public void setStartPosition(Point point) {
        point.y -= 10;
        this.f468zx = point;
    }

    public void setEndPosition(Point point) {
        this.f469zy = point;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        int m7111c = bgk.m7111c(this.mContext, 20.0f);
        setMeasuredDimension(m7111c, m7111c);
        this.radius = m7111c / 2;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.radius, this.f467zw);
        super.onDraw(canvas);
    }

    @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Point point = (Point) valueAnimator.getAnimatedValue();
        bhi.m7003J(this).setTranslationX(point.x);
        bhi.m7003J(this).setTranslationY(point.y);
        invalidate();
    }
}
