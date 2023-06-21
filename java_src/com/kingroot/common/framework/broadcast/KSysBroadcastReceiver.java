package com.kingroot.common.framework.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kingroot.common.framework.service.KSysService;
import com.kingroot.kinguser.C3627tf;
/* loaded from: classes.dex */
public class KSysBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            if (!KSysService.m13393jT() && !"com.kingroot.master.action.STARTUP_FROM_KD".equals(action)) {
                KSysService.m13392o(1, "com.kingroot.master.ACTION.BOOT.AUTO.START");
            }
            C3627tf.m2187a(context, intent);
        } catch (Exception e) {
        }
    }
}
