package android.support.p004v4.p006os;

import android.content.Context;
/* renamed from: android.support.v4.os.UserManagerCompat */
/* loaded from: classes.dex */
public class UserManagerCompat {
    private UserManagerCompat() {
    }

    @Deprecated
    public static boolean isUserRunningAndLocked(Context context) {
        return !isUserUnlocked(context);
    }

    @Deprecated
    public static boolean isUserRunningAndUnlocked(Context context) {
        return isUserUnlocked(context);
    }

    public static boolean isUserUnlocked(Context context) {
        if (BuildCompat.isAtLeastN()) {
            return UserManagerCompatApi24.isUserUnlocked(context);
        }
        return true;
    }
}
