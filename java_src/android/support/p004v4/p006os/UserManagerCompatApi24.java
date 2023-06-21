package android.support.p004v4.p006os;

import android.content.Context;
import android.os.UserManager;
/* renamed from: android.support.v4.os.UserManagerCompatApi24 */
/* loaded from: classes.dex */
public class UserManagerCompatApi24 {
    public static boolean isUserUnlocked(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }
}
