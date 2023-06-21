package com.tencent.p020mm.opensdk.diffdev.p022a;

import com.tencent.p020mm.opensdk.diffdev.OAuthListener;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.tencent.mm.opensdk.diffdev.a.c */
/* loaded from: classes.dex */
final class RunnableC4166c implements Runnable {

    /* renamed from: g */
    final /* synthetic */ C4165b f4845g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC4166c(C4165b c4165b) {
        this.f4845g = c4165b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list;
        ArrayList<OAuthListener> arrayList = new ArrayList();
        list = this.f4845g.f4844f.f4841c;
        arrayList.addAll(list);
        for (OAuthListener oAuthListener : arrayList) {
            oAuthListener.onQrcodeScanned();
        }
    }
}
