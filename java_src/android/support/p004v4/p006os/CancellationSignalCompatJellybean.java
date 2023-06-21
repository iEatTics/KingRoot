package android.support.p004v4.p006os;

import android.os.CancellationSignal;
/* renamed from: android.support.v4.os.CancellationSignalCompatJellybean */
/* loaded from: classes.dex */
class CancellationSignalCompatJellybean {
    CancellationSignalCompatJellybean() {
    }

    public static Object create() {
        return new CancellationSignal();
    }

    public static void cancel(Object obj) {
        ((CancellationSignal) obj).cancel();
    }
}
