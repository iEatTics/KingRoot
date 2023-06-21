package android.support.p007v7.internal.view.menu;

import android.os.Build;
import android.support.p004v4.internal.view.SupportMenu;
import android.support.p004v4.internal.view.SupportMenuItem;
import android.support.p004v4.internal.view.SupportSubMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
/* renamed from: android.support.v7.internal.view.menu.MenuWrapperFactory */
/* loaded from: classes.dex */
public final class MenuWrapperFactory {
    private MenuWrapperFactory() {
    }

    public static Menu createMenuWrapper(Menu menu) {
        if (Build.VERSION.SDK_INT >= 14) {
            return new MenuWrapperICS(menu);
        }
        return menu;
    }

    public static MenuItem createMenuItemWrapper(MenuItem menuItem) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new MenuItemWrapperJB(menuItem);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return new MenuItemWrapperICS(menuItem);
        }
        return menuItem;
    }

    public static SupportMenu createSupportMenuWrapper(Menu menu) {
        if (Build.VERSION.SDK_INT >= 14) {
            return new MenuWrapperICS(menu);
        }
        throw new UnsupportedOperationException();
    }

    public static SupportSubMenu createSupportSubMenuWrapper(SubMenu subMenu) {
        if (Build.VERSION.SDK_INT >= 14) {
            return new SubMenuWrapperICS(subMenu);
        }
        throw new UnsupportedOperationException();
    }

    public static SupportMenuItem createSupportMenuItemWrapper(MenuItem menuItem) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new MenuItemWrapperJB(menuItem);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return new MenuItemWrapperICS(menuItem);
        }
        throw new UnsupportedOperationException();
    }
}
