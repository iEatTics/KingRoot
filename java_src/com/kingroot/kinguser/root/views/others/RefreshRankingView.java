package com.kingroot.kinguser.root.views.others;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public class RefreshRankingView extends RelativeLayout {
    public int bid;
    public float bie;
    public float bif;
    public float big;
    private boolean bih;
    private boolean bii;
    private boolean bij;
    private View bik;
    private View bil;
    private View bim;
    private float bin;
    private float bio;
    private float bip;
    private float biq;
    private float bir;
    private InterfaceC3558a bis;
    private TranslateAnimation bit;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.root.views.others.RefreshRankingView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3558a {
    }

    public RefreshRankingView(Context context) {
        super(context);
        this.bid = 0;
        this.bie = 0.0f;
        this.bif = 0.0f;
        this.big = 0.0f;
        this.bih = false;
        this.bii = false;
        this.bij = false;
        this.bin = 2.0f;
        this.bio = 1.8f;
        this.bip = 0.0f;
        this.biq = 0.0f;
        this.bir = 0.0f;
        m2389G(context);
    }

    public RefreshRankingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bid = 0;
        this.bie = 0.0f;
        this.bif = 0.0f;
        this.big = 0.0f;
        this.bih = false;
        this.bii = false;
        this.bij = false;
        this.bin = 2.0f;
        this.bio = 1.8f;
        this.bip = 0.0f;
        this.biq = 0.0f;
        this.bir = 0.0f;
        m2389G(context);
    }

    public RefreshRankingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bid = 0;
        this.bie = 0.0f;
        this.bif = 0.0f;
        this.big = 0.0f;
        this.bih = false;
        this.bii = false;
        this.bij = false;
        this.bin = 2.0f;
        this.bio = 1.8f;
        this.bip = 0.0f;
        this.biq = 0.0f;
        this.bir = 0.0f;
        m2389G(context);
    }

    /* renamed from: G */
    private void m2389G(Context context) {
        this.mContext = context;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (!this.bih) {
            this.bik = getChildAt(0);
            this.bil = getChildAt(1);
            this.bim = getChildAt(2);
            m2388XH();
            this.bip = this.bik.getMeasuredHeight();
            this.biq = this.bim.getMeasuredHeight() / 3;
            this.bir = this.bim.getMeasuredHeight();
            this.bih = true;
        }
        this.bik.layout(0, ((int) (this.bif + this.big)) - this.bik.getMeasuredHeight(), this.bik.getMeasuredWidth(), (int) (this.bif + this.big));
        this.bil.layout(0, (int) (this.bif + this.big), this.bil.getMeasuredWidth(), ((int) (this.bif + this.big)) + this.bil.getMeasuredHeight());
        this.bim.layout(0, ((int) (this.bif + this.big)) + this.bil.getMeasuredHeight(), this.bim.getMeasuredWidth(), ((int) (this.bif + this.big)) + this.bil.getMeasuredHeight() + this.bim.getMeasuredHeight());
    }

    /* renamed from: XH */
    private void m2388XH() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.bie = motionEvent.getY();
                break;
            case 1:
                if (this.bif > 0.0f && this.bif <= this.bip && (this.bid == 1 || this.bid == 2)) {
                    m2384if(0);
                    m2387a(this.bil, this.bif, 0.0f, 200L);
                    m2387a(this.bik, this.bif, 0.0f, 200L);
                    this.bij = false;
                    this.bif = 0.0f;
                    this.big = 0.0f;
                    requestLayout();
                }
                if (this.bif > 0.0f && this.bid == 5) {
                    m2387a(this.bil, -this.bir, 0.0f, 200L);
                    m2387a(this.bim, -this.bir, 0.0f, 200L);
                    new Handler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.root.views.others.RefreshRankingView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RefreshRankingView.this.m2384if(0);
                            RefreshRankingView.this.bif = 0.0f;
                            RefreshRankingView.this.big = 0.0f;
                            RefreshRankingView.this.bij = false;
                            RefreshRankingView.this.requestLayout();
                        }
                    }, 300L);
                }
                if (this.big < 0.0f && this.big > (-this.biq) && this.bid == 4) {
                    m2384if(0);
                    m2387a(this.bil, this.big, 0.0f, 200L);
                    m2387a(this.bim, this.big, 0.0f, 200L);
                    this.bij = false;
                    this.bif = 0.0f;
                    this.big = 0.0f;
                    requestLayout();
                }
                if (this.big < (-this.biq) && this.bid == 5) {
                    m2387a(this.bil, this.big + this.bir, 0.0f, 200L);
                    m2387a(this.bim, this.big + this.bir, 0.0f, 200L);
                    this.bif = 0.0f;
                    this.big = -this.bir;
                    this.bij = true;
                    requestLayout();
                    break;
                }
                break;
            case 2:
                this.bif = motionEvent.getY() - this.bie;
                this.bif /= this.bin;
                this.big = this.bif / this.bio;
                if (this.bif > this.bip) {
                    this.bif = this.bip;
                }
                if (this.big < (-this.bir)) {
                    this.big = -this.bir;
                }
                if (this.bif > 0.0f && !this.bij) {
                    this.big = 0.0f;
                    if (this.bif < this.bip && (this.bid == 0 || this.bid == 2 || this.bid == 4)) {
                        m2384if(1);
                    }
                    if (this.bif == this.bip && (this.bid == 0 || this.bid == 1 || this.bid == 4)) {
                        m2384if(2);
                    }
                    requestLayout();
                }
                if (this.big < 0.0f && !this.bij) {
                    this.bif = 0.0f;
                    if (this.big > (-this.biq) && (this.bid == 0 || this.bid == 5 || this.bid == 1)) {
                        m2384if(4);
                    }
                    if (this.big < (-this.biq) && (this.bid == 0 || this.bid == 4 || this.bid == 1)) {
                        m2384if(5);
                    }
                    requestLayout();
                    break;
                }
                break;
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if */
    public void m2384if(int i) {
        this.bid = i;
        switch (this.bid) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            default:
                return;
        }
    }

    /* renamed from: a */
    private void m2387a(View view, float f, float f2, long j) {
        this.bit = new TranslateAnimation(0.0f, 0.0f, f, f2);
        this.bit.setDuration(j);
        view.setAnimation(this.bit);
        this.bit.start();
    }

    public void setOnRefreshListener(InterfaceC3558a interfaceC3558a) {
        this.bis = interfaceC3558a;
    }
}
