package com.kingroot.kinguser;

import android.support.annotation.UiThread;
import android.widget.ImageView;
/* renamed from: com.kingroot.kinguser.api */
/* loaded from: classes.dex */
public interface InterfaceC1428api {

    /* renamed from: com.kingroot.kinguser.api$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1429a {
        @UiThread
        /* renamed from: Ll */
        void mo9773Ll();

        @UiThread
        void onFinish();
    }

    /* renamed from: a */
    void mo9774a(String str, ImageView imageView, InterfaceC1429a interfaceC1429a);

    void cancel();
}
