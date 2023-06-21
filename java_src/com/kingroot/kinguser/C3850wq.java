package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.FloatRange;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.percent.PercentRelativeLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.kingroot.kinguser.bhj;
import com.kingroot.kinguses.R;
import java.security.InvalidParameterException;
/* renamed from: com.kingroot.kinguser.wq */
/* loaded from: classes.dex */
public class C3850wq {

    /* renamed from: Nf */
    private FrameLayout f3887Nf;

    /* renamed from: Ng */
    private FrameLayout f3888Ng;

    /* renamed from: Nh */
    private FrameLayout f3889Nh;

    /* renamed from: Ni */
    private FrameLayout f3890Ni;

    /* renamed from: Nj */
    private PercentRelativeLayout f3891Nj;

    /* renamed from: Nk */
    private C3855a f3892Nk;

    /* renamed from: Nl */
    private C3855a f3893Nl;

    /* renamed from: Nm */
    private C3855a f3894Nm;

    /* renamed from: Nn */
    private C3855a f3895Nn;
    private LayoutInflater mLayoutInflater;

    public C3850wq(Context context) {
        m1525G((Context) C3948zd.m1327k(context));
    }

    public View getView() {
        return this.f3891Nj;
    }

    /* renamed from: a */
    public void m1515a(int[] iArr, @FloatRange(from = 0.0d, m13741to = 1.0d) float[] fArr) {
        m1513a(m1507e(iArr), m1508d(iArr), fArr, false);
    }

    /* renamed from: a */
    public void m1514a(int[] iArr, @FloatRange(from = 0.0d, m13741to = 1.0d) float[] fArr, boolean z) {
        m1513a(m1507e(iArr), m1508d(iArr), fArr, z);
    }

    /* renamed from: a */
    public View m1522a(int i, final View view) {
        final C3855a m1510bH = m1510bH(i);
        m1518a(m1510bH, new Runnable() { // from class: com.kingroot.kinguser.wq.1
            @Override // java.lang.Runnable
            public void run() {
                C3850wq.this.m1519a(m1510bH, view);
            }
        });
        return m1510bH.view;
    }

    public void remove(int i) {
        m1518a(m1510bH(i), (Runnable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public View m1519a(C3855a c3855a, View view) {
        c3855a.view = view;
        m1520a(c3855a);
        if (c3855a.f3906Nu != null) {
            c3855a.f3906Nu.setTarget(view);
            c3855a.f3906Nu.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.wq.2
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                }
            });
            c3855a.f3906Nu.start();
        }
        return c3855a.view;
    }

