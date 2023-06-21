package android.support.p004v4.app;

import android.app.NotificationManager;
/* renamed from: android.support.v4.app.NotificationManagerCompatApi24 */
/* loaded from: classes.dex */
class NotificationManagerCompatApi24 {
    NotificationManagerCompatApi24() {
    }

    public static boolean areNotificationsEnabled(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static int getImportance(NotificationManager notificationManager) {
        return notificationManager.getImportance();
    }
}
