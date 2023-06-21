package oicq.wlogin_sdk.quicklogin;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;
/* renamed from: oicq.wlogin_sdk.quicklogin.l */
/* loaded from: classes.dex */
class DialogInterface$OnClickListenerC4332l implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SslErrorHandler f5156a;

    /* renamed from: b */
    final /* synthetic */ C4330j f5157b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC4332l(C4330j c4330j, SslErrorHandler sslErrorHandler) {
        this.f5157b = c4330j;
        this.f5156a = sslErrorHandler;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f5156a.cancel();
    }
}
