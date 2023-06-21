package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.acs;
import com.kingroot.kinguser.bgi;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class ClipView extends View {

    /* renamed from: AA */
    private float f522AA;

    /* renamed from: AB */
    private ValueAnimator f523AB;

    /* renamed from: AC */
    private boolean f524AC;

    /* renamed from: Av */
    private Paint f525Av;

    /* renamed from: Aw */
    private float f526Aw;

    /* renamed from: Ax */
    private float f527Ax;

    /* renamed from: Ay */
    private InterfaceC0448b f528Ay;

    /* renamed from: Az */
    private float f529Az;
    private Bitmap mBitmap;
    private Handler mHandler;
    private Paint mPaint;

    /* renamed from: zI */
    private RectF f530zI;

    /* renamed from: com.kingcore.uilib.ClipView$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0448b {
        /* renamed from: gE */
        void mo8192gE();
    }

    public ClipView(Context context) {
        super(context);
        init();
    }

    public ClipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ClipView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.mPaint = new Paint(1);
        this.mPaint.setDither(true);
        this.f529Az = getResources().getDimensionPixelSize(R.dimen.root_success_circle_thickness);
        this.f525Av = new Paint(1);
        this.f525Av.setStyle(Paint.Style.STROKE);
        this.f525Av.setStrokeCap(Paint.Cap.ROUND);
        this.f525Av.setColor(bgi.getColor(R.color.green_1));
        this.f525Av.setStrokeWidth(this.f529Az);
        this.f523AB = ValueAnimator.ofInt(0, -320);
        this.f523AB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.ClipView.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ClipView.this.f522AA = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ClipView.this.invalidate();
            }
        });
        this.f523AB.setDuration(500L);
        this.f523AB.setInterpolator(new LinearInterpolator());
        this.f523AB.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.ClipView.2
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ClipView.this.f524AC = true;
                ClipView.this.m13596a(ClipView.this.f528Ay);
            }
        });
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            Bitmap decodeResource = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.root_tick_tick);
            this.f526Aw = decodeResource.getWidth();
            if (this.f526Aw > 0.0f) {
                this.mBitmap = Bitmap.createScaledBitmap(decodeResource, (int) this.f526Aw, (int) this.f526Aw, true);
            }
            if (this.mBitmap != decodeResource && !decodeResource.isRecycled()) {
                decodeResource.recycle();
                System.gc();
            }
        } catch (Throwable th) {
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mBitmap != null && !this.mBitmap.isRecycled()) {
            this.mBitmap.recycle();
            this.mBitmap = null;
            System.gc();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawArc(this.f530zI, -60.0f, this.f522AA, false, this.f525Av);
        if (this.f524AC && this.mPaint != null && this.mBitmap != null) {
            canvas.save();
            canvas.translate((getWidth() - this.mBitmap.getWidth()) / 2, (getHeight() - this.mBitmap.getHeight()) / 2);
            canvas.clipRect(0.0f, 0.0f, this.f527Ax, this.f526Aw);
            canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
            canvas.restore();
        }
    }

    public void setListener(InterfaceC0448b interfaceC0448b) {
        this.f528Ay = interfaceC0448b;
    }

    /* renamed from: a */
    public void m13596a(InterfaceC0448b interfaceC0448b) {
        this.f528Ay = interfaceC0448b;
        if (this.mHandler == null) {
            this.mHandler = new HandlerC0447a(this);
        }
        this.f527Ax = 0.0f;
        this.mHandler.obtainMessage().sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gC */
    public void m13591gC() {
        this.f527Ax += 20.0f;
        if (this.f527Ax <= this.f526Aw) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(), 10L);
        } else {
            if (this.f527Ax > this.f526Aw) {
                this.f527Ax = this.f526Aw;
            }
            if (this.f528Ay != null) {
                this.f528Ay.mo8192gE();
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingcore.uilib.ClipView$a */
    /* loaded from: classes.dex */
    public static class HandlerC0447a extends Handler {

        /* renamed from: AE */
        private WeakReference<ClipView> f533AE;

        public HandlerC0447a(ClipView clipView) {
            this.f533AE = new WeakReference<>(clipView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f533AE != null && this.f533AE.get() != null) {
                this.f533AE.get().m13591gC();
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float ceil = ((float) Math.ceil(this.f529Az / 2.0d)) + 1.0f;
        if (i < i2) {
            this.f530zI = new RectF(ceil, ceil, i - ceil, i - ceil);
            this.f526Aw = i;
        } else {
            this.f530zI = new RectF(ceil, ceil, i2 - ceil, i2 - ceil);
            this.f526Aw = i2;
        }
        acs.m12655c(this.mBitmap);
        if (this.f526Aw > 0.0f) {
            this.mBitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.root_tick_tick), (int) this.f526Aw, (int) this.f526Aw, true);
        }
    }

    /* renamed from: gD */
    public void m13590gD() {
        this.f523AB.start();
    }
}
