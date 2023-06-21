package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.view.PagerAdapter;
import android.support.p004v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Vector;
/* loaded from: classes.dex */
public abstract class add extends AbstractC3922ym {

    /* renamed from: Vx */
    protected ViewPager f1393Vx;
    protected Vector<View> acc;
    protected C0710a acd;
    protected LayoutInflater mInflater;

    /* renamed from: co */
    protected abstract CharSequence mo6760co(int i);

    public add(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        this.acc = new Vector<>();
        this.mInflater = LayoutInflater.from(getContext());
        this.acd = new C0710a(this.acc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
    }

    /* renamed from: com.kingroot.kinguser.add$a */
    /* loaded from: classes.dex */
    public class C0710a extends PagerAdapter {
        private Vector<View> ace;

        public C0710a(Vector<View> vector) {
            this.ace = vector;
        }

        /* renamed from: a */
        public void m12552a(Vector<View> vector) {
            this.ace = vector;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public int getCount() {
            return this.ace.size();
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            View view = this.ace.get(i);
            viewGroup.addView(view);
            return view;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view.equals(obj);
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return add.this.mo6760co(i);
        }
    }
}
