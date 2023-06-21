package android.support.p007v7.app;

import android.support.p007v7.app.ActionBar;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.widget.NativeActionModeAwareLayout;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
/* renamed from: android.support.v7.app.ActionBarImplHC */
/* loaded from: classes.dex */
class ActionBarImplHC extends ActionBarImplBase implements NativeActionModeAwareLayout.OnActionModeForChildListener {
    private ActionMode mCurActionMode;
    final NativeActionModeAwareLayout mNativeActionModeAwareLayout;

    public ActionBarImplHC(ActionBarActivity actionBarActivity, ActionBar.Callback callback) {
        super(actionBarActivity, callback);
        this.mNativeActionModeAwareLayout = (NativeActionModeAwareLayout) actionBarActivity.findViewById(C0189R.C0191id.action_bar_root);
        if (this.mNativeActionModeAwareLayout != null) {
            this.mNativeActionModeAwareLayout.setActionModeForChildListener(this);
        }
    }

    @Override // android.support.p007v7.internal.widget.NativeActionModeAwareLayout.OnActionModeForChildListener
    public ActionMode.Callback onActionModeForChild(ActionMode.Callback callback) {
        return new CallbackWrapper(callback);
    }

    @Override // android.support.p007v7.app.ActionBarImplBase, android.support.p007v7.app.ActionBar
    public void show() {
        super.show();
        if (this.mCurActionMode != null) {
            this.mCurActionMode.finish();
        }
    }

    @Override // android.support.p007v7.app.ActionBarImplBase, android.support.p007v7.app.ActionBar
    public void hide() {
        super.hide();
        if (this.mCurActionMode != null) {
            this.mCurActionMode.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarImplBase
    public boolean isShowHideAnimationEnabled() {
        return this.mCurActionMode == null && super.isShowHideAnimationEnabled();
    }

    /* renamed from: android.support.v7.app.ActionBarImplHC$CallbackWrapper */
    /* loaded from: classes.dex */
    class CallbackWrapper implements ActionMode.Callback {
        private final ActionMode.Callback mWrappedCallback;

        CallbackWrapper(ActionMode.Callback callback) {
            this.mWrappedCallback = callback;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            boolean onCreateActionMode = this.mWrappedCallback.onCreateActionMode(actionMode, menu);
            if (onCreateActionMode) {
                ActionBarImplHC.this.mCurActionMode = actionMode;
                ActionBarImplHC.this.showForActionMode();
            }
            return onCreateActionMode;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrappedCallback.onPrepareActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrappedCallback.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrappedCallback.onDestroyActionMode(actionMode);
            ActionBarImplHC.this.hideForActionMode();
            ActionBarImplHC.this.mCurActionMode = null;
        }
    }
}
