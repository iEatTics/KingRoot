package android.support.p004v4.content.res;

import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
/* renamed from: android.support.v4.content.res.ConfigurationHelperDonut */
/* loaded from: classes.dex */
class ConfigurationHelperDonut {
    ConfigurationHelperDonut() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getScreenHeightDp(@NonNull Resources resources) {
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return (int) (displayMetrics.heightPixels / displayMetrics.density);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getScreenWidthDp(@NonNull Resources resources) {
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return (int) (displayMetrics.widthPixels / displayMetrics.density);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getSmallestScreenWidthDp(@NonNull Resources resources) {
        return Math.min(getScreenWidthDp(resources), getScreenHeightDp(resources));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getDensityDpi(@NonNull Resources resources) {
        return resources.getDisplayMetrics().densityDpi;
    }
}
