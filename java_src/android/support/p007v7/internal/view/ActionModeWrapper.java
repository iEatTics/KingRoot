package android.support.p007v7.internal.view;

import android.content.Context;
import android.support.p007v7.internal.view.menu.MenuWrapperFactory;
import android.support.p007v7.view.ActionMode;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* renamed from: android.support.v7.internal.view.ActionModeWrapper */
/* loaded from: classes.dex */
public class ActionModeWrapper extends ActionMode {
    final MenuInflater mInflater;
    final android.view.ActionMode mWrappedObject;

    public ActionModeWrapper(Context context, android.view.ActionMode actionMode) {
        this.mWrappedObject = actionMode;
        this.mInflater = new SupportMenuInflater(context);
    }

    @Override // android.support.p007v7.view.ActionMode
    public Object getTag() {
        return this.mWrappedObject.getTag();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setTag(Object obj) {
        this.mWrappedObject.setTag(obj);
    }

    @Override // android.support.p007v7.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.mWrappedObject.getTitleOptionalHint();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.mWrappedObject.setTitleOptionalHint(z);
    }

    @Override // android.support.p007v7.view.ActionMode
    public boolean isTitleOptional() {
        return this.mWrappedObject.isTitleOptional();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.mWrappedObject.setTitle(charSequence);
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.mWrappedObject.setSubtitle(charSequence);
    }

    @Override // android.support.p007v7.view.ActionMode
    public void invalidate() {
        this.mWrappedObject.invalidate();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void finish() {
        this.mWrappedObject.finish();
    }

    @Override // android.support.p007v7.view.ActionMode
    public Menu getMenu() {
        return MenuWrapperFactory.createMenuWrapper(this.mWrappedObject.getMenu());
    }

    @Override // android.support.p007v7.view.ActionMode
    public CharSequence getTitle() {
        return this.mWrappedObject.getTitle();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setTitle(int i) {
        this.mWrappedObject.setTitle(i);
    }

    @Override // android.support.p007v7.view.ActionMode
    public CharSequence getSubtitle() {
        return this.mWrappedObject.getSubtitle();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setSubtitle(int i) {
        this.mWrappedObject.setSubtitle(i);
    }

    @Override // android.support.p007v7.view.ActionMode
    public View getCustomView() {
        return this.mWrappedObject.getCustomView();
    }

    @Override // android.support.p007v7.view.ActionMode
    public void setCustomView(View view) {
        this.mWrappedObject.setCustomView(view);
    }

    @Override // android.support.p007v7.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.mInflater;
    }

    /* renamed from: android.support.v7.internal.view.ActionModeWrapper$CallbackWrapper */
    /* loaded from: classes.dex */
    public static class CallbackWrapper implements ActionMode.Callback {
        final Context mContext;
        private ActionModeWrapper mLastStartedActionMode;
        final ActionMode.Callback mWrappedCallback;

        public CallbackWrapper(Context context, ActionMode.Callback callback) {
            this.mContext = context;
            this.mWrappedCallback = callback;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(android.view.ActionMode actionMode, Menu menu) {
            return this.mWrappedCallback.onCreateActionMode(getActionModeWrapper(actionMode), MenuWrapperFactory.createMenuWrapper(menu));
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(android.view.ActionMode actionMode, Menu menu) {
            return this.mWrappedCallback.onPrepareActionMode(getActionModeWrapper(actionMode), MenuWrapperFactory.createMenuWrapper(menu));
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(android.view.ActionMode actionMode, MenuItem menuItem) {
            return this.mWrappedCallback.onActionItemClicked(getActionModeWrapper(actionMode), MenuWrapperFactory.createMenuItemWrapper(menuItem));
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(android.view.ActionMode actionMode) {
            this.mWrappedCallback.onDestroyActionMode(getActionModeWrapper(actionMode));
        }

        public void setLastStartedActionMode(ActionModeWrapper actionModeWrapper) {
            this.mLastStartedActionMode = actionModeWrapper;
        }

        private android.support.p007v7.view.ActionMode getActionModeWrapper(android.view.ActionMode actionMode) {
            return (this.mLastStartedActionMode == null || this.mLastStartedActionMode.mWrappedObject != actionMode) ? new ActionModeWrapper(this.mContext, actionMode) : this.mLastStartedActionMode;
        }
    }
}
