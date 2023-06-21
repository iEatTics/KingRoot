package com.kingroot.kinguser;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.kingroot.common.framework.broadcast.KSysBroadcastReceiver;
/* loaded from: classes.dex */
public class aes extends AbstractC3634th {
    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SCREEN_OFF".equals(action)) {
            long currentTimeMillis = System.currentTimeMillis() - bja.m6803bz(context);
            if (currentTimeMillis < 57600000) {
                m12166ar(context);
            }
            C3636tj.m2171a(currentTimeMillis > 57600000 ? "auto_start_optimize" : "auto_start_optimize_recently", aet.class);
        } else if ("android.intent.action.SCREEN_ON".equals(action)) {
            m12165as(context);
            C3636tj.m2168p("auto_start_optimize", true);
            C3636tj.m2168p("auto_start_optimize_recently", true);
        } else if ("com.kingroot.master.action.SCHEDUAL_EVENT".equals(action)) {
            long m6803bz = bja.m6803bz(context);
            long currentTimeMillis2 = System.currentTimeMillis() - m6803bz;
            if (currentTimeMillis2 < 0 || m6803bz == 0 || currentTimeMillis2 > 43200000) {
                C3636tj.m2171a("auto_start_optimize", aet.class);
            }
        } else {
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aes.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    bja.adw();
                }
            }));
        }
    }

    /* renamed from: ar */
    private void m12166ar(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (alarmManager != null) {
            PendingIntent m12164at = m12164at(context);
            long elapsedRealtime = SystemClock.elapsedRealtime() + 5000;
            if (m12164at != null) {
                alarmManager.set(2, elapsedRealtime, m12164at);
            }
        }
    }

    /* renamed from: as */
    private void m12165as(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m12164at = m12164at(context);
        if (alarmManager != null && m12164at != null) {
            alarmManager.cancel(m12164at);
        }
    }

    /* renamed from: at */
    private PendingIntent m12164at(Context context) {
        Intent intent = new Intent(context, KSysBroadcastReceiver.class);
        intent.setAction("com.kingroot.master.action.SCHEDUAL_EVENT");
        return PendingIntent.getBroadcast(context, 0, intent, 0);
    }
}
