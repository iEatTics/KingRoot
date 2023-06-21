package android.support.p004v4.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
/* renamed from: android.support.v4.view.accessibility.AccessibilityNodeInfoCompatApi24 */
/* loaded from: classes.dex */
class AccessibilityNodeInfoCompatApi24 {
    AccessibilityNodeInfoCompatApi24() {
    }

    public static int getDrawingOrder(Object obj) {
        return ((AccessibilityNodeInfo) obj).getDrawingOrder();
    }

    public static void setDrawingOrder(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setDrawingOrder(i);
    }

    public static boolean isImportantForAccessibility(Object obj) {
        return ((AccessibilityNodeInfo) obj).isImportantForAccessibility();
    }

    public static void setImportantForAccessibility(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setImportantForAccessibility(z);
    }
}
