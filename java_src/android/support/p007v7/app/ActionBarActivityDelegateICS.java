package android.support.p007v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.p004v4.app.ActionBarDrawerToggle;
import android.support.p007v7.internal.view.ActionModeWrapper;
import android.support.p007v7.internal.view.menu.MenuWrapperFactory;
import android.support.p007v7.view.ActionMode;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.app.ActionBarActivityDelegateICS */
/* loaded from: classes.dex */
public class ActionBarActivityDelegateICS extends ActionBarActivityDelegate {
    Menu mMenu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionBarActivityDelegateICS(ActionBarActivity actionBarActivity) {
        super(actionBarActivity);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public ActionBar createSupportActionBar() {
        return new ActionBarImplICS(this.mActivity, this.mActivity);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onCreate(Bundle bundle) {
        if ("splitActionBarWhenNarrow".equals(getUiOptionsFromMetadata())) {
            this.mActivity.getWindow().setUiOptions(1, 1);
        }
        super.onCreate(bundle);
        if (this.mHasActionBar) {
            this.mActivity.requestWindowFeature(8);
        }
        if (this.mOverlayActionBar) {
            this.mActivity.requestWindowFeature(9);
        }
        Window window = this.mActivity.getWindow();
        window.setCallback(createWindowCallbackWrapper(window.getCallback()));
    }

    Window.Callback createWindowCallbackWrapper(Window.Callback callback) {
        return new WindowCallbackWrapper(callback);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onStop() {
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onPostResume() {
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setContentView(View view) {
        this.mActivity.superSetContentView(view);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setContentView(int i) {
        this.mActivity.superSetContentView(i);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mActivity.superSetContentView(view, layoutParams);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mActivity.superAddContentView(view, layoutParams);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onContentChanged() {
        this.mActivity.onSupportContentChanged();
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean supportRequestWindowFeature(int i) {
        return this.mActivity.requestWindowFeature(i);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public View onCreatePanelView(int i) {
        return null;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0 || i == 8) {
            if (this.mMenu == null) {
                this.mMenu = MenuWrapperFactory.createMenuWrapper(menu);
            }
            return this.mActivity.superOnCreatePanelMenu(i, this.mMenu);
        }
        return this.mActivity.superOnCreatePanelMenu(i, menu);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return (i == 0 || i == 8) ? this.mActivity.superOnPreparePanel(i, view, this.mMenu) : this.mActivity.superOnPreparePanel(i, view, menu);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (i == 0) {
            menuItem = MenuWrapperFactory.createMenuItemWrapper(menuItem);
        }
        return this.mActivity.superOnMenuItemSelected(i, menuItem);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onTitleChanged(CharSequence charSequence) {
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public ActionMode startSupportActionMode(ActionMode.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        Context actionBarThemedContext = getActionBarThemedContext();
        ActionModeWrapper.CallbackWrapper callbackWrapper = new ActionModeWrapper.CallbackWrapper(actionBarThemedContext, callback);
        android.view.ActionMode startActionMode = this.mActivity.startActionMode(callbackWrapper);
        if (startActionMode == null) {
            return null;
        }
        ActionModeWrapper actionModeWrapper = new ActionModeWrapper(actionBarThemedContext, startActionMode);
        callbackWrapper.setLastStartedActionMode(actionModeWrapper);
        return actionModeWrapper;
    }

    public void onActionModeStarted(android.view.ActionMode actionMode) {
        this.mActivity.onSupportActionModeStarted(new ActionModeWrapper(getActionBarThemedContext(), actionMode));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgressBarVisibility(boolean z) {
        this.mActivity.setProgressBarVisibility(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
        this.mActivity.setProgressBarIndeterminateVisibility(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgressBarIndeterminate(boolean z) {
        this.mActivity.setProgressBarIndeterminate(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgress(int i) {
        this.mActivity.setProgress(i);
    }

    public void onActionModeFinished(android.view.ActionMode actionMode) {
        this.mActivity.onSupportActionModeFinished(new ActionModeWrapper(getActionBarThemedContext(), actionMode));
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void supportInvalidateOptionsMenu() {
        this.mMenu = null;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onBackPressed() {
        return false;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.app.ActionBarActivityDelegateICS$WindowCallbackWrapper */
    /* loaded from: classes.dex */
    public class WindowCallbackWrapper implements Window.Callback {
        final Window.Callback mWrapped;

        public WindowCallbackWrapper(Window.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return this.mWrapped.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return this.mWrapped.dispatchKeyShortcutEvent(keyEvent);
        }

        @Override // android.view.Window.Callback
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return this.mWrapped.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
            return this.mWrapped.dispatchTrackballEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
            return this.mWrapped.dispatchGenericMotionEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            return this.mWrapped.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }

        @Override // android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return this.mWrapped.onCreatePanelView(i);
        }

        @Override // android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            return this.mWrapped.onCreatePanelMenu(i, menu);
        }

        @Override // android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            return this.mWrapped.onPreparePanel(i, view, menu);
        }

        @Override // android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            return this.mWrapped.onMenuOpened(i, menu);
        }

        @Override // android.view.Window.Callback
        public boolean onMenuItemSelected(int i, MenuItem menuItem) {
            return this.mWrapped.onMenuItemSelected(i, menuItem);
        }

        @Override // android.view.Window.Callback
        public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
            this.mWrapped.onWindowAttributesChanged(layoutParams);
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
            this.mWrapped.onContentChanged();
        }

        @Override // android.view.Window.Callback
        public void onWindowFocusChanged(boolean z) {
            this.mWrapped.onWindowFocusChanged(z);
        }

        @Override // android.view.Window.Callback
        public void onAttachedToWindow() {
            this.mWrapped.onAttachedToWindow();
        }

        @Override // android.view.Window.Callback
        public void onDetachedFromWindow() {
            this.mWrapped.onDetachedFromWindow();
        }

        @Override // android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            this.mWrapped.onPanelClosed(i, menu);
        }

        @Override // android.view.Window.Callback
        public boolean onSearchRequested() {
            return this.mWrapped.onSearchRequested();
        }

        @Override // android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return this.mWrapped.onWindowStartingActionMode(callback);
        }

        @Override // android.view.Window.Callback
        public void onActionModeStarted(android.view.ActionMode actionMode) {
            this.mWrapped.onActionModeStarted(actionMode);
            ActionBarActivityDelegateICS.this.onActionModeStarted(actionMode);
        }

        @Override // android.view.Window.Callback
        public void onActionModeFinished(android.view.ActionMode actionMode) {
            this.mWrapped.onActionModeFinished(actionMode);
            ActionBarActivityDelegateICS.this.onActionModeFinished(actionMode);
        }
    }
}
