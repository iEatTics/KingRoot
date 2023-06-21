package android.support.p007v7.internal.view.menu;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.p004v4.internal.view.SupportMenuItem;
import android.support.p004v4.view.ActionProvider;
import android.support.p004v4.view.MenuItemCompat;
import android.support.p007v7.view.CollapsibleActionView;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;
/* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperICS */
/* loaded from: classes.dex */
public class MenuItemWrapperICS extends BaseMenuWrapper<MenuItem> implements SupportMenuItem {
    static final String LOG_TAG = "MenuItemWrapper";
    private final boolean mEmulateProviderVisibilityOverride;
    private boolean mLastRequestVisible;
    private Method mSetExclusiveCheckableMethod;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuItemWrapperICS(MenuItem menuItem, boolean z) {
        super(menuItem);
        this.mLastRequestVisible = menuItem.isVisible();
        this.mEmulateProviderVisibilityOverride = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuItemWrapperICS(MenuItem menuItem) {
        this(menuItem, true);
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((MenuItem) this.mWrappedObject).getItemId();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((MenuItem) this.mWrappedObject).getGroupId();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((MenuItem) this.mWrappedObject).getOrder();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        ((MenuItem) this.mWrappedObject).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        ((MenuItem) this.mWrappedObject).setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return ((MenuItem) this.mWrappedObject).getTitle();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((MenuItem) this.mWrappedObject).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return ((MenuItem) this.mWrappedObject).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        ((MenuItem) this.mWrappedObject).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        ((MenuItem) this.mWrappedObject).setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return ((MenuItem) this.mWrappedObject).getIcon();
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        ((MenuItem) this.mWrappedObject).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return ((MenuItem) this.mWrappedObject).getIntent();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        ((MenuItem) this.mWrappedObject).setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        ((MenuItem) this.mWrappedObject).setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((MenuItem) this.mWrappedObject).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        ((MenuItem) this.mWrappedObject).setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((MenuItem) this.mWrappedObject).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        ((MenuItem) this.mWrappedObject).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((MenuItem) this.mWrappedObject).isCheckable();
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        ((MenuItem) this.mWrappedObject).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((MenuItem) this.mWrappedObject).isChecked();
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (this.mEmulateProviderVisibilityOverride) {
            this.mLastRequestVisible = z;
            if (checkActionProviderOverrideVisibility()) {
                return this;
            }
        }
        return wrappedSetVisible(z);
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((MenuItem) this.mWrappedObject).isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        ((MenuItem) this.mWrappedObject).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((MenuItem) this.mWrappedObject).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((MenuItem) this.mWrappedObject).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return getSubMenuWrapper(((MenuItem) this.mWrappedObject).getSubMenu());
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((MenuItem) this.mWrappedObject).setOnMenuItemClickListener(onMenuItemClickListener != null ? new OnMenuItemClickListenerWrapper(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((MenuItem) this.mWrappedObject).getMenuInfo();
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
        ((MenuItem) this.mWrappedObject).setShowAsAction(i);
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        ((MenuItem) this.mWrappedObject).setShowAsActionFlags(i);
        return this;
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new CollapsibleActionViewWrapper(view);
        }
        ((MenuItem) this.mWrappedObject).setActionView(view);
        return this;
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setActionView(int i) {
        ((MenuItem) this.mWrappedObject).setActionView(i);
        View actionView = ((MenuItem) this.mWrappedObject).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((MenuItem) this.mWrappedObject).setActionView(new CollapsibleActionViewWrapper(actionView));
        }
        return this;
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        View actionView = ((MenuItem) this.mWrappedObject).getActionView();
        if (actionView instanceof CollapsibleActionViewWrapper) {
            return ((CollapsibleActionViewWrapper) actionView).getWrappedView();
        }
        return actionView;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((MenuItem) this.mWrappedObject).setActionProvider(actionProvider);
        if (actionProvider != null && this.mEmulateProviderVisibilityOverride) {
            checkActionProviderOverrideVisibility();
        }
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        return ((MenuItem) this.mWrappedObject).getActionProvider();
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        return ((MenuItem) this.mWrappedObject).expandActionView();
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        return ((MenuItem) this.mWrappedObject).collapseActionView();
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((MenuItem) this.mWrappedObject).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((MenuItem) this.mWrappedObject).setOnActionExpandListener(onActionExpandListener);
        return this;
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem
    public SupportMenuItem setSupportOnActionExpandListener(MenuItemCompat.OnActionExpandListener onActionExpandListener) {
        ((MenuItem) this.mWrappedObject).setOnActionExpandListener(onActionExpandListener != null ? new OnActionExpandListenerWrapper(onActionExpandListener) : null);
        return null;
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(android.support.p004v4.view.ActionProvider actionProvider) {
        ((MenuItem) this.mWrappedObject).setActionProvider(actionProvider != null ? createActionProviderWrapper(actionProvider) : null);
        return this;
    }

    @Override // android.support.p004v4.internal.view.SupportMenuItem
    public android.support.p004v4.view.ActionProvider getSupportActionProvider() {
        ActionProviderWrapper actionProviderWrapper = (ActionProviderWrapper) ((MenuItem) this.mWrappedObject).getActionProvider();
        if (actionProviderWrapper != null) {
            return actionProviderWrapper.mInner;
        }
        return null;
    }

    public void setExclusiveCheckable(boolean z) {
        try {
            if (this.mSetExclusiveCheckableMethod == null) {
                this.mSetExclusiveCheckableMethod = ((MenuItem) this.mWrappedObject).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.mSetExclusiveCheckableMethod.invoke(this.mWrappedObject, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w(LOG_TAG, "Error while calling setExclusiveCheckable", e);
        }
    }

    ActionProviderWrapper createActionProviderWrapper(android.support.p004v4.view.ActionProvider actionProvider) {
        return new ActionProviderWrapper(actionProvider);
    }

    final boolean checkActionProviderOverrideVisibility() {
        android.support.p004v4.view.ActionProvider supportActionProvider;
        if (!this.mLastRequestVisible || (supportActionProvider = getSupportActionProvider()) == null || !supportActionProvider.overridesItemVisibility() || supportActionProvider.isVisible()) {
            return false;
        }
        wrappedSetVisible(false);
        return true;
    }

    final MenuItem wrappedSetVisible(boolean z) {
        return ((MenuItem) this.mWrappedObject).setVisible(z);
    }

    /* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperICS$OnMenuItemClickListenerWrapper */
    /* loaded from: classes.dex */
    class OnMenuItemClickListenerWrapper extends BaseWrapper<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        OnMenuItemClickListenerWrapper(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.mWrappedObject).onMenuItemClick(MenuItemWrapperICS.this.getMenuItemWrapper(menuItem));
        }
    }

    /* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperICS$OnActionExpandListenerWrapper */
    /* loaded from: classes.dex */
    class OnActionExpandListenerWrapper extends BaseWrapper<MenuItemCompat.OnActionExpandListener> implements MenuItem.OnActionExpandListener {
        OnActionExpandListenerWrapper(MenuItemCompat.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return ((MenuItemCompat.OnActionExpandListener) this.mWrappedObject).onMenuItemActionExpand(MenuItemWrapperICS.this.getMenuItemWrapper(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return ((MenuItemCompat.OnActionExpandListener) this.mWrappedObject).onMenuItemActionCollapse(MenuItemWrapperICS.this.getMenuItemWrapper(menuItem));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperICS$ActionProviderWrapper */
    /* loaded from: classes.dex */
    public class ActionProviderWrapper extends ActionProvider {
        final android.support.p004v4.view.ActionProvider mInner;

        public ActionProviderWrapper(android.support.p004v4.view.ActionProvider actionProvider) {
            super(actionProvider.getContext());
            this.mInner = actionProvider;
            if (MenuItemWrapperICS.this.mEmulateProviderVisibilityOverride) {
                this.mInner.setVisibilityListener(new ActionProvider.VisibilityListener() { // from class: android.support.v7.internal.view.menu.MenuItemWrapperICS.ActionProviderWrapper.1
                    @Override // android.support.p004v4.view.ActionProvider.VisibilityListener
                    public void onActionProviderVisibilityChanged(boolean z) {
                        if (ActionProviderWrapper.this.mInner.overridesItemVisibility() && MenuItemWrapperICS.this.mLastRequestVisible) {
                            MenuItemWrapperICS.this.wrappedSetVisible(z);
                        }
                    }
                });
            }
        }

        @Override // android.view.ActionProvider
        public View onCreateActionView() {
            if (MenuItemWrapperICS.this.mEmulateProviderVisibilityOverride) {
                MenuItemWrapperICS.this.checkActionProviderOverrideVisibility();
            }
            return this.mInner.onCreateActionView();
        }

        @Override // android.view.ActionProvider
        public boolean onPerformDefaultAction() {
            return this.mInner.onPerformDefaultAction();
        }

        @Override // android.view.ActionProvider
        public boolean hasSubMenu() {
            return this.mInner.hasSubMenu();
        }

        @Override // android.view.ActionProvider
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.mInner.onPrepareSubMenu(MenuItemWrapperICS.this.getSubMenuWrapper(subMenu));
        }
    }

    /* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperICS$CollapsibleActionViewWrapper */
    /* loaded from: classes.dex */
    static class CollapsibleActionViewWrapper extends FrameLayout implements android.view.CollapsibleActionView {
        final CollapsibleActionView mWrappedView;

        CollapsibleActionViewWrapper(View view) {
            super(view.getContext());
            this.mWrappedView = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // android.view.CollapsibleActionView
        public void onActionViewExpanded() {
            this.mWrappedView.onActionViewExpanded();
        }

        @Override // android.view.CollapsibleActionView
        public void onActionViewCollapsed() {
            this.mWrappedView.onActionViewCollapsed();
        }

        View getWrappedView() {
            return (View) this.mWrappedView;
        }
    }
}
