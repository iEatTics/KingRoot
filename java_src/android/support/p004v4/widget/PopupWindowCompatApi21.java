package android.support.p004v4.widget;

import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
/* renamed from: android.support.v4.widget.PopupWindowCompatApi21 */
/* loaded from: classes.dex */
class PopupWindowCompatApi21 {
    private static final String TAG = "PopupWindowCompatApi21";
    private static Field sOverlapAnchorField;

    PopupWindowCompatApi21() {
    }

    static {
        try {
            sOverlapAnchorField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
            sOverlapAnchorField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.i(TAG, "Could not fetch mOverlapAnchor field from PopupWindow", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        if (sOverlapAnchorField != null) {
            try {
                sOverlapAnchorField.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                Log.i(TAG, "Could not set overlap anchor field in PopupWindow", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean getOverlapAnchor(PopupWindow popupWindow) {
        if (sOverlapAnchorField != null) {
            try {
                return ((Boolean) sOverlapAnchorField.get(popupWindow)).booleanValue();
            } catch (IllegalAccessException e) {
                Log.i(TAG, "Could not get overlap anchor field in PopupWindow", e);
            }
        }
        return false;
    }
}
