package com.kingroot.kinguser;

import android.app.Activity;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
/* loaded from: classes.dex */
public class ang {
    /* renamed from: a */
    public static boolean m10275a(Activity activity, ImageView imageView, View view, AppDownLoadModel appDownLoadModel) {
        if (appDownLoadModel.appStatus != 0 || imageView == null) {
            return false;
        }
        int[] iArr = new int[2];
        imageView.getLocationInWindow(iArr);
        final ImageView imageView2 = new ImageView(activity);
        imageView2.setLayoutParams(imageView.getLayoutParams());
        imageView2.setImageDrawable(imageView.getDrawable());
        final ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        viewGroup.addView(imageView2);
        int[] iArr2 = new int[2];
        view.getLocationInWindow(iArr2);
        C3450qb.m2610a(imageView2, new Point(iArr[0], iArr[1]), new Point(iArr2[0], iArr2[1]), new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.ang.1
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                viewGroup.removeView(imageView2);
            }
        }).start();
        return true;
    }
}
