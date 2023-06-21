package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IIpcCallback;
import com.kingroot.common.ipc.IKIpc;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.common.ipc.KIpcService;
/* renamed from: com.kingroot.kinguser.uq */
/* loaded from: classes.dex */
public class C3706uq extends AbstractC3667tu<IKIpc> {
    private static final cce<C3706uq> sInstance = new cce<C3706uq>() { // from class: com.kingroot.kinguser.uq.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: kJ */
        public C3706uq create() {
            return new C3706uq();
        }
    };

    /* renamed from: kH */
    public static C3706uq m2008kH() {
        return sInstance.get();
    }

    /* renamed from: a */
    public void m2016a(Class<? extends InterfaceC3705up> cls, int i, ArgsPack argsPack) {
        m2015a(cls, i, argsPack, null);
    }

    /* renamed from: a */
    public void m2015a(final Class<? extends InterfaceC3705up> cls, final int i, final ArgsPack argsPack, final IIpcCallback iIpcCallback) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.uq.2
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                super.run();
                IKIpc jX = C3706uq.this.m2124jX();
                if (jX != null) {
                    try {
                        jX.asyncCall(cls.getName(), i, argsPack, iIpcCallback);
                    } catch (RemoteException e) {
                    }
                }
            }
        }.m1530ny();
    }

    @NonNull
    /* renamed from: b */
    public IpcResult m2014b(Class<? extends InterfaceC3705up> cls, int i, ArgsPack argsPack) {
        IKIpc jX = m2124jX();
        if (jX == null) {
            return IpcResult.f815IT;
        }
        try {
            return jX.syncCall(cls.getName(), i, argsPack);
        } catch (Exception e) {
            return IpcResult.f815IT;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: kI */
    public IKIpc mo2010jV() {
        return KIpcService.m13368kK();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: e */
    public IKIpc mo2013d(IBinder iBinder) {
        return IKIpc.Stub.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(bzt.m5101ge(), KIpcService.class);
    }
}
