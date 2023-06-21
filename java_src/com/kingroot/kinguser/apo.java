package com.kingroot.kinguser;

import android.support.p004v4.view.ViewPager;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.kingroot.kinguser.distribution.thumbnails.style.view.CircleIndicator;
/* loaded from: classes.dex */
public class apo implements apj {
    private CircleIndicator aHV;

    @Override // com.kingroot.kinguser.apj
    /* renamed from: a */
    public void mo9756a(FrameLayout frameLayout) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, 48);
        layoutParams.gravity = 81;
        this.aHV = new CircleIndicator(frameLayout.getContext());
        this.aHV.setGravity(16);
        this.aHV.setLayoutParams(layoutParams);
        frameLayout.addView(this.aHV);
    }

    @Override // com.kingroot.kinguser.apj
    /* renamed from: a */
    public void mo9757a(ViewPager viewPager) {
        this.aHV.setVisibility(0);
        this.aHV.setViewPager(viewPager);
    }

    @Override // com.kingroot.kinguser.apj
    /* renamed from: Lo */
    public void mo9758Lo() {
        ViewGroup viewGroup = (ViewGroup) this.aHV.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.aHV);
        }
    }
}
