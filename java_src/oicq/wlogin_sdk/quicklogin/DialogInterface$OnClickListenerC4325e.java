package oicq.wlogin_sdk.quicklogin;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;
/* renamed from: oicq.wlogin_sdk.quicklogin.e */
/* loaded from: classes.dex */
class DialogInterface$OnClickListenerC4325e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SslErrorHandler f5142a;

    /* renamed from: b */
    final /* synthetic */ C4324d f5143b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC4325e(C4324d c4324d, SslErrorHandler sslErrorHandler) {
        this.f5143b = c4324d;
        this.f5142a = sslErrorHandler;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        QuickLoginWebViewActivity.f5135a = true;
        this.f5142a.proceed();
    }
}
