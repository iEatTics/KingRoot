package android.support.p007v7.internal.view.menu;

import android.support.p004v4.internal.view.SupportMenuItem;
import android.support.p004v4.internal.view.SupportSubMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: android.support.v7.internal.view.menu.BaseMenuWrapper */
/* loaded from: classes.dex */
abstract class BaseMenuWrapper<T> extends BaseWrapper<T> {
    private HashMap<MenuItem, SupportMenuItem> mMenuItems;
    private HashMap<SubMenu, SubMenu> mSubMenus;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseMenuWrapper(T t) {
        super(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SupportMenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (menuItem != null) {
            if (this.mMenuItems == null) {
                this.mMenuItems = new HashMap<>();
            }
            SupportMenuItem supportMenuItem = this.mMenuItems.get(menuItem);
            if (supportMenuItem == null) {
                SupportMenuItem createSupportMenuItemWrapper = MenuWrapperFactory.createSupportMenuItemWrapper(menuItem);
                this.mMenuItems.put(menuItem, createSupportMenuItemWrapper);
                return createSupportMenuItemWrapper;
            }
            return supportMenuItem;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu getSubMenuWrapper(SubMenu subMenu) {
        if (subMenu != null) {
            if (this.mSubMenus == null) {
                this.mSubMenus = new HashMap<>();
            }
            SubMenu subMenu2 = this.mSubMenus.get(subMenu);
            if (subMenu2 == null) {
                SupportSubMenu createSupportSubMenuWrapper = MenuWrapperFactory.createSupportSubMenuWrapper(subMenu);
                this.mSubMenus.put(subMenu, createSupportSubMenuWrapper);
                return createSupportSubMenuWrapper;
            }
            return subMenu2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void internalClear() {
        if (this.mMenuItems != null) {
            this.mMenuItems.clear();
        }
        if (this.mSubMenus != null) {
            this.mSubMenus.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void internalRemoveGroup(int i) {
        if (this.mMenuItems != null) {
            Iterator<MenuItem> it = this.mMenuItems.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void internalRemoveItem(int i) {
        if (this.mMenuItems != null) {
            Iterator<MenuItem> it = this.mMenuItems.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
