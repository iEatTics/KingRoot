package com.kingroot.common.ipc;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.NonNull;
import com.kingroot.common.ipc.IKIpc;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.InterfaceC3705up;
import com.kingroot.kinguser.cce;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class KIpcService extends C3657tp {

    /* renamed from: Jb */
    private static final ConcurrentHashMap<String, InterfaceC3705up> f818Jb = new ConcurrentHashMap<>();

    /* renamed from: Jc */
    private static final cce<KIpcStub> f819Jc = new cce<KIpcStub>() { // from class: com.kingroot.common.ipc.KIpcService.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: kL */
        public KIpcStub create() {
            return new KIpcStub();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return f819Jc.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: jR */
    public void mo2131jR() {
        super.mo2131jR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: kK */
    public static IKIpc m13368kK() {
        return f819Jc.get();
    }

    /* loaded from: classes.dex */
    public static class KIpcStub extends IKIpc.Stub {
        @Override // com.kingroot.common.ipc.IKIpc
        public void asyncCall(String str, int i, ArgsPack argsPack, IIpcCallback iIpcCallback) {
            IpcResult ipcResult = new IpcResult(null);
            KIpcService.m13370cX(str).mo1957a(i, argsPack, ipcResult);
            if (iIpcCallback != null) {
                iIpcCallback.onFinish(ipcResult);
            }
        }

        @Override // com.kingroot.common.ipc.IKIpc
        @NonNull
        public IpcResult syncCall(String str, int i, ArgsPack argsPack) {
            Object mo1955c = KIpcService.m13370cX(str).mo1955c(i, argsPack);
            return mo1955c == null ? IpcResult.f815IT : new IpcResult(mo1955c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cX */
    public static InterfaceC3705up m13370cX(String str) {
        InterfaceC3705up interfaceC3705up = f818Jb.get(str);
        if (interfaceC3705up == null) {
            try {
                synchronized (f818Jb) {
                    try {
                        interfaceC3705up = f818Jb.get(str);
                        if (interfaceC3705up == null) {
                            interfaceC3705up = (InterfaceC3705up) InterfaceC3705up.class.cast(Class.forName(str).newInstance());
                            f818Jb.put(str, interfaceC3705up);
                        }
                    } catch (Throwable th) {
                        InterfaceC3705up interfaceC3705up2 = interfaceC3705up;
                        Throwable th2 = th;
                        while (true) {
                            try {
                                try {
                                    break;
                                } catch (ClassNotFoundException e) {
                                    return interfaceC3705up2;
                                } catch (IllegalAccessException e2) {
                                    return interfaceC3705up2;
                                } catch (InstantiationException e3) {
                                    return interfaceC3705up2;
                                }
                            } catch (Throwable th3) {
                                th2 = th3;
                            }
                        }
                        throw th2;
                    }
                }
                return interfaceC3705up;
            } catch (ClassNotFoundException e4) {
                return interfaceC3705up;
            } catch (IllegalAccessException e5) {
                return interfaceC3705up;
            } catch (InstantiationException e6) {
                return interfaceC3705up;
            }
        }
        return interfaceC3705up;
    }
}
