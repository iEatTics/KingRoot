package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.p004v4.view.PagerAdapter;
import android.support.p004v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.kingroot.kinguser.yo */
/* loaded from: classes.dex */
public abstract class AbstractC3930yo extends AbstractC3920yk {

    /* renamed from: VA */
    protected int f4032VA;

    /* renamed from: Vx */
    protected ViewPager f4033Vx;

    /* renamed from: Vy */
    protected C3932a f4034Vy;

    /* renamed from: Vz */
    protected int f4035Vz;
    private final ViewPager.OnPageChangeListener mOnPageChangeListener;

    public AbstractC3930yo(Context context) {
        super(context);
        this.f4035Vz = 0;
        this.f4032VA = 0;
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.kingroot.kinguser.yo.1
            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                AbstractC3930yo.this.f4035Vz = AbstractC3930yo.this.f4032VA;
                AbstractC3930yo.this.f4032VA = i;
                AbstractC3930yo.this.mo1376a(i, AbstractC3930yo.this.f4010Vc.get(i));
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        this.f4033Vx = new ViewPager(getContext());
        this.f4034Vy = new C3932a();
        this.f4033Vx.setAdapter(this.f4034Vy);
        this.f4033Vx.setOnPageChangeListener(this.mOnPageChangeListener);
        return this.f4033Vx;
    }

    /* renamed from: a */
    protected void mo1376a(int i, AbstractC3922ym abstractC3922ym) {
    }

    /* renamed from: com.kingroot.kinguser.yo$a */
    /* loaded from: classes.dex */
    class C3932a extends PagerAdapter {
        private C3932a() {
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void destroyItem(View view, int i, Object obj) {
            ((ViewPager) view).removeView(AbstractC3930yo.this.f4010Vc.get(i).getWholeView());
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void finishUpdate(View view) {
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public int getCount() {
            return AbstractC3930yo.this.f4010Vc.size();
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public Object instantiateItem(View view, int i) {
            View wholeView = AbstractC3930yo.this.f4010Vc.get(i).getWholeView();
            ((ViewGroup) view).addView(wholeView, new ViewGroup.LayoutParams(-1, -1));
            return wholeView;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public Parcelable saveState() {
            return null;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void startUpdate(View view) {
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        this.f4010Vc.get(this.f4032VA).mo1372i(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onCreate(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onResume();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onPause();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onStop();
        }
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onDestroy();
        }
        super.onDestroy();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.onActivityResult(i, i2, intent);
        }
    }
}
