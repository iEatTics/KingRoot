package com.kingroot.kinguser;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
/* loaded from: classes.dex */
public class abh {
    /* renamed from: a */
    public static void m12834a(Service service, boolean z) {
        if (z) {
            try {
                Notification notification = new Notification();
                notification.contentIntent = PendingIntent.getService(service, 0, new Intent(), 0);
                service.startForeground(abd.m12839qb() < 18 ? Integer.MAX_VALUE : 0, notification);
                return;
            } catch (Exception e) {
                return;
            }
        }
        service.stopForeground(true);
    }
}
