package oicq.wlogin_sdk.request;

import android.content.Context;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.h */
/* loaded from: classes.dex */
public class C4366h extends Thread {

    /* renamed from: a */
    private Context f5197a;

    public C4366h(Context context) {
        this.f5197a = context;
        setName("WtCleanThread");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        C4393util.deleteExpireLog(this.f5197a);
    }
}
