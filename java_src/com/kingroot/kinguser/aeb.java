package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IIpcCallback;
import com.kingroot.common.ipc.IpcResult;
/* loaded from: classes.dex */
public class aeb extends AbstractC3704uo {
    private static volatile aeb aeF;

    /* renamed from: tV */
    public static aeb m12285tV() {
        if (aeF == null) {
            synchronized (aeb.class) {
                if (aeF == null) {
                    aeF = new aeb();
                }
            }
        }
        return aeF;
    }

    /* renamed from: tW */
    public void m12284tW() {
        m2020aX(1);
    }

    /* renamed from: cI */
    public void m12286cI(int i) {
        m2022a(2, new ArgsPack(Integer.valueOf(i)));
    }

    /* renamed from: a */
    public void m12287a(int i, IIpcCallback iIpcCallback) {
        m2021a(2, new ArgsPack(Integer.valueOf(i)), iIpcCallback);
    }

    /* renamed from: com.kingroot.kinguser.aeb$a */
    /* loaded from: classes.dex */
    public static class C0768a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    aec.m12276tX().m12277tW();
                    return;
                case 2:
                    if (argsPack != null) {
                        aec.m12276tX().m12280cI(((Integer) argsPack.next()).intValue());
                        return;
                    }
                    return;
                case 3:
                    aec.m12276tX().m12274tZ();
                    return;
                case 4:
                    aec.m12276tX().m12271uc();
                    return;
                case 5:
                    aec.m12276tX().m12273ua();
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

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0768a.class;
    }
}
