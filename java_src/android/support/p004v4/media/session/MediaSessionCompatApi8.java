package android.support.p004v4.media.session;

import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
/* renamed from: android.support.v4.media.session.MediaSessionCompatApi8 */
/* loaded from: classes.dex */
class MediaSessionCompatApi8 {
    MediaSessionCompatApi8() {
    }

    public static void registerMediaButtonEventReceiver(Context context, ComponentName componentName) {
        ((AudioManager) context.getSystemService("audio")).registerMediaButtonEventReceiver(componentName);
    }

    public static void unregisterMediaButtonEventReceiver(Context context, ComponentName componentName) {
        ((AudioManager) context.getSystemService("audio")).unregisterMediaButtonEventReceiver(componentName);
    }
}
