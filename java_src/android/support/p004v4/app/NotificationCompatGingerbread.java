package android.support.p004v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
/* renamed from: android.support.v4.app.NotificationCompatGingerbread */
/* loaded from: classes.dex */
class NotificationCompatGingerbread {
    NotificationCompatGingerbread() {
    }

    public static Notification add(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        notification.setLatestEventInfo(context, charSequence, charSequence2, pendingIntent);
        notification.fullScreenIntent = pendingIntent2;
        return notification;
    }
}
