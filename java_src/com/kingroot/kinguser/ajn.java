package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import java.util.List;
/* loaded from: classes.dex */
public class ajn extends AbstractC3704uo {
    private static final cce<ajn> sInstance = new cce<ajn>() { // from class: com.kingroot.kinguser.ajn.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: zr */
        public ajn create() {
            return new ajn();
        }
    };

    /* renamed from: zp */
    public static ajn m11456zp() {
        return sInstance.get();
    }

    private ajn() {
    }

    /* renamed from: zq */
    public void m11455zq() {
        m2020aX(2);
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1019a.class;
    }

    /* renamed from: com.kingroot.kinguser.ajn$a */
    /* loaded from: classes.dex */
    public static class C1019a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    new ajq().m11434g(((Boolean) argsPack.next()).booleanValue(), ((Boolean) argsPack.next()).booleanValue());
                    return;
                case 2:
                    ajr.m11430zt().m11431zq();
                    return;
                case 3:
                    ajr.m11430zt().m11432b(((Boolean) argsPack.next()).booleanValue(), (List) argsPack.next());
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            return null;
        }
    }
}
