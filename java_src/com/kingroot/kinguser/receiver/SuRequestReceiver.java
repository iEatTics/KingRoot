package com.kingroot.kinguser.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kingroot.common.framework.service.KSysService;
import com.kingroot.kinguser.AbstractC3976zt;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguser.root.mgr.SuNotifyService;
/* loaded from: classes.dex */
public class SuRequestReceiver extends BroadcastReceiver {
    private static bed bfb = new bed(bem.HIGH, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.receiver.SuRequestReceiver.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            KSysService.m13392o(2, "com.kingroot.master.ACTION.BOOT.AUTO.START");
        }
    });

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m2484vz();
        if (intent != null) {
            SuRequestCmdModel suRequestCmdModel = new SuRequestCmdModel();
            suRequestCmdModel.aRm = intent.getIntExtra(AbstractC3976zt.get("srr1"), 0);
            suRequestCmdModel.aRn = intent.getIntExtra(AbstractC3976zt.get("srr2"), 0);
            suRequestCmdModel.aRo = intent.getStringExtra(AbstractC3976zt.get("srr3"));
            suRequestCmdModel.aRp = intent.getStringExtra(AbstractC3976zt.get("srr4"));
            suRequestCmdModel.aRq = intent.getIntExtra(AbstractC3976zt.get("srr5"), 0);
            suRequestCmdModel.aRr = intent.getIntExtra(AbstractC3976zt.get("srr6"), 0);
            SuNotifyService.m2427b(context, suRequestCmdModel);
        }
    }

    /* renamed from: vz */
    public static void m2484vz() {
        if (!KSysService.m13393jT()) {
            beg.m7461Zj().m7450c(bfb);
        }
    }
}
