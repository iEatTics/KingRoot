package android.support.p007v7.internal.view.menu;

import android.support.p004v4.view.ActionProvider;
import android.support.p007v7.internal.view.menu.MenuItemWrapperICS;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperJB */
/* loaded from: classes.dex */
public class MenuItemWrapperJB extends MenuItemWrapperICS {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuItemWrapperJB(MenuItem menuItem) {
        super(menuItem, false);
    }

    @Override // android.support.p007v7.internal.view.menu.MenuItemWrapperICS
    MenuItemWrapperICS.ActionProviderWrapper createActionProviderWrapper(ActionProvider actionProvider) {
        return new ActionProviderWrapperJB(actionProvider);
    }

    /* renamed from: android.support.v7.internal.view.menu.MenuItemWrapperJB$ActionProviderWrapperJB */
    /* loaded from: classes.dex */
    class ActionProviderWrapperJB extends MenuItemWrapperICS.ActionProviderWrapper implements ActionProvider.VisibilityListener {
        ActionProvider.VisibilityListener mListener;

        public ActionProviderWrapperJB(android.support.p004v4.view.ActionProvider actionProvider) {
            super(actionProvider);
        }

        @Override // android.view.ActionProvider
        public View onCreateActionView(MenuItem menuItem) {
            return this.mInner.onCreateActionView(menuItem);
        }

        @Override // android.view.ActionProvider
        public boolean overridesItemVisibility() {
            return this.mInner.overridesItemVisibility();
        }

        @Override // android.view.ActionProvider
        public boolean isVisible() {
            return this.mInner.isVisible();
        }

        @Override // android.view.ActionProvider
        public void refreshVisibility() {
            this.mInner.refreshVisibility();
        }

        @Override // android.view.ActionProvider
        public void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
            this.mListener = visibilityListener;
            android.support.p004v4.view.ActionProvider actionProvider = this.mInner;
            if (visibilityListener == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        @Override // android.support.p004v4.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.mListener != null) {
                this.mListener.onActionProviderVisibilityChanged(z);
            }
        }
    }
}
