package com.tencent.p020mm.opensdk.diffdev.p022a;

import android.os.Handler;
import com.tencent.p020mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.p020mm.opensdk.diffdev.OAuthListener;
import com.tencent.p020mm.opensdk.utils.Log;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.tencent.mm.opensdk.diffdev.a.b */
/* loaded from: classes.dex */
public final class C4165b implements OAuthListener {

    /* renamed from: f */
    final /* synthetic */ C4164a f4844f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C4165b(C4164a c4164a) {
        this.f4844f = c4164a;
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.OAuthListener
    public final void onAuthFinish(OAuthErrCode oAuthErrCode, String str) {
        List list;
        Log.m496d("MicroMsg.SDK.ListenerWrapper", String.format("onAuthFinish, errCode = %s, authCode = %s", oAuthErrCode.toString(), str));
        this.f4844f.f4842d = null;
        ArrayList<OAuthListener> arrayList = new ArrayList();
        list = this.f4844f.f4841c;
        arrayList.addAll(list);
        for (OAuthListener oAuthListener : arrayList) {
            oAuthListener.onAuthFinish(oAuthErrCode, str);
        }
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.OAuthListener
    public final void onAuthGotQrcode(String str, byte[] bArr) {
        List list;
        Log.m496d("MicroMsg.SDK.ListenerWrapper", "onAuthGotQrcode, qrcodeImgPath = " + str);
        ArrayList<OAuthListener> arrayList = new ArrayList();
        list = this.f4844f.f4841c;
        arrayList.addAll(list);
        for (OAuthListener oAuthListener : arrayList) {
            oAuthListener.onAuthGotQrcode(str, bArr);
        }
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.OAuthListener
    public final void onQrcodeScanned() {
        Handler handler;
        Handler handler2;
        Log.m496d("MicroMsg.SDK.ListenerWrapper", "onQrcodeScanned");
        handler = this.f4844f.handler;
        if (handler != null) {
            handler2 = this.f4844f.handler;
            handler2.post(new RunnableC4166c(this));
        }
    }
}
