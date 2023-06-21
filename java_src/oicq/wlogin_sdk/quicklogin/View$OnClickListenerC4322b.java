package oicq.wlogin_sdk.quicklogin;

import android.view.View;
/* renamed from: oicq.wlogin_sdk.quicklogin.b */
/* loaded from: classes.dex */
class View$OnClickListenerC4322b implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ QuickLoginWebViewActivity f5137a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC4322b(QuickLoginWebViewActivity quickLoginWebViewActivity) {
        this.f5137a = quickLoginWebViewActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f5137a.finish();
    }
}
