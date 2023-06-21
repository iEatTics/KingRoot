package android.support.p004v4.view;

import android.view.MenuItem;
import android.view.View;
/* renamed from: android.support.v4.view.MenuItemCompatHoneycomb */
/* loaded from: classes.dex */
class MenuItemCompatHoneycomb {
    MenuItemCompatHoneycomb() {
    }

    public static void setShowAsAction(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }

    public static MenuItem setActionView(MenuItem menuItem, View view) {
        return menuItem.setActionView(view);
    }

    public static MenuItem setActionView(MenuItem menuItem, int i) {
        return menuItem.setActionView(i);
    }

    public static View getActionView(MenuItem menuItem) {
        return menuItem.getActionView();
    }
}
