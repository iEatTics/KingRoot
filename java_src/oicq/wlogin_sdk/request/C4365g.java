package oicq.wlogin_sdk.request;

import android.widget.Toast;
import java.util.TimerTask;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: oicq.wlogin_sdk.request.g */
/* loaded from: classes.dex */
public class C4365g extends TimerTask {

    /* renamed from: a */
    final /* synthetic */ Toast f5194a;

    /* renamed from: b */
    final /* synthetic */ int f5195b;

    /* renamed from: c */
    final /* synthetic */ RunnableC4364f f5196c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C4365g(RunnableC4364f runnableC4364f, Toast toast, int i) {
        this.f5196c = runnableC4364f;
        this.f5194a = toast;
        this.f5195b = i;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.f5196c.m180a(this.f5194a, this.f5195b + 1);
    }
}
