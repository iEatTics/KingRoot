package android.support.p004v4.app;

import android.app.Activity;
/* renamed from: android.support.v4.app.ActivityCompatApi23 */
/* loaded from: classes.dex */
class ActivityCompatApi23 {

    /* renamed from: android.support.v4.app.ActivityCompatApi23$RequestPermissionsRequestCodeValidator */
    /* loaded from: classes.dex */
    public interface RequestPermissionsRequestCodeValidator {
        void validateRequestPermissionsRequestCode(int i);
    }

    ActivityCompatApi23() {
    }

    public static void requestPermissions(Activity activity, String[] strArr, int i) {
        if (activity instanceof RequestPermissionsRequestCodeValidator) {
            ((RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i);
        }
        activity.requestPermissions(strArr, i);
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }
}
