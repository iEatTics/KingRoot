package android.support.p004v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* renamed from: android.support.v4.app.TaskStackBuilderJellybean */
/* loaded from: classes.dex */
class TaskStackBuilderJellybean {
    TaskStackBuilderJellybean() {
    }

    public static PendingIntent getActivitiesPendingIntent(Context context, int i, Intent[] intentArr, int i2, Bundle bundle) {
        return PendingIntent.getActivities(context, i, intentArr, i2, bundle);
    }
}
