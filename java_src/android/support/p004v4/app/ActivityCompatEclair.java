package android.support.p004v4.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
/* renamed from: android.support.v4.app.ActivityCompatEclair */
/* loaded from: classes.dex */
class ActivityCompatEclair {
    ActivityCompatEclair() {
    }

    public static void startIntentSenderForResult(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }
}
