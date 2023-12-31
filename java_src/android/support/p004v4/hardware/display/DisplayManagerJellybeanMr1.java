package android.support.p004v4.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
/* renamed from: android.support.v4.hardware.display.DisplayManagerJellybeanMr1 */
/* loaded from: classes.dex */
final class DisplayManagerJellybeanMr1 {
    DisplayManagerJellybeanMr1() {
    }

    public static Object getDisplayManager(Context context) {
        return context.getSystemService("display");
    }

    public static Display getDisplay(Object obj, int i) {
        return ((DisplayManager) obj).getDisplay(i);
    }

    public static Display[] getDisplays(Object obj) {
        return ((DisplayManager) obj).getDisplays();
    }

    public static Display[] getDisplays(Object obj, String str) {
        return ((DisplayManager) obj).getDisplays(str);
    }
}
