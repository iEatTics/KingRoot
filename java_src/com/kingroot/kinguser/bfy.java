package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.ObjectAnimator;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bfy {
    private static final List<String> bnQ = new ArrayList();

    static {
        bnQ.add("com.android.chrome");
        bnQ.add("com.tencent.mtt");
        bnQ.add("sogou.mobile.explorer");
        bnQ.add("com.UCMobile");
    }

    /* renamed from: n */
    public static synchronized void m7190n(Intent intent) {
        synchronized (bfy.class) {
            if (intent != null) {
                if (acu.m12571g(bfw.aaS().abc(), 86400000L)) {
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) intent.getParcelableExtra("app_info");
                    ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) intent.getParcelableExtra("last_app");
                    if (runningTaskInfo != null && runningTaskInfo2 != null) {
                        String packageName = runningTaskInfo.topActivity.getPackageName();
                        runningTaskInfo2.topActivity.getPackageName();
                        if (!KApplication.m13453ge().getPackageName().equals(packageName) && bnQ.contains(packageName)) {
                            abj();
                        }
                    }
                }
            }
        }
    }

    public static void abj() {
        ady.m12308tK().mo1746bi(100691);
        bfw.aaS().m7208cw(System.currentTimeMillis());
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bfy.1
            @Override // java.lang.Runnable
            public void run() {
                final View inflate = LayoutInflater.from(KApplication.m13453ge()).inflate(R.layout.urlcheck_scan_view, (ViewGroup) null);
                final WindowManager windowManager = (WindowManager) KApplication.m13453ge().getSystemService("window");
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.format = -3;
                layoutParams.flags |= 8;
                layoutParams.type = 2003;
                layoutParams.width = -1;
                layoutParams.height = -2;
                layoutParams.gravity = 49;
                layoutParams.verticalMargin = -abg.m12835r(50.0f);
                windowManager.addView(inflate, layoutParams);
                final View findViewById = inflate.findViewById(R.id.mask);
                findViewById.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bfy.1.1
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        findViewById.getViewTreeObserver().removeOnPreDrawListener(this);
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(findViewById, "translationX", -findViewById.getWidth(), findViewById.getWidth());
                        ofFloat.setDuration(2000L);
                        ofFloat.setInterpolator(new AccelerateInterpolator());
                        ofFloat.start();
                        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.bfy.1.1.1
                            @Override // com.android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }

                            @Override // com.android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                windowManager.removeView(inflate);
                            }

                            @Override // com.android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // com.android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }
                        });
                        return true;
                    }
                });
            }
        });
    }
}
