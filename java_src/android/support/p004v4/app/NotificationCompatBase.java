package android.support.p004v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.support.p004v4.app.RemoteInputCompatBase;
/* renamed from: android.support.v4.app.NotificationCompatBase */
/* loaded from: classes.dex */
public class NotificationCompatBase {

    /* renamed from: android.support.v4.app.NotificationCompatBase$Action */
    /* loaded from: classes.dex */
    public static abstract class Action {

        /* renamed from: android.support.v4.app.NotificationCompatBase$Action$Factory */
        /* loaded from: classes.dex */
        public interface Factory {
            Action build(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInputCompatBase.RemoteInput[] remoteInputArr, boolean z);

            Action[] newArray(int i);
        }

        public abstract PendingIntent getActionIntent();

        public abstract boolean getAllowGeneratedReplies();

        public abstract Bundle getExtras();

        public abstract int getIcon();

        public abstract RemoteInputCompatBase.RemoteInput[] getRemoteInputs();

        public abstract CharSequence getTitle();
    }

    /* renamed from: android.support.v4.app.NotificationCompatBase$UnreadConversation */
    /* loaded from: classes.dex */
    public static abstract class UnreadConversation {

        /* renamed from: android.support.v4.app.NotificationCompatBase$UnreadConversation$Factory */
        /* loaded from: classes.dex */
        public interface Factory {
            UnreadConversation build(String[] strArr, RemoteInputCompatBase.RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long getLatestTimestamp();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String[] getMessages();

        abstract String getParticipant();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String[] getParticipants();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract PendingIntent getReadPendingIntent();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract RemoteInputCompatBase.RemoteInput getRemoteInput();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract PendingIntent getReplyPendingIntent();
    }

    public static Notification add(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        notification.setLatestEventInfo(context, charSequence, charSequence2, pendingIntent);
        return notification;
    }
}
