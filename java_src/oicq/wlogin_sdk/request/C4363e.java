package oicq.wlogin_sdk.request;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import oicq.wlogin_sdk.tools.ErrMsg;
/* renamed from: oicq.wlogin_sdk.request.e */
/* loaded from: classes.dex */
public class C4363e extends Thread {

    /* renamed from: a */
    Runnable f5190a = new RunnableC4364f(this);

    /* renamed from: b */
    private Context f5191b;

    /* renamed from: c */
    private ErrMsg f5192c;

    public C4363e(Context context, ErrMsg errMsg) {
        this.f5191b = context;
        m182a(errMsg);
    }

    /* renamed from: a */
    public void m182a(ErrMsg errMsg) {
        if (errMsg == null) {
            this.f5192c = null;
            return;
        }
        try {
            this.f5192c = (ErrMsg) errMsg.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            this.f5192c = null;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        new Handler(Looper.getMainLooper()).post(this.f5190a);
    }
}
