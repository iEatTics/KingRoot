package oicq.wlogin_sdk.request;

import java.net.HttpURLConnection;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.request.j */
/* loaded from: classes.dex */
public class RunnableC4368j implements Runnable {

    /* renamed from: a */
    private HttpURLConnection f5202a;

    /* renamed from: b */
    private boolean f5203b = false;

    public RunnableC4368j(HttpURLConnection httpURLConnection) {
        this.f5202a = httpURLConnection;
    }

    /* renamed from: a */
    public static boolean m173a(HttpURLConnection httpURLConnection, long j) {
        try {
            RunnableC4368j runnableC4368j = new RunnableC4368j(httpURLConnection);
            Thread thread = new Thread(runnableC4368j);
            thread.start();
            thread.join(j);
            return runnableC4368j.m174a();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m174a() {
        return this.f5203b;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f5202a.connect();
            this.f5203b = true;
        } catch (Throwable th) {
            C4393util.printThrowable(th, "");
        }
    }
}
