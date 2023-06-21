package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.support.p004v4.view.ViewCompat;
import android.support.p004v4.view.ViewPager;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.kinguser.InterfaceC1428api;
import com.kingroot.kinguser.apg;
import com.kingroot.kinguses.R;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class apf extends FrameLayout {
    private ape aHp;
    private ViewPager aHq;
    private ImageView aHr;
    private ViewPager.OnPageChangeListener aHs;
    private apl aHt;
    private apg aHu;
    private LinearLayout aHv;
    private volatile boolean aHw;
    private Set<Integer> aHx;
    private Context context;

    private apf(Context context) {
        super(context);
        this.context = context;
        this.aHx = new HashSet();
    }

    /* renamed from: aW */
    public static apf m9797aW(Context context) {
        return new apf(context);
    }

    /* renamed from: Lc */
    private void m9811Lc() {
        this.aHt = this.aHp.m9828KV();
        setBackgroundColor(0);
        initViewPager();
        m9810Ld();
    }

    /* renamed from: Ld */
    private void m9810Ld() {
        ImageView m9822Lb = this.aHp.m9822Lb();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m9822Lb.getWidth(), m9822Lb.getHeight());
        int[] iArr = new int[2];
        m9822Lb.getLocationInWindow(iArr);
        this.aHr = new ImageView(this.context);
        this.aHr.setImageDrawable(m9822Lb.getDrawable());
        this.aHr.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.aHr.setLayoutParams(layoutParams);
        bhi.m7003J(this.aHr).setX(iArr[0]);
        bhi.m7003J(this.aHr).setY(iArr[1] - getStatusBarHeight());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        this.aHv = new LinearLayout(this.context);
        this.aHv.setLayoutParams(layoutParams2);
        this.aHv.addView(this.aHr);
        m9808Lf();
    }

    private void initViewPager() {
        this.aHs = new ViewPager.SimpleOnPageChangeListener() { // from class: com.kingroot.kinguser.apf.1
            @Override // android.support.p004v4.view.ViewPager.SimpleOnPageChangeListener, android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                apf.this.aHp.m9814fU(i);
                apf.this.aHp.m9813fV(i);
                if (!apf.this.aHx.contains(Integer.valueOf(i))) {
                    apf.this.m9791fX(i);
                    apf.this.aHx.add(Integer.valueOf(i));
                }
                for (int i2 = 1; i2 <= apf.this.aHp.getOffscreenPageLimit(); i2++) {
                    int i3 = i - i2;
                    int i4 = i + i2;
                    if (i3 >= 0 && !apf.this.aHx.contains(Integer.valueOf(i3))) {
                        apf.this.m9791fX(i3);
                        apf.this.aHx.add(Integer.valueOf(i3));
                    }
                    if (i4 < apf.this.aHp.m9829KU().size() && !apf.this.aHx.contains(Integer.valueOf(i4))) {
                        apf.this.m9791fX(i4);
                        apf.this.aHx.add(Integer.valueOf(i4));
                    }
                }
            }
        };
        this.aHq = new ViewPager(this.context);
        this.aHq.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.aHq.setVisibility(4);
        this.aHq.addOnPageChangeListener(this.aHs);
        this.aHq.setOffscreenPageLimit(this.aHp.m9829KU().size() + 1);
        addView(this.aHq);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.aHq.removeOnPageChangeListener(this.aHs);
    }

    @Override // android.view.View
    public boolean isShown() {
        return this.aHw;
    }

    public void show() {
        if (!this.aHw) {
            m9803Lk();
            m9811Lc();
            this.aHw = true;
        }
    }

    public void dismiss() {
        if (this.aHw) {
            this.aHw = false;
            apk m9827KW = this.aHp.m9827KW();
            if (m9827KW != null) {
                m9827KW.m9772gd(this.aHp.m9823La());
            }
            if (this.aHt == null) {
                m9804Lj();
            } else {
                m9805Li();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Le */
    public void m9809Le() {
        m9807Lg();
    }

    /* renamed from: Lf */
    private void m9808Lf() {
        if (this.aHt != null && !this.aHw) {
            Animator mo9763a = this.aHt.mo9763a(this.aHp.m9822Lb(), this.aHr);
            mo9763a.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.apf.2
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    apf.this.aHu = new apg(apf.this.aHp.m9829KU().size());
                    apf.this.aHu.m9780a(new apg.InterfaceC1422a() { // from class: com.kingroot.kinguser.apf.2.1
                        @Override // com.kingroot.kinguser.apg.InterfaceC1422a
                        public void onDismiss() {
                            apf.this.dismiss();
                        }
                    });
                    apf.this.aHq.setAdapter(apf.this.aHu);
                    apf.this.aHq.setCurrentItem(apf.this.aHp.m9824KZ());
                    if (apf.this.aHp.m9824KZ() == 0) {
                        apf.this.aHs.onPageSelected(apf.this.aHp.m9824KZ());
                    }
                    apf.this.aHq.setVisibility(0);
                    apf.this.removeView(apf.this.aHv);
                    apf.this.m9809Le();
                }
            });
            mo9763a.start();
        }
    }

    /* renamed from: Lg */
    private void m9807Lg() {
        apj m9826KX = this.aHp.m9826KX();
        if (m9826KX != null && this.aHp.m9829KU().size() >= 2) {
            m9826KX.mo9756a(this);
            m9826KX.mo9757a(this.aHq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Lh */
    public void m9806Lh() {
        apj m9826KX = this.aHp.m9826KX();
        if (m9826KX != null && this.aHp.m9829KU().size() >= 2) {
            m9826KX.mo9758Lo();
        }
    }

    /* renamed from: Li */
    private void m9805Li() {
        Animator dismissHitAnimator;
        if (this.aHp.m9823La() > this.aHp.m9824KZ()) {
            dismissHitAnimator = getDismissMissAnimator();
        } else {
            dismissHitAnimator = getDismissHitAnimator();
        }
        if (dismissHitAnimator != null) {
            setBackgroundColor(0);
            dismissHitAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.apf.3
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    apf.this.m9806Lh();
                    apf.this.aHx.clear();
                    apf.this.removeView(apf.this.aHq);
                    apf.this.m9804Lj();
                }
            });
            dismissHitAnimator.start();
        }
    }

    private Animator getDismissHitAnimator() {
        ImageView m9777gc = this.aHu.m9777gc(this.aHp.m9823La());
        ImageView m9822Lb = this.aHp.m9822Lb();
        if (m9777gc == null || m9822Lb == null) {
            return null;
        }
        return this.aHt.mo9761b(m9777gc, m9822Lb);
    }

    private Animator getDismissMissAnimator() {
        return this.aHt.mo9759u(this.aHu.m9777gc(this.aHp.m9823La()));
    }

    private Animator getDismissBackgroundAnimator() {
        return this.aHt.mo9760k(this, this.aHp.getBackgroundColor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Lj */
    public void m9804Lj() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        this.aHp.m9825KY().cancel();
    }

    /* renamed from: Lk */
    private void m9803Lk() {
        ((Activity) this.context).getWindow().addContentView(this, new WindowManager.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fX */
    public void m9791fX(final int i) {
        this.aHp.m9825KY().mo9774a(this.aHp.m9829KU().get(i), this.aHu.m9777gc(i), new InterfaceC1428api.InterfaceC1429a() { // from class: com.kingroot.kinguser.apf.4
            private apk aHk;

            {
                this.aHk = apf.this.aHp.m9827KW();
            }

            @Override // com.kingroot.kinguser.InterfaceC1428api.InterfaceC1429a
            public void onFinish() {
                apf.this.setBackgroundColor(apf.this.aHp.getBackgroundColor());
                if (this.aHk != null) {
                    this.aHk.onFinish(i);
                }
            }

            @Override // com.kingroot.kinguser.InterfaceC1428api.InterfaceC1429a
            /* renamed from: Ll */
            public void mo9773Ll() {
                apf.this.dismiss();
                C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.apps_market_load_image_failed_toast));
            }
        });
    }

    private int getStatusBarHeight() {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return this.context.getResources().getDimensionPixelSize(((Integer) cls.getField("status_bar_height").get(cls.newInstance())).intValue());
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9802a(ape apeVar) {
        this.aHp = apeVar;
    }

    /* renamed from: com.kingroot.kinguser.apf$a */
    /* loaded from: classes.dex */
    public static class C1420a {
        private ImageView[] aHA;
        private int aHB;
        private String[] aHC;
        private List<String> aHD;
        private apk aHE;
        private List<ImageView> aHe;
        private int aHh;
        private int aHi;
        private apl aHj;
        private apj aHl;
        private InterfaceC1428api aHm;
        private int backgroundColor;
        private Context context;

        public C1420a(Context context) {
            this.context = context;
        }

        /* renamed from: aW */
        public C1420a m9786aW(List<ImageView> list) {
            this.aHe = list;
            return this;
        }

        /* renamed from: fY */
        public C1420a m9784fY(int i) {
            this.aHB = i;
            return this;
        }

        /* renamed from: fZ */
        public C1420a m9783fZ(int i) {
            this.aHh = i;
            return this;
        }

        /* renamed from: ga */
        public C1420a m9782ga(int i) {
            this.backgroundColor = i;
            return this;
        }

        /* renamed from: gb */
        public C1420a m9781gb(int i) {
            this.aHi = i;
            return this;
        }

        /* renamed from: aX */
        public C1420a m9785aX(List<String> list) {
            this.aHD = list;
            return this;
        }

        /* renamed from: a */
        public apf m9787a(apf apfVar, ImageView imageView) {
            if (!apfVar.isShown()) {
                ape apeVar = new ape();
                if (this.aHe != null && !this.aHe.isEmpty()) {
                    apeVar.m9817aU(this.aHe);
                } else {
                    apeVar.m9817aU(Arrays.asList(this.aHA));
                }
                if (this.aHD != null && !this.aHD.isEmpty()) {
                    apeVar.m9816aV(this.aHD);
                } else {
                    apeVar.m9816aV(Arrays.asList(this.aHC));
                }
                apeVar.m9819a(this.aHE);
                if (this.aHl == null) {
                    apeVar.m9820a(new apo());
                } else {
                    apeVar.m9820a(this.aHl);
                }
                if (this.aHj == null) {
                    apeVar.m9818a(new apn());
                } else {
                    apeVar.m9818a(this.aHj);
                }
                if (this.aHm == null) {
                    apeVar.m9821a(aph.m9776Lm());
                } else {
                    apeVar.m9821a(this.aHm);
                }
                apeVar.setOffscreenPageLimit(this.aHh <= 0 ? 1 : this.aHh);
                apeVar.setBackgroundColor(this.backgroundColor == 0 ? ViewCompat.MEASURED_STATE_MASK : this.backgroundColor);
                apeVar.m9814fU(this.aHB < 0 ? 0 : this.aHB);
                apeVar.m9812fW(this.aHi);
                apeVar.m9815b(imageView);
                apfVar.m9802a(apeVar);
            }
            return apfVar;
        }
    }
}
