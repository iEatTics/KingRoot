package android.support.p004v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
/* renamed from: android.support.v4.app.NotificationCompatIceCreamSandwich */
/* loaded from: classes.dex */
class NotificationCompatIceCreamSandwich {
    NotificationCompatIceCreamSandwich() {
    }

    /* renamed from: android.support.v4.app.NotificationCompatIceCreamSandwich$Builder */
    /* loaded from: classes.dex */
    public static class Builder implements NotificationBuilderWithBuilderAccessor {

        /* renamed from: b */
        private Notification.Builder f80b;

        public Builder(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z) {
            this.f80b = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent2, (notification.flags & 128) != 0).setLargeIcon(bitmap).setNumber(i).setProgress(i2, i3, z);
        }

        @Override // android.support.p004v4.app.NotificationBuilderWithBuilderAccessor
        public Notification.Builder getBuilder() {
            return this.f80b;
        }

        @Override // android.support.p004v4.app.NotificationBuilderWithBuilderAccessor
        public Notification build() {
            return this.f80b.getNotification();
        }
    }
}
