package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.tu */
/* loaded from: classes.dex */
public abstract class AbstractC3667tu<T extends IInterface> {

    /* renamed from: HE */
    private ServiceConnectionC3669a f3579HE = null;

    /* renamed from: d */
    protected abstract T mo2013d(IBinder iBinder);

    /* renamed from: jU */
    protected abstract int mo2011jU();

    /* renamed from: jV */
    protected abstract T mo2010jV();

    /* renamed from: jW */
    protected abstract Intent mo2009jW();

    /* renamed from: jX */
    public T m2124jX() {
        if (KApplication.m13450hT() == mo2011jU()) {
            return mo2010jV();
        }
        if (this.f3579HE == null) {
            this.f3579HE = new ServiceConnectionC3669a();
        }
        if (this.f3579HE.m2122jY()) {
            return mo2013d(this.f3579HE.m2121jZ());
        }
        Intent mo2009jW = mo2009jW();
        if (mo2009jW != null) {
            this.f3579HE.m2123c(mo2009jW);
        }
        if (this.f3579HE.m2122jY()) {
            return mo2013d(this.f3579HE.m2121jZ());
        }
        return null;
    }

    /* renamed from: com.kingroot.kinguser.tu$a */
    /* loaded from: classes.dex */
    static class ServiceConnectionC3669a implements ServiceConnection {

        /* renamed from: HF */
        private IBinder f3580HF;

        private ServiceConnectionC3669a() {
            this.f3580HF = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.f3580HF = iBinder;
            synchronized (this) {
                notifyAll();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.f3580HF = null;
            synchronized (this) {
                notifyAll();
            }
        }

        /* renamed from: jY */
        public boolean m2122jY() {
            return this.f3580HF != null && this.f3580HF.isBinderAlive() && this.f3580HF.pingBinder();
        }

        /* renamed from: jZ */
        public IBinder m2121jZ() {
            if (m2122jY()) {
                return this.f3580HF;
            }
            return null;
        }

        /* renamed from: c */
        public void m2123c(Intent intent) {
            if (!m2122jY() && intent != null) {
                C3636tj.startService(intent);
                C3636tj.m2173a(intent, this);
                if (!C3697uj.m2032kA()) {
                    synchronized (this) {
                        if (!m2122jY()) {
                            try {
                                wait(3000L);
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        }
    }
}
