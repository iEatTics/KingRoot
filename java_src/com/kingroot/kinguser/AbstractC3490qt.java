package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.graphics.Paint;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.BaseAdapter;
import android.widget.GridView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
/* renamed from: com.kingroot.kinguser.qt */
/* loaded from: classes.dex */
public abstract class AbstractC3490qt extends AbstractC3492qu {

    /* renamed from: Fa */
    private SparseArray<Animator> f3434Fa;

    /* renamed from: Fb */
    private long f3435Fb;

    /* renamed from: Fc */
    private int f3436Fc;

    /* renamed from: Fd */
    private int f3437Fd;

    /* renamed from: Fe */
    private boolean f3438Fe;

    /* renamed from: Ff */
    private boolean f3439Ff;

    /* renamed from: Fg */
    private boolean f3440Fg;

    /* renamed from: Fh */
    private boolean f3441Fh;

    /* renamed from: Fi */
    private boolean f3442Fi;

    /* renamed from: Fj */
    private boolean f3443Fj;

    /* renamed from: Fk */
    private long f3444Fk;

    /* renamed from: Fl */
    private long f3445Fl;

    /* renamed from: Fm */
    private long f3446Fm;

    /* renamed from: b */
    protected abstract Animator[] mo2518b(ViewGroup viewGroup, View view);

    public AbstractC3490qt(BaseAdapter baseAdapter) {
        super(baseAdapter);
        this.f3439Ff = true;
        this.f3440Fg = true;
        this.f3441Fh = false;
        this.f3442Fi = true;
        this.f3443Fj = true;
        this.f3444Fk = 300L;
        this.f3445Fl = 100L;
        this.f3446Fm = 300L;
        this.f3434Fa = new SparseArray<>();
        this.f3435Fb = -1L;
        this.f3436Fc = -1;
        this.f3437Fd = -1;
        if (baseAdapter instanceof AbstractC3490qt) {
            ((AbstractC3490qt) baseAdapter).m2527I(true);
        }
    }

