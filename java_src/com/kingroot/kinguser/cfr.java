package com.kingroot.kinguser;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.cee;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class cfr {
    private static cee.InterfaceC2709b cdy;

    /* renamed from: a */
    public static void m4400a(cee.InterfaceC2709b interfaceC2709b) {
        cdy = interfaceC2709b;
    }

    /* renamed from: b */
    public static PendingIntent m4398b(Context context, String str, long j) {
        try {
            if (cdy == null) {
                m4400a(new cee.InterfaceC2709b() { // from class: com.kingroot.kinguser.cfr.1
                    @Override // com.kingroot.kinguser.cee.InterfaceC2709b
                    /* renamed from: nJ */
                    public final void mo4397nJ(String str2) {
                    }

                    @Override // com.kingroot.kinguser.cee.InterfaceC2709b
                    /* renamed from: q */
                    public final void mo4396q(String str2, long j2) {
                    }
                });
            }
            Intent intent = new Intent(str);
            intent.setPackage(TMSDKContext.akS().getPackageName());
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 0);
            try {
                AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                if (cdy != null) {
                    cdy.mo4396q(str, System.currentTimeMillis() + j);
                }
                alarmManager.set(0, System.currentTimeMillis() + j, broadcast);
                return broadcast;
            } catch (Exception e) {
                return broadcast;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    /* renamed from: aa */
    public static void m4399aa(Context context, String str) {
        try {
            if (cdy != null) {
                cdy.mo4397nJ(str);
            }
            Intent intent = new Intent(str);
            intent.setPackage(TMSDKContext.akS().getPackageName());
            ((AlarmManager) context.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(context, 0, intent, 0));
        } catch (Exception e) {
        }
    }
}
