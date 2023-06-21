package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kinguser.cbw;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class abc implements cbw {

    /* renamed from: YQ */
    private static final Object f1309YQ = new Object();
    private static final cce<abc> sInstance = new cce<abc>() { // from class: com.kingroot.kinguser.abc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: qN */
        public abc create() {
            return new abc();
        }
    };

    /* renamed from: YN */
    private final AtomicBoolean f1310YN;

    /* renamed from: YO */
    final CountDownLatch f1311YO;

    /* renamed from: YP */
    private final AtomicBoolean f1312YP;

    /* renamed from: YR */
    private cbw.InterfaceC2700a f1313YR;

    /* renamed from: qK */
    public static abc m12845qK() {
        return sInstance.get();
    }

    private abc() {
        this.f1310YN = new AtomicBoolean(true);
        this.f1311YO = new CountDownLatch(1);
        this.f1312YP = new AtomicBoolean(false);
        this.f1313YR = new cbw.InterfaceC2700a() { // from class: com.kingroot.kinguser.abc.2
            @Override // com.kingroot.kinguser.cbw.InterfaceC2700a
            /* renamed from: ad */
            public void mo4994ad(boolean z) {
                abc.this.f1310YN.set(false);
                abc.this.f1312YP.set(z);
                abc.this.f1311YO.countDown();
            }
        };
        if (!m12843qM()) {
            mo4997a(this.f1313YR);
        }
    }

    protected void finalize() {
        closeShell();
        m12847b(this.f1313YR);
        super.finalize();
    }

    /* renamed from: qL */
    private int m12844qL() {
        return 2;
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: a */
    public void mo4997a(final cbw.InterfaceC2700a interfaceC2700a) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.abc.3
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                KApplication.m13447hW().mo4997a(interfaceC2700a);
            }
        }.m1544X(true);
    }

    /* renamed from: b */
    public void m12847b(final cbw.InterfaceC2700a interfaceC2700a) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.abc.4
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                KApplication.m13447hW().mo4997a(interfaceC2700a);
            }
        }.m1544X(true);
    }

    /* renamed from: qM */
    private boolean m12843qM() {
        return KApplication.m13450hT() == m12844qL();
    }

    @Override // com.kingroot.kinguser.cbw
    public void closeShell() {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.abc.5
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                KApplication.m13447hW().closeShell();
            }
        }.m1544X(true);
    }

    public boolean isRootPermition() {
        return !m12843qM() ? this.f1312YP.get() : isRootPermition(false);
    }

    @Override // com.kingroot.kinguser.cbw
    public boolean isRootPermition(boolean z) {
        C3637tk c3637tk = null;
        try {
            c3637tk = C3637tk.m2167cS("isRootPermition");
            if (c3637tk != null) {
                c3637tk.lock();
            }
            boolean isRootPermition = KApplication.m13447hW().isRootPermition(z);
            this.f1312YP.set(isRootPermition);
            return isRootPermition;
        } finally {
            if (c3637tk != null) {
                c3637tk.release();
            }
        }
    }

    @Override // com.kingroot.kinguser.cbw
    public boolean isRootPermitionInBackupSu() {
        cbw m13447hW = KApplication.m13447hW();
        return m13447hW != null && m13447hW.isRootPermitionInBackupSu();
    }

    /* renamed from: el */
    public VTCmdResult m12846el(String str) {
        return m12842t(str, true);
    }

    /* renamed from: t */
    public VTCmdResult m12842t(String str, boolean z) {
        return mo4998a(new VTCommand(str, str, z ? 120000L : 0L));
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: a */
    public VTCmdResult mo4998a(VTCommand vTCommand) {
        VTCmdResult mo4998a;
        synchronized (f1309YQ) {
            mo4998a = KApplication.m13447hW().mo4998a(vTCommand);
        }
        return mo4998a;
    }

    @Override // com.kingroot.kinguser.cbw
    public List<VTCmdResult> runRootCommands(List<String> list) {
        List<VTCmdResult> runRootCommands;
        synchronized (f1309YQ) {
            runRootCommands = KApplication.m13447hW().runRootCommands(list);
        }
        return runRootCommands;
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: e */
    public List<VTCmdResult> mo4996e(List<String> list, boolean z) {
        List<VTCmdResult> mo4996e;
        synchronized (f1309YQ) {
            mo4996e = KApplication.m13447hW().mo4996e(list, z);
        }
        return mo4996e;
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: q */
    public List<VTCmdResult> mo4995q(List<VTCommand> list) {
        List<VTCmdResult> mo4995q;
        synchronized (f1309YQ) {
            mo4995q = KApplication.m13447hW().mo4995q(list);
        }
        return mo4995q;
    }
}
