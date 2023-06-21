package android.support.p004v4.p006os;

import android.os.Trace;
/* renamed from: android.support.v4.os.TraceJellybeanMR2 */
/* loaded from: classes.dex */
class TraceJellybeanMR2 {
    TraceJellybeanMR2() {
    }

    public static void beginSection(String str) {
        Trace.beginSection(str);
    }

    public static void endSection() {
        Trace.endSection();
    }
}
