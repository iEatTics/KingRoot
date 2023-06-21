package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.support.p004v4.view.PagerAdapter;
import android.support.p004v4.view.ViewPager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ObjectAnimator;
import com.kingcore.uilib.VerticalViewPager;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class axj extends AbstractC3922ym implements ViewPager.OnPageChangeListener {
    private boolean aYb;
    private int aZd;
    private VerticalViewPager aZe;
    private final SparseArray<View> aZf;
    private CheckBox aZg;
    private boolean aZh;
    private boolean aZi;

    public axj(Context context) {
        super(context);
        this.aZd = -1;
        this.aYb = false;
        this.aZe = null;
        this.aZf = new SparseArray<>();
        this.aZh = true;
        this.aZi = false;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C3937yt(this.mContext, null);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        LayoutInflater from = LayoutInflater.from(KUApplication.m13453ge());
        ArrayList arrayList = new ArrayList();
        View inflate = from.inflate(R.layout.page_guide_single_type_one, (ViewGroup) null);
        inflate.setBackgroundResource(R.drawable.guide_page_background_first);
        this.aZf.put(0, inflate);
        ((ImageView) inflate.findViewById(R.id.guide_top_pic)).setImageResource(R.drawable.guide_page_first);
        ((TextView) inflate.findViewById(R.id.guide_title)).setText(R.string.guide_view_first_title);
        ((TextView) inflate.findViewById(R.id.guide_sub_title)).setText(R.string.guide_view_first_sub_title);
        m8357n(inflate.findViewById(R.id.guide_arrow), 0);
        inflate.findViewById(R.id.guide_arrow).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axj.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axj.this.aZe.setCurrentItem(axj.this.aZe.getCurrentItem() + 1, true);
            }
        });
        arrayList.add(inflate);
        View inflate2 = from.inflate(R.layout.page_guide_single_type_one, (ViewGroup) null);
        inflate2.setBackgroundResource(R.drawable.guide_page_background_second);
        this.aZf.put(1, inflate2);
        ((ImageView) inflate2.findViewById(R.id.guide_top_pic)).setImageResource(R.drawable.guide_page_second);
        ((TextView) inflate2.findViewById(R.id.guide_title)).setText(R.string.guide_view_second_title);
        ((TextView) inflate2.findViewById(R.id.guide_sub_title)).setText(R.string.guide_view_second_sub_title);
        m8357n(inflate2.findViewById(R.id.guide_arrow), 1);
        arrayList.add(inflate2);
        View inflate3 = from.inflate(R.layout.page_guide_single_type_two, (ViewGroup) null);
        inflate3.setBackgroundResource(R.drawable.guide_page_background_third);
        this.aZf.put(2, inflate3);
        ((ImageView) inflate3.findViewById(R.id.guide_top_pic)).setImageResource(R.drawable.guide_page_third);
        ((TextView) inflate3.findViewById(R.id.guide_title)).setText(R.string.guide_view_third_title);
        ((TextView) inflate3.findViewById(R.id.guide_sub_title)).setText(R.string.guide_view_third_sub_title);
        final View findViewById = inflate3.findViewById(R.id.guide_btn);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axj.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (axj.this.aZg != null && axj.this.aZg.isChecked()) {
                    ady.m12308tK().mo1746bi(100376);
                }
                aks.m11143BP().m10846be(false);
                aks.m11143BP().m11030Dy();
                axj.this.m8362Uh();
            }
        });
        this.aZg = (CheckBox) inflate3.findViewById(R.id.protocol_checkbox);
        findViewById.setEnabled(this.aZg.isChecked());
        this.aZg.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.kingroot.kinguser.axj.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                findViewById.setEnabled(z);
            }
        });
        inflate3.findViewById(R.id.protocol_text).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axj.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(bau.m7891VL()));
                    if (C3952zh.m1312pq().queryIntentActivities(intent, 32).size() > 0) {
                        intent.setFlags(335544320);
                        KUApplication.m13453ge().startActivity(intent);
                    }
                } catch (Throwable th) {
                }
            }
        });
        arrayList.add(inflate3);
        C1868a c1868a = new C1868a(arrayList);
        this.aZe = new VerticalViewPager(getContext());
        this.aZe.setAdapter(c1868a);
        this.aZe.setVerticalScrollBarEnabled(false);
        this.aZe.setHorizontalScrollBarEnabled(false);
        this.aZe.setCurrentItem(0, true);
        this.aZe.setOnPageChangeListener(this);
        this.aZe.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.axj.5
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                axj.this.aZe.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axj.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        axj.this.onPageSelected(0);
                    }
                }, 200L);
            }
        });
        return this.aZe;
    }

    /* renamed from: n */
    private void m8357n(View view, int i) {
        if (view != null) {
            view.setTag(Integer.valueOf(i));
            view.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axj.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VerticalViewPager verticalViewPager;
                    Object tag = view2.getTag();
                    if (tag != null && (tag instanceof Integer) && (verticalViewPager = axj.this.aZe) != null) {
                        int intValue = ((Integer) tag).intValue();
                        if (intValue + 1 < verticalViewPager.getAdapter().getCount()) {
                            verticalViewPager.setCurrentItem(intValue + 1, true);
                        }
                    }
                }
            });
            m8368B(view);
        }
    }

    /* renamed from: B */
    private void m8368B(View view) {
        if (view != null) {
            try {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, -abg.m12835r(10.0f), 0.0f);
                ofFloat.setDuration(1000L);
                ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
                ofFloat.setRepeatCount(-1);
                ofFloat.start();
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        if (!m8363TV() && message.what == 10201) {
            this.aZd = message.arg1;
            m8364TU();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        aiy.m11500yI().m11506a(getHandler());
        aiy.m11500yI().m11501ll();
    }

    /* renamed from: TU */
    private void m8364TU() {
        this.aYb = true;
        aiy.m11500yI().m11499yJ();
    }

    /* renamed from: TV */
    private boolean m8363TV() {
        return this.aYb;
    }

    /* renamed from: Uh */
    public void m8362Uh() {
        bgp.abR();
        if (this.aZd == -1) {
            RootProcessActivity.m12608h(getContext(), 1);
            getActivity().finish();
        } else {
            aiy.m11507a(getActivity(), this.aZd);
        }
        m8364TU();
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        View view = this.aZf.get(i);
        if (i == 0 && this.aZh) {
            this.aZh = false;
            m8365E(view);
        }
        View findViewById = view.findViewById(R.id.guide_text_panel);
        m8366D((ImageView) view.findViewById(R.id.guide_top_pic));
        m8367C(findViewById);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        if (this.aZg != null && !this.aZg.isChecked()) {
            ady.m12308tK().mo1746bi(100375);
        }
        super.onStop();
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (i == 1 && !this.aZi) {
            this.aZi = true;
            bfm.aah().mo7270ai(4, 3);
        }
    }

    /* renamed from: com.kingroot.kinguser.axj$a */
    /* loaded from: classes.dex */
    public static class C1868a extends PagerAdapter {
        private List<View> aDb;

        public C1868a(List<View> list) {
            this.aDb = list;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public int getCount() {
            if (this.aDb == null) {
                return 0;
            }
            return this.aDb.size();
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            viewGroup.addView(this.aDb.get(i));
            return this.aDb.get(i);
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView(this.aDb.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public void m8367C(final View view) {
        bhk.m6991c(view, 400, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axj.7
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                view.setVisibility(0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public void m8366D(final View view) {
        if (view != null) {
            bhk.m6993b(view, 400, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axj.8
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    view.setVisibility(0);
                }
            });
        }
    }

    /* renamed from: E */
    private void m8365E(final View view) {
        if (this.aZh) {
            this.aZh = true;
            getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axj.9
                @Override // java.lang.Runnable
                public void run() {
                    View findViewById = view.findViewById(R.id.guide_text_panel);
                    axj.this.m8366D((ImageView) view.findViewById(R.id.guide_top_pic));
                    axj.this.m8367C(findViewById);
                }
            }, 1000L);
        }
    }
}
