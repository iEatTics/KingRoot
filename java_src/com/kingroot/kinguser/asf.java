package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Rect;
import android.support.p004v4.view.MotionEventCompat;
import android.support.p007v7.widget.RecyclerView;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.ObjectAnimator;
/* loaded from: classes.dex */
public class asf implements RecyclerView.OnItemTouchListener {
    private Animator aMA;
    private InterfaceC1476a aMB;
    private View aMu;
    private boolean aMv = false;
    private int aMw;
    private int aMx;
    private int aMy;
    private boolean aMz;
    private View akQ;
    private int mTouchSlop;

    /* renamed from: com.kingroot.kinguser.asf$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1476a {
        /* renamed from: da */
        boolean mo7199da(int i);

        /* renamed from: e */
        Pair<View, View> mo7198e(float f, float f2);

        RecyclerView.ViewHolder getChildViewHolder(View view);

        /* renamed from: i */
        int mo7197i(RecyclerView.ViewHolder viewHolder);

        /* renamed from: vM */
        void mo7195vM();

        /* renamed from: vN */
        void mo7194vN();
    }

    public asf(Context context, InterfaceC1476a interfaceC1476a) {
        this.aMB = interfaceC1476a;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.aMw = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.support.p007v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // android.support.p007v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        boolean z;
        if (this.aMA == null || !this.aMA.isRunning()) {
            int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            switch (actionMasked) {
                case 0:
                    this.aMz = false;
                    this.aMx = (int) motionEvent.getX();
                    this.aMy = (int) motionEvent.getY();
                    if (m9487NM() != null && !m9489N(x, y)) {
                        m9476w(100.0f);
                        m9484a((Pair<View, View>) null);
                        return false;
                    } else if (m9487NM() != null) {
                        return m9485O(x, y) ? false : true;
                    } else {
                        m9484a(this.aMB.mo7198e(x, y));
                        return false;
                    }
                case 1:
                case 3:
                    if (m9488NL()) {
                        z = m9485O(x, y) ? false : true;
                        m9476w(100.0f);
                    } else {
                        z = false;
                    }
                    m9484a((Pair<View, View>) null);
                    this.aMz = false;
                    return z;
                case 2:
                    if (this.aMz) {
                        return true;
                    }
                    int i = x - this.aMx;
                    if (Math.abs(y - this.aMy) > Math.abs(i) || m9487NM() == null || !this.aMv || Math.abs(i) < this.mTouchSlop) {
                        return false;
                    }
                    this.aMx = (int) motionEvent.getX();
                    this.aMy = (int) motionEvent.getY();
                    this.aMz = true;
                    return true;
                default:
                    return false;
            }
        }
        return true;
    }

    /* renamed from: NL */
    private boolean m9488NL() {
        View m9487NM = m9487NM();
        return m9487NM != null && this.aMv && m9487NM.getScrollX() == m9486NN();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9484a(Pair<View, View> pair) {
        if (pair == null) {
            this.aMu = null;
            this.akQ = null;
            return;
        }
        this.akQ = (View) pair.first;
        this.aMu = pair.second == null ? this.akQ : (View) pair.second;
        if (this.akQ != null && this.aMB != null) {
            RecyclerView.ViewHolder childViewHolder = this.aMB.getChildViewHolder(this.akQ);
            this.aMv = childViewHolder != null && this.aMB.mo7199da(childViewHolder.getItemViewType());
        }
    }

    /* renamed from: NM */
    private View m9487NM() {
        return this.aMu;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCollapsed() {
        View m9487NM = m9487NM();
        return m9487NM != null && m9487NM.getScrollX() == 0;
    }

    /* renamed from: N */
    private boolean m9489N(int i, int i2) {
        View m9487NM = m9487NM();
        if (m9487NM == null) {
            return false;
        }
        Rect rect = new Rect();
        m9487NM.getHitRect(rect);
        return rect.contains(i, i2);
    }

    /* renamed from: O */
    private boolean m9485O(int i, int i2) {
        View m9487NM = m9487NM();
        if (m9487NM == null) {
            return false;
        }
        int width = m9487NM.getWidth() - m9487NM.getScrollX();
        return new Rect(width, m9487NM.getTop(), m9486NN() + width, m9487NM.getBottom()).contains(i, i2);
    }

    @Override // android.support.p007v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        View m9487NM = m9487NM();
        if ((this.aMA == null || !this.aMA.isRunning()) && m9487NM != null) {
            int x = (int) motionEvent.getX();
            switch (MotionEventCompat.getActionMasked(motionEvent)) {
                case 1:
                case 3:
                    boolean z = this.aMA == null && m9476w(0.0f);
                    boolean isCollapsed = isCollapsed();
                    if (!z) {
                        if (isCollapsed) {
                            m9484a((Pair<View, View>) null);
                        }
                        InterfaceC1476a interfaceC1476a = this.aMB;
                        if (interfaceC1476a != null) {
                            if (isCollapsed) {
                                interfaceC1476a.mo7195vM();
                            } else {
                                interfaceC1476a.mo7194vN();
                            }
                        } else {
                            return;
                        }
                    }
                    this.aMz = false;
                    return;
                case 2:
                    if (this.aMz) {
                        m9477gu((int) (this.aMx - motionEvent.getX()));
                    }
                    this.aMx = x;
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: gu */
    private void m9477gu(int i) {
        View m9487NM = m9487NM();
        if (m9487NM != null) {
            int scrollX = m9487NM.getScrollX();
            int scrollY = m9487NM.getScrollY();
            if (scrollX + i <= 0) {
                m9487NM.scrollTo(0, scrollY);
                return;
            }
            int m9486NN = m9486NN();
            int i2 = scrollX + i;
            if (Math.abs(i2) < m9486NN) {
                m9487NM.scrollTo(i2, scrollY);
            } else {
                m9487NM.scrollTo(m9486NN, scrollY);
            }
        }
    }

    /* renamed from: b */
    public boolean m9480b(View view, boolean z) {
        if (m9487NM() == null && view != null && this.aMA == null) {
            m9484a(Pair.create(view, view));
            int scrollX = view.getScrollX();
            int m9486NN = m9486NN();
            if (!z) {
                m9486NN = 0;
            }
            if (m9486NN != scrollX) {
                this.aMA = ObjectAnimator.ofInt(view, "scrollX", m9486NN);
                this.aMA.setDuration((long) ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                this.aMA.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.asf.1
                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        asf.this.aMA = null;
                        if (asf.this.isCollapsed()) {
                            asf.this.m9484a((Pair<View, View>) null);
                        }
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        asf.this.aMA = null;
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }
                });
                this.aMA.setInterpolator(new DecelerateInterpolator());
                this.aMA.start();
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: w */
    private boolean m9476w(float f) {
        View m9487NM;
        int i;
        if (this.aMA == null && (m9487NM = m9487NM()) != null) {
            int scrollX = m9487NM.getScrollX();
            int m9486NN = m9486NN();
            int i2 = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
            if (f == 0.0f) {
                i = scrollX > m9486NN / 2 ? m9486NN : 0;
            } else {
                if (f > 0.0f) {
                    m9486NN = 0;
                }
                i2 = (int) ((1.0f - (Math.abs(f) / this.aMw)) * 200.0f);
                i = m9486NN;
            }
            if (i != scrollX) {
                final boolean z = i == 0;
                this.aMA = ObjectAnimator.ofInt(m9487NM, "scrollX", i);
                this.aMA.setDuration(i2);
                this.aMA.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.asf.2
                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        asf.this.aMA = null;
                        if (z) {
                            asf.this.m9484a((Pair<View, View>) null);
                        }
                        InterfaceC1476a interfaceC1476a = asf.this.aMB;
                        if (interfaceC1476a != null) {
                            if (z) {
                                interfaceC1476a.mo7195vM();
                            } else {
                                interfaceC1476a.mo7194vN();
                            }
                        }
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        asf.this.aMA = null;
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }
                });
                this.aMA.setInterpolator(new DecelerateInterpolator());
                this.aMA.start();
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public void m9478c(final View view, final boolean z) {
        if (m9487NM() == null && view != null && this.aMA == null) {
            m9484a(Pair.create(view, view));
            int scrollX = view.getScrollX();
            int m9486NN = m9486NN();
            if (!z) {
                m9486NN = 0;
            }
            if (m9486NN != scrollX) {
                this.aMA = ObjectAnimator.ofInt(view, "scrollX", m9486NN);
                this.aMA.setDuration((long) ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                this.aMA.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.asf.3
                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        asf.this.aMA = null;
                        asf.this.m9484a((Pair<View, View>) null);
                        if (z) {
                            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.asf.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    asf.this.m9478c(view, false);
                                }
                            }, 2000L);
                        }
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        asf.this.aMA = null;
                    }

                    @Override // com.android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }
                });
                this.aMA.setInterpolator(new DecelerateInterpolator());
                this.aMA.start();
            }
        }
    }

    /* renamed from: NN */
    private int m9486NN() {
        if (this.aMB == null || this.akQ == null) {
            return 0;
        }
        return this.aMB.mo7197i(this.aMB.getChildViewHolder(this.akQ));
    }
}
