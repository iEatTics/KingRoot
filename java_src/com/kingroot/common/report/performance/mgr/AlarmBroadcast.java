package com.kingroot.common.report.performance.mgr;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3671tw;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.RunnableC3845wo;
import com.kingroot.kinguser.cbx;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AlarmBroadcast extends BroadcastReceiver {

    /* renamed from: Mn */
    private static int f825Mn;
    private static final String TAG = cbx.bWU + AlarmBroadcast.class.getSimpleName();

    /* renamed from: Mo */
    public static long f826Mo = 900000;

    /* renamed from: mP */
    public List<Integer> m13339mP() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(ProcessUtils.m13143ej(C3636tj.getPackageName() + ":service")));
        return arrayList;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(context);
        arrayList.add(intent);
        new RunnableC3845wo() { // from class: com.kingroot.common.report.performance.mgr.AlarmBroadcast.1
            @Override // com.kingroot.kinguser.RunnableC3845wo
            /* renamed from: a */
            public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
                List<Object> mo1527nF = interfaceC3847a.mo1527nF();
                if (!C3942yy.m1351d(mo1527nF)) {
                    Context context2 = null;
                    if (mo1527nF.get(0) instanceof Context) {
                        context2 = (Context) mo1527nF.get(0);
                    }
                    if (context2 != null) {
                        try {
                            String packageName = context2.getApplicationContext().getPackageName();
                            if (!ProcessUtils.m13137p(context2, packageName) && !ProcessUtils.m13137p(context2, packageName + ":task")) {
                                C3671tw.m2095kc();
                            }
                            C3671tw.m2085u(AlarmBroadcast.f826Mo);
                            int unused = AlarmBroadcast.f825Mn = ProcessUtils.m13153O(AlarmBroadcast.this.m13339mP());
                            C3671tw.m2084v(AlarmBroadcast.f825Mn);
                            if (RunnableC3845wo.m1529nz() != 0) {
                                C3671tw.m2104aU(RunnableC3845wo.m1529nz());
                            }
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        }.m1545I(arrayList);
    }
}
