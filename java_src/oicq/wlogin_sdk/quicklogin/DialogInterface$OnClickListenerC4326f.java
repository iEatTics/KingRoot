package oicq.wlogin_sdk.quicklogin;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;
/* renamed from: oicq.wlogin_sdk.quicklogin.f */
/* loaded from: classes.dex */
class DialogInterface$OnClickListenerC4326f implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SslErrorHandler f5144a;

    /* renamed from: b */
    final /* synthetic */ C4324d f5145b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC4326f(C4324d c4324d, SslErrorHandler sslErrorHandler) {
        this.f5145b = c4324d;
        this.f5144a = sslErrorHandler;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f5144a.cancel();
    }
}