    public void reset() {
        this.f3436Fc = -1;
        this.f3437Fd = -1;
        this.f3435Fb = -1L;
        this.f3440Fg = true;
        if (m2520hF() instanceof AbstractC3490qt) {
            ((AbstractC3490qt) m2520hF()).reset();
        }
        if (this.f3434Fa != null && this.f3434Fa.size() >= 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f3434Fa.size()) {
                    Animator animator = this.f3434Fa.get(this.f3434Fa.keyAt(i2));
                    if (animator != null) {
                        animator.end();
                    }
                    i = i2 + 1;
                } else {
                    this.f3434Fa.clear();
                    return;
                }
            }
        }
    }

    /* renamed from: E */
    public void m2531E(boolean z) {
        this.f3439Ff = z;
    }

    /* renamed from: F */
    public void m2530F(boolean z) {
        this.f3440Fg = z;
        this.f3441Fh = !this.f3440Fg;
    }

    /* renamed from: G */
    public void m2529G(boolean z) {
        this.f3441Fh = z;
        this.f3440Fg = !this.f3441Fh;
    }

    /* renamed from: H */
    public void m2528H(boolean z) {
        if (m2521hE() == null) {
            throw new IllegalStateException("（╯‵□′）╯︵┴─┴ Call setListView() on this AnimationAdapter before setShouldAnimateNotVisible()!");
        }
        this.f3440Fg = true;
        this.f3441Fh = false;
        this.f3442Fi = z;
    }

    @Override // com.kingroot.kinguser.AbstractC3492qu, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f3438Fe) {
            if (m2521hE() == null) {
                throw new IllegalStateException("（╯‵□′）╯︵┴─┴  Call setListView() on this AnimationAdapter before setAdapter()!");
            }
            if (view != null && m2521hE().getFirstVisiblePosition() != 0) {
                m2523d(view);
            }
        }
        View view2 = super.getView(i, view, viewGroup);
        if (Build.VERSION.SDK_INT > 8 && this.f3439Ff && !this.f3438Fe && view2 != null) {
            m2526a(i, view2, viewGroup);
        }
        return view2;
    }

    @Override // com.kingroot.kinguser.AbstractC3492qu, android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged(false);
    }

    /* renamed from: d */
    private void m2523d(View view) {
        int hashCode = view.hashCode();
        Animator animator = this.f3434Fa.get(hashCode);
        if (animator != null) {
            animator.end();
            this.f3434Fa.remove(hashCode);
        }
    }

    /* renamed from: a */
    private void m2526a(int i, View view, ViewGroup viewGroup) {
        boolean z = (m2521hE() instanceof GridView) && viewGroup.getHeight() == 0;
        if (i > this.f3437Fd && !z) {
            if (this.f3436Fc == -1) {
                this.f3436Fc = i;
            }
            m2525a(viewGroup, view);
            this.f3437Fd = i;
        }
    }

    /* renamed from: a */
    private void m2525a(ViewGroup viewGroup, final View view) {
        Animator[] animatorArr;
        if (this.f3435Fb == -1) {
            this.f3435Fb = System.currentTimeMillis();
        }
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                view.getClass().getMethod("setAlpha", Float.TYPE).invoke(view, 0);
            } catch (Exception e) {
            }
        } else {
            new bhi(view).setAlpha(0.0f);
        }
        if (this.f3448Fo instanceof AbstractC3490qt) {
            animatorArr = ((AbstractC3490qt) this.f3448Fo).mo2518b(viewGroup, view);
        } else {
            animatorArr = new Animator[0];
        }
        Animator[] mo2518b = mo2518b(viewGroup, view);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                if (((Boolean) view.getClass().getMethod("isHardwareAccelerated", new Class[0]).invoke(view, new Object[0])).booleanValue()) {
                    view.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(view, 2, null);
                }
            } catch (Exception e2) {
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m2524a(animatorArr, mo2518b, ofFloat));
        animatorSet.setStartDelay(m2522hA());
        animatorSet.setDuration(mo2515hD());
        animatorSet.setInterpolator(new DecelerateInterpolator(1.3f));
        if (Build.VERSION.SDK_INT >= 11) {
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.qt.1
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    try {
                        if (((Boolean) view.getClass().getMethod("isHardwareAccelerated", new Class[0]).invoke(view, new Object[0])).booleanValue()) {
                            view.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(view, 0, null);
                        }
                    } catch (Exception e3) {
                    }
                }
            });
        }
        animatorSet.start();
        this.f3434Fa.put(view.hashCode(), animatorSet);
    }

    /* renamed from: a */
    private Animator[] m2524a(Animator[] animatorArr, Animator[] animatorArr2, Animator animator) {
        Animator[] animatorArr3 = new Animator[animatorArr.length + animatorArr2.length + 1];
        int i = 0;
        while (i < animatorArr2.length) {
            animatorArr3[i] = animatorArr2[i];
            i++;
        }
        for (Animator animator2 : animatorArr) {
            animatorArr3[i] = animator2;
            i++;
        }
        animatorArr3[animatorArr3.length - 1] = animator;
        return animatorArr3;
    }

    @TargetApi(11)
    /* renamed from: hA */
    private long m2522hA() {
        long mo2516hC;
        if ((m2521hE().getLastVisiblePosition() - m2521hE().getFirstVisiblePosition()) + 1 < this.f3437Fd - this.f3436Fc) {
            mo2516hC = mo2516hC();
        } else {
            mo2516hC = ((((this.f3437Fd - this.f3436Fc) + 1) * mo2516hC()) + (this.f3435Fb + mo2517hB())) - System.currentTimeMillis();
        }
        return Math.max(0L, mo2516hC);
    }

    /* renamed from: I */
    public void m2527I(boolean z) {
        this.f3438Fe = z;
    }

    /* renamed from: hB */
    protected long mo2517hB() {
        return this.f3444Fk;
    }

    /* renamed from: hC */
    protected long mo2516hC() {
        return this.f3445Fl;
    }

    /* renamed from: hD */
    protected long mo2515hD() {
        return this.f3446Fm;
    }
}
