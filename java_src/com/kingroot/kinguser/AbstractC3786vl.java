package com.kingroot.kinguser;

import com.kingroot.common.network.statics.ActionStatsID;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.vl */
/* loaded from: classes.dex */
public abstract class AbstractC3786vl extends cbe {
    @Override // com.kingroot.kinguser.cbe
    /* renamed from: m */
    public final void mo1789m(final String str, final String str2, final String str3) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.vl.1
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                super.run();
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                arrayList.add(str2);
                arrayList.add(str3);
                C3799vt.m1728lT().mo1748a(ActionStatsID.EMID_KingCom_Push_Notification_Result, 0, arrayList, false);
            }
        }.m1544X(true);
    }

    @Override // com.kingroot.kinguser.cbe
    /* renamed from: dd */
    public final void mo1790dd(final String str) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.vl.2
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                super.run();
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                C3799vt.m1728lT().mo1748a(ActionStatsID.EMID_KingCom_Push_Notification_User_Click, 0, arrayList, false);
            }
        }.m1544X(true);
    }
}
