package oicq.wlogin_sdk.request;

import java.net.InetSocketAddress;
/* renamed from: oicq.wlogin_sdk.request.a */
/* loaded from: classes.dex */
public class RunnableC4358a implements Runnable {

    /* renamed from: a */
    private String f5174a;

    /* renamed from: b */
    private int f5175b;

    /* renamed from: c */
    private InetSocketAddress f5176c;

    public RunnableC4358a(String str, int i) {
        this.f5174a = str;
        this.f5175b = i;
    }

    /* renamed from: a */
    public static InetSocketAddress m220a(String str, int i, long j) {
        try {
            RunnableC4358a runnableC4358a = new RunnableC4358a(str, i);
            Thread thread = new Thread(runnableC4358a);
            thread.start();
            thread.join(j);
            return runnableC4358a.m221a();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public synchronized InetSocketAddress m221a() {
        return this.f5176c;
    }

    /* renamed from: a */
    public synchronized void m219a(InetSocketAddress inetSocketAddress) {
        this.f5176c = inetSocketAddress;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m219a(new InetSocketAddress(this.f5174a, this.f5175b));
        } catch (Exception e) {
        }
    }
}
