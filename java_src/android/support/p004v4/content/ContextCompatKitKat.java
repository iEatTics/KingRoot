package android.support.p004v4.content;

import android.content.Context;
import java.io.File;
/* renamed from: android.support.v4.content.ContextCompatKitKat */
/* loaded from: classes.dex */
class ContextCompatKitKat {
    ContextCompatKitKat() {
    }

    public static File[] getExternalCacheDirs(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }

    public static File[] getObbDirs(Context context) {
        return context.getObbDirs();
    }
}
