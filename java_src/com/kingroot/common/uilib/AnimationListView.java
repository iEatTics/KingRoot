package com.kingroot.common.uilib;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.kingroot.kinguser.AbstractC3490qt;
import com.kingroot.kinguser.C3494qw;
import com.kingroot.kinguser.C3495qx;
import com.kingroot.kinguser.C3496qy;
import com.kingroot.kinguser.C3497qz;
import java.security.InvalidParameterException;
/* loaded from: classes.dex */
public class AnimationListView extends TransparentListView {

    /* renamed from: MZ */
    private AbsListView.OnScrollListener f828MZ;

    /* renamed from: Na */
    private boolean f829Na;

    /* renamed from: Nb */
    AbsListView.OnScrollListener f830Nb;
    private int mAnimationType;

    public AnimationListView(Context context) {
        super(context);
        this.mAnimationType = 0;
        this.f829Na = true;
        this.f830Nb = new AbsListView.OnScrollListener() { // from class: com.kingroot.common.uilib.AnimationListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                AbstractC3490qt animationAdapter;
                if (i != 0 && (animationAdapter = AnimationListView.this.getAnimationAdapter()) != null) {
                    animationAdapter.reset();
                    animationAdapter.m2531E(false);
                }
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScrollStateChanged(absListView, i);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScroll(absListView, i, i2, i3);
                }
            }
        };
        setOnScrollListener(this.f830Nb);
    }

    public AnimationListView(Context context, int i) {
        super(context);
        this.mAnimationType = 0;
        this.f829Na = true;
        this.f830Nb = new AbsListView.OnScrollListener() { // from class: com.kingroot.common.uilib.AnimationListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                AbstractC3490qt animationAdapter;
                if (i2 != 0 && (animationAdapter = AnimationListView.this.getAnimationAdapter()) != null) {
                    animationAdapter.reset();
                    animationAdapter.m2531E(false);
                }
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScrollStateChanged(absListView, i2);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i22, int i3) {
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScroll(absListView, i2, i22, i3);
                }
            }
        };
        this.mAnimationType = i;
        setOnScrollListener(this.f830Nb);
    }

    public AnimationListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAnimationType = 0;
        this.f829Na = true;
        this.f830Nb = new AbsListView.OnScrollListener() { // from class: com.kingroot.common.uilib.AnimationListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                AbstractC3490qt animationAdapter;
                if (i2 != 0 && (animationAdapter = AnimationListView.this.getAnimationAdapter()) != null) {
                    animationAdapter.reset();
                    animationAdapter.m2531E(false);
                }
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScrollStateChanged(absListView, i2);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i22, int i3) {
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScroll(absListView, i2, i22, i3);
                }
            }
        };
        setOnScrollListener(this.f830Nb);
    }

    public AnimationListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAnimationType = 0;
        this.f829Na = true;
        this.f830Nb = new AbsListView.OnScrollListener() { // from class: com.kingroot.common.uilib.AnimationListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                AbstractC3490qt animationAdapter;
                if (i2 != 0 && (animationAdapter = AnimationListView.this.getAnimationAdapter()) != null) {
                    animationAdapter.reset();
                    animationAdapter.m2531E(false);
                }
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScrollStateChanged(absListView, i2);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i22, int i3) {
                if (AnimationListView.this.f828MZ != null) {
                    AnimationListView.this.f828MZ.onScroll(absListView, i2, i22, i3);
                }
            }
        };
        setOnScrollListener(this.f830Nb);
    }

    public void setAnimationType(int i) {
        this.mAnimationType = i;
    }

    @Override // com.kingroot.common.uilib.KBaseListView, android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        AbstractC3490qt c3497qz;
        if (Build.VERSION.SDK_INT <= 8 || this.mAnimationType == 0) {
            super.setAdapter(listAdapter);
        } else if (listAdapter != null && (listAdapter instanceof BaseAdapter)) {
            switch (this.mAnimationType) {
                case 1:
                    c3497qz = new C3494qw((BaseAdapter) listAdapter);
                    break;
                case 2:
                    c3497qz = new C3497qz((BaseAdapter) listAdapter, 1);
                    break;
                case 3:
                    c3497qz = new C3497qz((BaseAdapter) listAdapter, 80L, 400L, 3);
                    c3497qz.m2530F(true);
                    break;
                case 4:
                    c3497qz = new C3497qz(new C3497qz((BaseAdapter) listAdapter, 5), 1);
                    break;
                case 5:
                    c3497qz = new C3497qz((BaseAdapter) listAdapter, 5);
                    break;
                case 6:
                    c3497qz = new C3496qy((BaseAdapter) listAdapter);
                    break;
                case 7:
                    c3497qz = new C3495qx((BaseAdapter) listAdapter);
                    break;
                case 8:
                    c3497qz = new C3497qz((BaseAdapter) listAdapter, 7);
                    break;
                default:
                    c3497qz = new C3494qw((BaseAdapter) listAdapter);
                    break;
            }
            c3497qz.mo2519a(this);
            c3497qz.m2528H(true);
            super.setAdapter((ListAdapter) c3497qz);
        } else {
            throw new InvalidParameterException("AnimationListView adaper must inheritance from BaseAdapter");
        }
    }

    @Override // android.widget.ListView, android.widget.AdapterView
    public ListAdapter getAdapter() {
        ListAdapter adapter = super.getAdapter();
        if (adapter == null || !(adapter instanceof AbstractC3490qt)) {
            return adapter;
        }
        while (true) {
            AbstractC3490qt abstractC3490qt = (AbstractC3490qt) adapter;
            if (abstractC3490qt.m2520hF() instanceof AbstractC3490qt) {
                adapter = abstractC3490qt.m2520hF();
            } else {
                return abstractC3490qt.m2520hF();
            }
        }
    }

    public AbstractC3490qt getAnimationAdapter() {
        if (Build.VERSION.SDK_INT <= 8 || this.mAnimationType == 0) {
            return null;
        }
        return (AbstractC3490qt) super.getAdapter();
    }

    @Override // com.kingroot.common.uilib.KBaseListView, android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        if (this.f829Na) {
            this.f829Na = false;
            super.setOnScrollListener(onScrollListener);
            return;
        }
        this.f828MZ = onScrollListener;
    }
}
