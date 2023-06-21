package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class afe {
    private static volatile afe ahl;
    private HandlerThread ahh = new HandlerThread("root-invoker");
    private Handler ahi;
    private C0804c ahj;
    private boolean ahk;
    private Context mAppContext;
    private List<WeakReference<InterfaceC0802a>> mListeners;

    /* renamed from: com.kingroot.kinguser.afe$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0802a {
        /* renamed from: aA */
        void mo6653aA(boolean z);
    }

    /* renamed from: aE */
    public static afe m12102aE(Context context) {
        if (ahl == null) {
            synchronized (afe.class) {
                if (ahl == null) {
                    ahl = new afe(context);
                }
            }
        }
        return ahl;
    }

    private afe(Context context) {
        this.mAppContext = context;
        this.ahh.start();
        this.ahi = new HandlerC0803b(this.ahh.getLooper());
        this.mListeners = new ArrayList();
    }

    /* renamed from: a */
    public void m12104a(InterfaceC0802a interfaceC0802a) {
        this.mListeners.add(new WeakReference<>(interfaceC0802a));
    }

    /* renamed from: uY */
    public synchronized void m12100uY() {
        ahl.m12099uZ();
    }

    /* renamed from: uZ */
    private void m12099uZ() {
        if (this.ahj == null || !this.ahj.isAlive()) {
            this.ahj = new C0804c();
            this.ahj.start();
        }
    }

    /* renamed from: va */
    void m12098va() {
        if (!this.ahk) {
            this.ahk = true;
        }
    }

    /* renamed from: vb */
    public void m12097vb() {
        this.ahi.removeMessages(2);
        if (this.ahk) {
            this.ahk = false;
        }
    }

    /* renamed from: com.kingroot.kinguser.afe$b */
    /* loaded from: classes.dex */
    final class HandlerC0803b extends Handler {
        HandlerC0803b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    for (WeakReference weakReference : afe.this.mListeners) {
                        InterfaceC0802a interfaceC0802a = (InterfaceC0802a) weakReference.get();
                        if (interfaceC0802a != null) {
                            interfaceC0802a.mo6653aA(message.arg1 != 0);
                        }
                    }
                    return;
                case 2:
                    afe.this.m12098va();
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.afe$c */
    /* loaded from: classes.dex */
    public final class C0804c extends Thread {
        C0804c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            afe.this.ahi.removeMessages(1);
            afe.this.ahi.removeMessages(2);
            boolean isRootPermition = abc.m12845qK().isRootPermition();
            if (!isRootPermition) {
                afe.this.ahi.sendEmptyMessageDelayed(2, 3000L);
                isRootPermition = abc.m12845qK().isRootPermition(true);
                if (isRootPermition) {
                }
                afe.this.m12097vb();
            }
            Message.obtain(afe.this.ahi, 1, isRootPermition ? 1 : 0, 0).sendToTarget();
        }
    }
}
