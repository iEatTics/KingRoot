package android.support.p004v4.p006os;

import android.os.Build;
/* renamed from: android.support.v4.os.BuildCompat */
/* loaded from: classes.dex */
public class BuildCompat {
    private BuildCompat() {
    }

    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
