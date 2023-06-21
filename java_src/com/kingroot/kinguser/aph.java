package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ObjectAnimator;
import com.kingroot.kinguser.InterfaceC1428api;
import com.kingroot.kinguser.apv;
/* loaded from: classes.dex */
public class aph implements InterfaceC1428api {
    private static final cce<aph> sInstance = new cce<aph>() { // from class: com.kingroot.kinguser.aph.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Ln */
        public aph create() {
            return new aph();
        }
    };

    /* renamed from: Lm */
    public static aph m9776Lm() {
        return sInstance.get();
    }

    private aph() {
    }

    @Override // com.kingroot.kinguser.InterfaceC1428api
    /* renamed from: a */
    public void mo9774a(String str, ImageView imageView, InterfaceC1428api.InterfaceC1429a interfaceC1429a) {
        if (str != null && imageView != null && !str.equals(imageView.getTag())) {
            apv.m9735LO().m9730a(str, new C14242(str, imageView, interfaceC1429a));
        }
    }

    /* renamed from: com.kingroot.kinguser.aph$2 */
    /* loaded from: classes.dex */
    class C14242 implements apv.InterfaceC1441b {

        /* renamed from: Ap */
        final /* synthetic */ ImageView f1523Ap;
        final /* synthetic */ String aHJ;
        final /* synthetic */ InterfaceC1428api.InterfaceC1429a aHK;

        C14242(String str, ImageView imageView, InterfaceC1428api.InterfaceC1429a interfaceC1429a) {
            this.aHJ = str;
            this.f1523Ap = imageView;
            this.aHK = interfaceC1429a;
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(final String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aph.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C14242.this.aHJ.equals(str) && bitmap != null) {
                        C14242.this.f1523Ap.setImageBitmap(bitmap);
                        C14242.this.f1523Ap.setTag(str);
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(C14242.this.f1523Ap, "alpha", 0.0f, 1.0f);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.aph.2.1.1
                            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                C14242.this.aHK.onFinish();
                            }
                        });
                        ofFloat.setDuration(500L);
                        ofFloat.start();
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: eE */
        public void mo4136eE(String str) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aph.2.2
                @Override // java.lang.Runnable
                public void run() {
                    C14242.this.aHK.mo9773Ll();
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC1428api
    public void cancel() {
    }
}
