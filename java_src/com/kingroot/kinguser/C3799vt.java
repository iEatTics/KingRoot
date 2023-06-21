package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vt */
/* loaded from: classes.dex */
public class C3799vt extends AbstractC3798vs<C2037b> implements ActionStatsID {

    /* renamed from: Li */
    private final C3802a f3785Li;

    /* renamed from: Lj */
    private C2687c f3786Lj;

    /* renamed from: Lo */
    private final RunnableC3845wo f3787Lo;
    private static final cce<C3799vt> sInstance = new cce<C3799vt>() { // from class: com.kingroot.kinguser.vt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: lY */
        public C3799vt create() {
            return new C3799vt();
        }
    };

    /* renamed from: Lk */
    private static final int[] f3781Lk = {ActionStatsID.EMID_KingCom_Receiver_Unlock, ActionStatsID.EMID_KingCom_Network_Unlock, ActionStatsID.EMID_KingCom_Network_Lock, ActionStatsID.EMID_KingCom_Got_Root_Count, ActionStatsID.EMID_KingCom_Got_Root_Success_Count, ActionStatsID.EMID_KingCom_Root_Shell_Run_Throw_Exception, ActionStatsID.EMID_KingCom_Root_Shell_Run_Success};

    /* renamed from: Ll */
    private static final int[] f3782Ll = {ActionStatsID.EMID_KingCom_Top_Monitor_Accessibility_Enable_Result, ActionStatsID.EMID_KingCom_Root_Apply_Time, ActionStatsID.EMID_KingCom_Auto_Start_After_Boot, ActionStatsID.EMID_KingCom_Root_Kd_State, ActionStatsID.EMID_KingCom_Root_Apply_Root_From_Backup_Su, ActionStatsID.EMID_KingCom_Root_Apply_By_Others_Time, ActionStatsID.EMID_KingCom_Inject_Time_After_Boot, ActionStatsID.EMID_KingCom_Process_Performance_Report, ActionStatsID.EMID_KingCom_Inject_Result_Start_After_Boot, ActionStatsID.EMID_KingCom_Shark_Connect_Quality, ActionStatsID.EMID_KingCom_Shark_Connect_Times};

    /* renamed from: Lm */
    private static final int[] f3783Lm = new int[0];

    /* renamed from: Ln */
    private static final int[] f3784Ln = {ActionStatsID.EMID_KingCom_Push_Notification_Result, ActionStatsID.EMID_KingCom_Push_Notification_User_Click};

    /* renamed from: lT */
    public static C3799vt m1728lT() {
        return sInstance.get();
    }

    private C3799vt() {
        this.f3785Li = new C3802a();
        this.f3787Lo = new RunnableC3845wo() { // from class: com.kingroot.kinguser.vt.2
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                super.run();
                C3799vt.this.m1726lV();
                if (acu.m12571g(C3824wc.m1580nh().m1579ni(), 57600000L)) {
                    C3799vt.this.m1725lW();
                }
            }
        };
        this.f3786Lj = new C2687c();
        this.f3786Lj.f2194dR = 73;
        this.f3786Lj.f2197lc = "2BA5F14C3BF42C33";
        this.f3786Lj.f2195dS = 164;
        this.f3786Lj.version = "1.5.1-beta1_64";
        this.f3786Lj.f2196dT = C3489qs.f3433EZ;
    }

    @Override // com.kingroot.kinguser.AbstractC3798vs
    /* renamed from: lP */
    protected InterfaceC3797vr<C2037b> mo1730lP() {
        return this.f3785Li;
    }

    @Override // com.kingroot.kinguser.AbstractC3798vs
    @NonNull
    /* renamed from: lQ */
    protected C2687c mo1729lQ() {
        return this.f3786Lj;
    }

    /* renamed from: lU */
    public void m1727lU() {
        this.f3787Lo.m1530ny();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lV */
    public boolean m1726lV() {
        List<C2037b> lK = mo1736lK();
        if (!C3942yy.m1351d(lK) && m1750D(lK)) {
            mo1737lJ();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lW */
    public boolean m1725lW() {
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(mo1745lB());
        arrayList.addAll(mo1740lG());
        arrayList.addAll(mo1738lI());
        arrayList.addAll(mo1744lC());
        arrayList.addAll(C3796vq.m1753C(C3819vz.m1607mQ().m1613P(currentTimeMillis)));
        arrayList.addAll(C3796vq.m1753C(C3803vu.m1680md().m1673mk()));
        if (m1750D(arrayList)) {
            C3824wc.m1580nh().m1581T(System.currentTimeMillis());
            mo1742lE();
            mo1739lH();
            mo1743lD();
            mo1741lF();
            C3819vz.m1607mQ().m1614O(currentTimeMillis);
            C3803vu.m1680md().m1715S(true);
            return true;
        }
        C3803vu.m1680md().m1715S(false);
        return false;
    }

    /* renamed from: com.kingroot.kinguser.vt$a */
    /* loaded from: classes.dex */
    static class C3802a extends AbstractC3792vn {
        private C3802a() {
        }

        @Override // com.kingroot.kinguser.AbstractC3789vm
        /* renamed from: lA */
        protected String mo1721lA() {
            return "KingLib";
        }

        @Override // com.kingroot.kinguser.AbstractC3789vm
        /* renamed from: lL */
        protected int[] mo1720lL() {
            return C3799vt.f3781Lk;
        }

        @Override // com.kingroot.kinguser.AbstractC3789vm
        /* renamed from: lM */
        protected int[] mo1719lM() {
            return C3799vt.f3782Ll;
        }

        @Override // com.kingroot.kinguser.AbstractC3789vm
        /* renamed from: lN */
        protected int[] mo1718lN() {
            return C3799vt.f3784Ln;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.AbstractC3789vm
        @NonNull
        public String getChannel() {
            return KApplication.m13442ib();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.AbstractC3789vm
        public int getProductId() {
            return KApplication.m13445hY();
        }

        @Override // com.kingroot.kinguser.AbstractC3789vm
        /* renamed from: B */
        protected boolean mo1722B(@NonNull List<C2037b> list) {
            return C3799vt.m1728lT().m1750D(list);
        }
    }
}
