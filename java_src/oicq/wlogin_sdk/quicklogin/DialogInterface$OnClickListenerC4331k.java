package oicq.wlogin_sdk.quicklogin;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;
/* renamed from: oicq.wlogin_sdk.quicklogin.k */
/* loaded from: classes.dex */
class DialogInterface$OnClickListenerC4331k implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SslErrorHandler f5154a;

    /* renamed from: b */
    final /* synthetic */ C4330j f5155b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC4331k(C4330j c4330j, SslErrorHandler sslErrorHandler) {
        this.f5155b = c4330j;
        this.f5154a = sslErrorHandler;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        QuickLoginWebViewLoader.sslErrorProcessed = true;
        this.f5154a.proceed();
    }
}
