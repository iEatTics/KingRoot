package com.kingroot.kinguser;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.advance.install.IInjectCallback;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.util.protect.RebootStat;
/* loaded from: classes.dex */
public class agu {
    private static RebootStat amZ = bho.m6979S("si", 1);
    private static cce<agu> sInstance = new cce<agu>() { // from class: com.kingroot.kinguser.agu.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wi */
        public agu create() {
            return new agu();
        }
    };

    private agu() {
    }

    /* renamed from: we */
    public static agu m11900we() {
        return sInstance.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: wf */
    public synchronized int m11899wf() {
        InterfaceC3159ho interfaceC3159ho;
        int i = 1;
        synchronized (this) {
            if (!aks.m11143BP().m10948Fc()) {
                i = 3;
            } else if (!abc.m12845qK().isRootPermition(true)) {
                i = 2;
            } else if (!agr.m11914vW().m11913vX()) {
                agr.m11914vW().m11917F(0, m11898wg());
                if (!m11901wc()) {
                    i = agr.m11914vW().m11915fz("package") ? 1 : 4;
                }
            } else {
                bho.m6977a(amZ, null);
                if (amZ == null || amZ.androidRebootPeekCount < 2) {
                    bho.m6976b(amZ, 2, "begin");
                    try {
                        interfaceC3159ho = C3702un.m2024a(new C3701um("system_server", "hk", "m.M", "m", m11898wg(), agk.amQ, "com.kingroot.hook", "kinguser_9", agk.amR));
                    } catch (Exception e) {
                        interfaceC3159ho = null;
                    }
                    int mo3270be = interfaceC3159ho != null ? interfaceC3159ho.mo3270be() : -1;
                    if (interfaceC3159ho != null) {
                    }
                    try {
                        Thread.sleep(15000L);
                    } catch (InterruptedException e2) {
                    }
                    if (mo3270be == 0 && m11901wc()) {
                        bho.m6973d(amZ, null);
                    } else {
                        bho.m6974c(amZ, null);
                        i = 2;
                    }
                } else {
                    i = 3;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public void m11904a(IInjectCallback iInjectCallback, boolean z) {
        beg.m7461Zj().m7454a(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.agu.2
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                IInjectCallback iInjectCallback2 = (IInjectCallback) interfaceC2117a.mo7445nF().get(0);
                if (((Boolean) interfaceC2117a.mo7445nF().get(1)).booleanValue()) {
                    RebootStat unused = agu.amZ = bho.m6972f(agu.amZ);
                }
                int m11899wf = agu.this.m11899wf();
                if (iInjectCallback2 != null) {
                    try {
                        iInjectCallback2.onFinish(m11899wf);
                    } catch (RemoteException e) {
                    }
                }
            }
        }), iInjectCallback, Boolean.valueOf(z));
    }

    /* renamed from: wc */
    public boolean m11901wc() {
        return agr.m11914vW().m11916fA("package");
    }

    /* renamed from: wg */
    private String m11898wg() {
        agm m11931vR = agm.m11931vR();
        m11931vR.m11940J("kinguser_9");
        m11931vR.m11936ft(agk.PACKAGE_NAME);
        m11931vR.m11937fs("com.kinguser.kingroot.ACTION_INSTALL");
        m11931vR.m11935fu("6B696E676D61737465725F776F64");
        m11931vR.m11939aE(true);
        m11931vR.m11932fx("191240FCB048127DB9110D1B30537FDE");
        return m11931vR.m11929vT();
    }
}
