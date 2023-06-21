package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import com.kingroot.common.framework.service.IKServiceManager;
import com.kingroot.common.framework.service.IServiceConnection;
import com.kingroot.common.framework.service.KServiceManager;
import com.kingroot.common.framework.service.KSysService;
import com.kingroot.kinguser.C3658tq;
import com.kingroot.kinguser.C3840wl;
/* renamed from: com.kingroot.kinguser.tq */
/* loaded from: classes.dex */
public class C3658tq {

    /* renamed from: Hu */
    private static IBinder f3570Hu;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.tq$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3663a {
        /* renamed from: a */
        void mo2125a(int i, IKServiceManager iKServiceManager);
    }

    public static void startService(final Intent intent) {
        ComponentName component;
        if (intent != null && (component = intent.getComponent()) != null && !TextUtils.isEmpty(component.getClassName())) {
            m2129a(new InterfaceC3663a() { // from class: com.kingroot.kinguser.tq.1
                @Override // com.kingroot.kinguser.C3658tq.InterfaceC3663a
                /* renamed from: a */
                public void mo2125a(int i, IKServiceManager iKServiceManager) {
                    try {
                        iKServiceManager.startService(intent);
                    } catch (Throwable th) {
                    }
                }
            });
        }
    }

    public static void stopService(final Intent intent) {
        ComponentName component;
        if (intent != null && (component = intent.getComponent()) != null && !TextUtils.isEmpty(component.getClassName())) {
            m2129a(new InterfaceC3663a() { // from class: com.kingroot.kinguser.tq.2
                @Override // com.kingroot.kinguser.C3658tq.InterfaceC3663a
                /* renamed from: a */
                public void mo2125a(int i, IKServiceManager iKServiceManager) {
                    try {
                        iKServiceManager.stopService(intent);
                    } catch (Throwable th) {
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static void m2130a(Intent intent, ServiceConnection serviceConnection) {
        ComponentName component;
        if (intent != null && (component = intent.getComponent()) != null && !TextUtils.isEmpty(component.getClassName())) {
            m2129a(new C36613(intent, serviceConnection, component));
        }
    }

    /* renamed from: com.kingroot.kinguser.tq$3 */
    /* loaded from: classes.dex */
    public static class C36613 implements InterfaceC3663a {

        /* renamed from: Hs */
        final /* synthetic */ Intent f3573Hs;

        /* renamed from: Hv */
        public final /* synthetic */ ServiceConnection f3574Hv;

        /* renamed from: Hw */
        public final /* synthetic */ ComponentName f3575Hw;

        C36613(Intent intent, ServiceConnection serviceConnection, ComponentName componentName) {
            this.f3573Hs = intent;
            this.f3574Hv = serviceConnection;
            this.f3575Hw = componentName;
        }

        @Override // com.kingroot.kinguser.C3658tq.InterfaceC3663a
        /* renamed from: a */
        public void mo2125a(int i, IKServiceManager iKServiceManager) {
            try {
                iKServiceManager.bindService(this.f3573Hs, new IServiceConnection.Stub() { // from class: com.kingroot.common.framework.service.KServiceManagerProxy$3$1
                    @Override // com.kingroot.common.framework.service.IServiceConnection
                    public void connected(final IBinder iBinder) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManagerProxy$3$1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C3658tq.C36613.this.f3574Hv.onServiceConnected(C3658tq.C36613.this.f3575Hw, iBinder);
                            }
                        });
                    }
                });
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    private static void m2129a(InterfaceC3663a interfaceC3663a) {
        if (f3570Hu != null && f3570Hu.isBinderAlive()) {
            IKServiceManager asInterface = KServiceManager.asInterface(f3570Hu);
            if (interfaceC3663a != null) {
                interfaceC3663a.mo2125a(0, asInterface);
                return;
            }
            return;
        }
        m2128b(interfaceC3663a);
    }

    /* renamed from: b */
    private static void m2128b(final InterfaceC3663a interfaceC3663a) {
        if (f3570Hu != null && f3570Hu.isBinderAlive() && f3570Hu.pingBinder()) {
            IKServiceManager asInterface = KServiceManager.asInterface(f3570Hu);
            if (interfaceC3663a != null) {
                interfaceC3663a.mo2125a(0, asInterface);
                return;
            }
            return;
        }
        synchronized (C3658tq.class) {
            if (f3570Hu != null && f3570Hu.isBinderAlive() && f3570Hu.pingBinder()) {
                IKServiceManager asInterface2 = KServiceManager.asInterface(f3570Hu);
                if (interfaceC3663a != null) {
                    interfaceC3663a.mo2125a(0, asInterface2);
                }
                return;
            }
            KSysService.m13394jS();
            KSysService.m13396a(new ServiceConnection() { // from class: com.kingroot.kinguser.tq.4
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    IBinder unused = C3658tq.f3570Hu = iBinder;
                    IKServiceManager asInterface3 = KServiceManager.asInterface(C3658tq.f3570Hu);
                    if (InterfaceC3663a.this != null) {
                        InterfaceC3663a.this.mo2125a(1, asInterface3);
                    }
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                }
            }, 1);
        }
    }
}
