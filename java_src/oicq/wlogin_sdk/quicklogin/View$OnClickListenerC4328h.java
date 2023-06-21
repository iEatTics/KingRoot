package oicq.wlogin_sdk.quicklogin;

import android.app.Activity;
import android.view.View;
/* renamed from: oicq.wlogin_sdk.quicklogin.h */
/* loaded from: classes.dex */
final class View$OnClickListenerC4328h implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f5150a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC4328h(Activity activity) {
        this.f5150a = activity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f5150a.finish();
    }
}