    /* renamed from: a */
    private View m1518a(final C3855a c3855a, final Runnable runnable) {
        if (c3855a.f3904Ns.getChildCount() <= 0) {
            if (runnable != null) {
                runnable.run();
            }
            return null;
        } else if (c3855a.f3907Nv != null && c3855a.view != null) {
            c3855a.f3907Nv.setTarget(c3855a.view);
            c3855a.f3907Nv.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.wq.3
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    c3855a.f3904Ns.removeAllViews();
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            });
            View childAt = c3855a.f3904Ns.getChildAt(0);
            c3855a.f3907Nv.start();
            return childAt;
        } else {
            View childAt2 = c3855a.f3904Ns.getChildAt(0);
            c3855a.f3904Ns.removeAllViews();
            if (runnable != null) {
                runnable.run();
                return childAt2;
            }
            return childAt2;
        }
    }

    /* renamed from: a */
    protected void m1513a(C3855a[] c3855aArr, float[] fArr, float[] fArr2, boolean z) {
        if (z) {
            AnimatorSet m7000a = bhj.m7000a(c3855aArr, fArr, fArr2, 300L, new bhj.InterfaceC2281a() { // from class: com.kingroot.kinguser.wq.4
                @Override // com.kingroot.kinguser.bhj.InterfaceC2281a
                /* renamed from: b */
                public void mo1504b(View view, float f) {
                    if (view instanceof FrameLayout) {
                        C3850wq.this.m1521a((FrameLayout) view, f);
                    }
                }
            });
            if (m7000a != null) {
                m7000a.start();
                return;
            }
            return;
        }
        for (int i = 0; i < c3855aArr.length; i++) {
            m1521a(c3855aArr[i].f3904Ns, fArr2[i]);
        }
    }

    /* renamed from: bG */
    public float m1511bG(int i) {
        return m1506f(m1510bH(i).f3904Ns);
    }

    /* renamed from: d */
    public float[] m1508d(int[] iArr) {
        float[] fArr = new float[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            fArr[i] = m1511bG(iArr[i]);
        }
        return fArr;
    }

    /* renamed from: e */
    private C3855a[] m1507e(int[] iArr) {
        C3855a[] c3855aArr = new C3855a[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            c3855aArr[i] = m1510bH(iArr[i]);
        }
        return c3855aArr;
    }

    /* renamed from: f */
    private float m1506f(View view) {
        return ((PercentRelativeLayout.LayoutParams) view.getLayoutParams()).getPercentLayoutInfo().heightPercent;
    }

    /* renamed from: G */
    private void m1525G(Context context) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.f3891Nj = (PercentRelativeLayout) this.mLayoutInflater.inflate(R.layout.base_home_content_layout, (ViewGroup) null);
        this.f3887Nf = (FrameLayout) this.f3891Nj.findViewById(R.id.header_container);
        this.f3888Ng = (FrameLayout) this.f3891Nj.findViewById(R.id.control_panel_container);
        this.f3889Nh = (FrameLayout) this.f3891Nj.findViewById(R.id.menu_container);
        this.f3890Ni = (FrameLayout) this.f3891Nj.findViewById(R.id.tool_box_container);
        this.f3892Nk = new C3855a(null, 0.0f, 0);
        this.f3892Nk.f3904Ns = this.f3887Nf;
        this.f3893Nl = new C3855a(null, 0.0f, 1);
        this.f3893Nl.f3904Ns = this.f3888Ng;
        this.f3894Nm = new C3855a(null, 0.0f, 2);
        this.f3894Nm.f3904Ns = this.f3889Nh;
        this.f3895Nn = new C3855a(null, 0.0f, 3);
        this.f3895Nn.f3904Ns = this.f3890Ni;
    }

    /* renamed from: a */
    private void m1520a(C3855a c3855a) {
        if (c3855a != null && c3855a.view != null) {
            if (c3855a.view.getLayoutParams() == null) {
                c3855a.view.setLayoutParams(m1505nG());
            }
            if (c3855a.view.getParent() == null) {
                c3855a.f3904Ns.addView(c3855a.view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1521a(ViewGroup viewGroup, float f) {
        ((PercentRelativeLayout.LayoutParams) viewGroup.getLayoutParams()).getPercentLayoutInfo().heightPercent = f;
        this.f3891Nj.requestLayout();
    }

    @NonNull
    /* renamed from: nG */
    private FrameLayout.LayoutParams m1505nG() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    @NonNull
    /* renamed from: bH */
    protected C3855a m1510bH(int i) {
        if (i == 0) {
            return this.f3892Nk;
        }
        if (i == 1) {
            return this.f3893Nl;
        }
        if (i == 2) {
            return this.f3894Nm;
        }
        if (i == 3) {
            return this.f3895Nn;
        }
        throw new InvalidParameterException("invalid view type: " + i);
    }

    @NonNull
    /* renamed from: bI */
    protected FrameLayout m1509bI(int i) {
        if (i == 0) {
            return this.f3887Nf;
        }
        if (i == 1) {
            return this.f3888Ng;
        }
        if (i == 2) {
            return this.f3889Nh;
        }
        if (i == 3) {
            return this.f3890Ni;
        }
        throw new InvalidParameterException("invalid view type: " + i);
    }

    /* renamed from: a */
    public View m1524a(@LayoutRes int i, int i2, @FloatRange(from = 0.0d, m13741to = 1.0d) float f) {
        return m1512b(((ViewGroup) this.mLayoutInflater.inflate(i, m1509bI(i2))).getChildAt(0), i2, f);
    }

    @UiThread
    /* renamed from: b */
    public View m1512b(View view, int i, @FloatRange(from = 0.0d, m13741to = 1.0d) float f) {
        C3855a m1510bH = m1510bH(i);
        m1510bH.f3905Nt = f;
        m1510bH.view = view;
        m1520a(m1510bH);
        m1521a(m1510bH.f3904Ns, m1510bH.f3905Nt);
        return view;
    }

    /* renamed from: a */
    public void m1523a(int i, int i2, int i3, int i4, int i5) {
        m1509bI(i).setPadding(i2, i3, i4, i5);
    }

    /* renamed from: com.kingroot.kinguser.wq$a */
    /* loaded from: classes.dex */
    public static class C3855a {

        /* renamed from: Ns */
        public ViewGroup f3904Ns;

        /* renamed from: Nt */
        public float f3905Nt;

        /* renamed from: Nu */
        public Animator f3906Nu;

        /* renamed from: Nv */
        public Animator f3907Nv;
        public int type;
        public View view;

        public C3855a(View view, @FloatRange(from = 0.0d, m13741to = 1.0d) float f, int i) {
            this.view = view;
            this.f3905Nt = f;
            this.type = i;
        }
    }
}
