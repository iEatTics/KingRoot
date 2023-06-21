package android.support.p004v4.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
/* renamed from: android.support.v4.content.res.ResourcesCompatApi23 */
/* loaded from: classes.dex */
class ResourcesCompatApi23 {
    ResourcesCompatApi23() {
    }

    public static int getColor(Resources resources, int i, Resources.Theme theme) {
        return resources.getColor(i, theme);
    }

    public static ColorStateList getColorStateList(Resources resources, int i, Resources.Theme theme) {
        return resources.getColorStateList(i, theme);
    }
}
