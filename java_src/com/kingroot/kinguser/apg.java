package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.p004v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class apg extends PagerAdapter {
    private Map<Integer, FrameLayout> aHF = new WeakHashMap();
    private InterfaceC1422a aHG;
    private int size;

    /* renamed from: com.kingroot.kinguser.apg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1422a {
        void onDismiss();
    }

    public apg(int i) {
        this.size = i;
    }

    @Override // android.support.p004v4.view.PagerAdapter
    public int getCount() {
        return this.size;
    }

    @Override // android.support.p004v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // android.support.p004v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    /* renamed from: gc */
    public ImageView m9777gc(int i) {
        FrameLayout frameLayout = this.aHF.get(Integer.valueOf(i));
        int childCount = frameLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = frameLayout.getChildAt(i2);
            if (childAt instanceof ImageView) {
                return (ImageView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m9780a(InterfaceC1422a interfaceC1422a) {
        this.aHG = interfaceC1422a;
    }

    @Override // android.support.p004v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        FrameLayout frameLayout = this.aHF.get(Integer.valueOf(i));
        if (frameLayout == null) {
            frameLayout = m9778aX(viewGroup.getContext());
            this.aHF.put(Integer.valueOf(i), frameLayout);
        }
        viewGroup.addView(frameLayout);
        return frameLayout;
    }

    @NonNull
    /* renamed from: aX */
    private FrameLayout m9778aX(Context context) {
        final PhotoView photoView = new PhotoView(context);
        photoView.setId(1001);
        photoView.enable();
        photoView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        photoView.setLayoutParams(layoutParams);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(photoView);
        photoView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.apg.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                photoView.reset();
                apg.this.aHG.onDismiss();
            }
        });
        return frameLayout;
    }
}
