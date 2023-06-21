package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.advance.install.IInjectCallback;
/* loaded from: classes.dex */
public class agt extends AbstractC3704uo {
    private static cce<agt> sInstance = new cce<agt>() { // from class: com.kingroot.kinguser.agt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wd */
        public agt create() {
            return new agt();
        }
    };

    private agt() {
    }

    /* renamed from: wb */
    public static agt m11907wb() {
        return sInstance.get();
    }

    /* renamed from: a */
    public void m11908a(IInjectCallback iInjectCallback, boolean z) {
        m2022a(1, new ArgsPack(iInjectCallback, Boolean.valueOf(z)));
    }

    /* renamed from: wc */
    public boolean m11906wc() {
        return ((Boolean) m2019aY(2).getResult()).booleanValue();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0913a.class;
    }

    /* renamed from: com.kingroot.kinguser.agt$a */
    /* loaded from: classes.dex */
    public static class C0913a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    agu.m11900we().m11904a(IInjectCallback.Stub.asInterface((IBinder) argsPack.next()), ((Boolean) argsPack.next()).booleanValue());
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 2:
                    return Boolean.valueOf(agu.m11900we().m11901wc());
                default:
                    return null;
            }
        }
    }
}
