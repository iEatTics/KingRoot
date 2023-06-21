package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.os.Bundle;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.common.framework.service.KSysService;
import com.kingroot.kinguser.ajn;
import com.kingroot.kinguser.baw;
import com.kingroot.kinguser.bdx;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
/* loaded from: classes.dex */
public class SuNotifyActivity extends Activity {
    private bed aiY = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.activitys.SuNotifyActivity.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            baw.m7873VY();
        }
    });

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null) {
            m12584vz();
            ajn.m11456zp().m11455zq();
            m12585vy();
        }
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.activitys.SuNotifyActivity.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bdx.m7488jS();
            }
        }));
        finish();
    }

    /* renamed from: vy */
    private void m12585vy() {
        beg.m7461Zj().m7450c(this.aiY);
    }

    @Override // android.app.Activity
    protected void onStop() {
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    /* renamed from: vz */
    public static void m12584vz() {
        if (!KSysService.m13393jT()) {
            beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.activitys.SuNotifyActivity.3
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    KSysService.m13392o(4, "com.kingroot.master.ACTION.BOOT.AUTO.START");
                }
            }));
        }
    }
}
