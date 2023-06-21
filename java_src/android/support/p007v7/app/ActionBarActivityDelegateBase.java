package android.support.p007v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.p004v4.app.ActionBarDrawerToggle;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.view.menu.ListMenuPresenter;
import android.support.p007v7.internal.view.menu.MenuBuilder;
import android.support.p007v7.internal.view.menu.MenuPresenter;
import android.support.p007v7.internal.view.menu.MenuView;
import android.support.p007v7.internal.view.menu.MenuWrapperFactory;
import android.support.p007v7.internal.widget.ActionBarContainer;
import android.support.p007v7.internal.widget.ActionBarContextView;
import android.support.p007v7.internal.widget.ActionBarView;
import android.support.p007v7.internal.widget.ProgressBarICS;
import android.support.p007v7.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.app.ActionBarActivityDelegateBase */
/* loaded from: classes.dex */
public class ActionBarActivityDelegateBase extends ActionBarActivityDelegate implements MenuBuilder.Callback, MenuPresenter.Callback {
    private static final int[] ACTION_BAR_DRAWABLE_TOGGLE_ATTRS = {C0189R.attr.homeAsUpIndicator};
    private static final String TAG = "ActionBarActivityDelegateBase";
    private ActionBarView mActionBarView;
    private ActionMode mActionMode;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    private boolean mInvalidateMenuPosted;
    private final Runnable mInvalidateMenuRunnable;
    private ListMenuPresenter mListMenuPresenter;
    private MenuBuilder mMenu;
    private boolean mSubDecorInstalled;
    private CharSequence mTitleToSet;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionBarActivityDelegateBase(ActionBarActivity actionBarActivity) {
        super(actionBarActivity);
        this.mInvalidateMenuRunnable = new Runnable() { // from class: android.support.v7.app.ActionBarActivityDelegateBase.1
            @Override // java.lang.Runnable
            public void run() {
                MenuBuilder createMenu = ActionBarActivityDelegateBase.this.createMenu();
                if (!ActionBarActivityDelegateBase.this.mActivity.superOnCreatePanelMenu(0, createMenu) || !ActionBarActivityDelegateBase.this.mActivity.superOnPreparePanel(0, null, createMenu)) {
                    ActionBarActivityDelegateBase.this.setMenu(null);
                } else {
                    ActionBarActivityDelegateBase.this.setMenu(createMenu);
                }
                ActionBarActivityDelegateBase.this.mInvalidateMenuPosted = false;
            }
        };
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public ActionBar createSupportActionBar() {
        ensureSubDecor();
        return new ActionBarImplBase(this.mActivity, this.mActivity);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onConfigurationChanged(Configuration configuration) {
        if (this.mHasActionBar && this.mSubDecorInstalled) {
            ((ActionBarImplBase) getSupportActionBar()).onConfigurationChanged(configuration);
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onStop() {
        ActionBarImplBase actionBarImplBase = (ActionBarImplBase) getSupportActionBar();
        if (actionBarImplBase != null) {
            actionBarImplBase.setShowHideAnimationEnabled(false);
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onPostResume() {
        ActionBarImplBase actionBarImplBase = (ActionBarImplBase) getSupportActionBar();
        if (actionBarImplBase != null) {
            actionBarImplBase.setShowHideAnimationEnabled(true);
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setContentView(View view) {
        ensureSubDecor();
        if (this.mHasActionBar) {
            ViewGroup viewGroup = (ViewGroup) this.mActivity.findViewById(16908290);
            viewGroup.removeAllViews();
            viewGroup.addView(view);
        } else {
            this.mActivity.superSetContentView(view);
        }
        this.mActivity.onSupportContentChanged();
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setContentView(int i) {
        ensureSubDecor();
        if (this.mHasActionBar) {
            ViewGroup viewGroup = (ViewGroup) this.mActivity.findViewById(16908290);
            viewGroup.removeAllViews();
            this.mActivity.getLayoutInflater().inflate(i, viewGroup);
        } else {
            this.mActivity.superSetContentView(i);
        }
        this.mActivity.onSupportContentChanged();
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        if (this.mHasActionBar) {
            ViewGroup viewGroup = (ViewGroup) this.mActivity.findViewById(16908290);
            viewGroup.removeAllViews();
            viewGroup.addView(view, layoutParams);
        } else {
            this.mActivity.superSetContentView(view, layoutParams);
        }
        this.mActivity.onSupportContentChanged();
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        if (this.mHasActionBar) {
            ((ViewGroup) this.mActivity.findViewById(16908290)).addView(view, layoutParams);
        } else {
            this.mActivity.superSetContentView(view, layoutParams);
        }
        this.mActivity.onSupportContentChanged();
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onContentChanged() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void ensureSubDecor() {
        boolean z;
        if (this.mHasActionBar && !this.mSubDecorInstalled) {
            if (this.mOverlayActionBar) {
                this.mActivity.superSetContentView(C0189R.layout.abc_action_bar_decor_overlay);
            } else {
                this.mActivity.superSetContentView(C0189R.layout.abc_action_bar_decor);
            }
            this.mActionBarView = (ActionBarView) this.mActivity.findViewById(C0189R.C0191id.action_bar);
            this.mActionBarView.setWindowCallback(this.mActivity);
            if (this.mFeatureProgress) {
                this.mActionBarView.initProgress();
            }
            if (this.mFeatureIndeterminateProgress) {
                this.mActionBarView.initIndeterminateProgress();
            }
            boolean equals = "splitActionBarWhenNarrow".equals(getUiOptionsFromMetadata());
            if (equals) {
                z = this.mActivity.getResources().getBoolean(C0189R.bool.abc_split_action_bar_is_narrow);
            } else {
                TypedArray obtainStyledAttributes = this.mActivity.obtainStyledAttributes(C0189R.styleable.ActionBarWindow);
                boolean z2 = obtainStyledAttributes.getBoolean(2, false);
                obtainStyledAttributes.recycle();
                z = z2;
            }
            ActionBarContainer actionBarContainer = (ActionBarContainer) this.mActivity.findViewById(C0189R.C0191id.split_action_bar);
            if (actionBarContainer != null) {
                this.mActionBarView.setSplitView(actionBarContainer);
                this.mActionBarView.setSplitActionBar(z);
                this.mActionBarView.setSplitWhenNarrow(equals);
                ActionBarContextView actionBarContextView = (ActionBarContextView) this.mActivity.findViewById(C0189R.C0191id.action_context_bar);
                actionBarContextView.setSplitView(actionBarContainer);
                actionBarContextView.setSplitActionBar(z);
                actionBarContextView.setSplitWhenNarrow(equals);
            }
            this.mActivity.findViewById(16908290).setId(-1);
            this.mActivity.findViewById(C0189R.C0191id.action_bar_activity_content).setId(16908290);
            if (this.mTitleToSet != null) {
                this.mActionBarView.setWindowTitle(this.mTitleToSet);
                this.mTitleToSet = null;
            }
            this.mSubDecorInstalled = true;
            supportInvalidateOptionsMenu();
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean supportRequestWindowFeature(int i) {
        switch (i) {
            case 2:
                this.mFeatureProgress = true;
                return true;
            case 3:
            case 4:
            case 6:
            case 7:
            default:
                return this.mActivity.requestWindowFeature(i);
            case 5:
                this.mFeatureIndeterminateProgress = true;
                return true;
            case 8:
                this.mHasActionBar = true;
                return true;
            case 9:
                this.mOverlayActionBar = true;
                return true;
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onTitleChanged(CharSequence charSequence) {
        if (this.mActionBarView != null) {
            this.mActionBarView.setWindowTitle(charSequence);
        } else {
            this.mTitleToSet = charSequence;
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public View onCreatePanelView(int i) {
        if (i == 0) {
            boolean z = true;
            MenuBuilder menuBuilder = this.mMenu;
            if (this.mActionMode == null) {
                if (menuBuilder == null) {
                    menuBuilder = createMenu();
                    setMenu(menuBuilder);
                    menuBuilder.stopDispatchingItemsChanged();
                    z = this.mActivity.superOnCreatePanelMenu(0, menuBuilder);
                }
                if (z) {
                    menuBuilder.stopDispatchingItemsChanged();
                    z = this.mActivity.superOnPreparePanel(0, null, menuBuilder);
                }
            }
            if (z) {
                View view = (View) getListMenuView(this.mActivity, this);
                menuBuilder.startDispatchingItemsChanged();
                return view;
            }
            setMenu(null);
            return null;
        }
        return null;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return this.mActivity.superOnCreatePanelMenu(i, menu);
        }
        return false;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return this.mActivity.superOnPreparePanel(i, view, menu);
        }
        return false;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (i == 0) {
            menuItem = MenuWrapperFactory.createMenuItemWrapper(menuItem);
        }
        return this.mActivity.superOnMenuItemSelected(i, menuItem);
    }

    @Override // android.support.p007v7.internal.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.mActivity.onMenuItemSelected(0, menuItem);
    }

    @Override // android.support.p007v7.internal.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(menuBuilder, true);
    }

    @Override // android.support.p007v7.internal.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        this.mActivity.closeOptionsMenu();
    }

    @Override // android.support.p007v7.internal.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return false;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public ActionMode startSupportActionMode(ActionMode.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionModeCallbackWrapper actionModeCallbackWrapper = new ActionModeCallbackWrapper(callback);
        ActionBarImplBase actionBarImplBase = (ActionBarImplBase) getSupportActionBar();
        if (actionBarImplBase != null) {
            this.mActionMode = actionBarImplBase.startActionMode(actionModeCallbackWrapper);
        }
        if (this.mActionMode != null) {
            this.mActivity.onSupportActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void supportInvalidateOptionsMenu() {
        if (!this.mInvalidateMenuPosted) {
            this.mInvalidateMenuPosted = true;
            this.mActivity.getWindow().getDecorView().post(this.mInvalidateMenuRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MenuBuilder createMenu() {
        MenuBuilder menuBuilder = new MenuBuilder(getActionBarThemedContext());
        menuBuilder.setCallback(this);
        return menuBuilder;
    }

    private void reopenMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.mActionBarView != null && this.mActionBarView.isOverflowReserved()) {
            if (!this.mActionBarView.isOverflowMenuShowing() || !z) {
                if (this.mActionBarView.getVisibility() == 0) {
                    this.mActionBarView.showOverflowMenu();
                    return;
                }
                return;
            }
            this.mActionBarView.hideOverflowMenu();
            return;
        }
        menuBuilder.close();
    }

    private MenuView getListMenuView(Context context, MenuPresenter.Callback callback) {
        if (this.mMenu == null) {
            return null;
        }
        if (this.mListMenuPresenter == null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0189R.styleable.Theme);
            int resourceId = obtainStyledAttributes.getResourceId(4, C0189R.C0192style.Theme_AppCompat_CompactMenu);
            obtainStyledAttributes.recycle();
            this.mListMenuPresenter = new ListMenuPresenter(C0189R.layout.abc_list_menu_item_layout, resourceId);
            this.mListMenuPresenter.setCallback(callback);
            this.mMenu.addMenuPresenter(this.mListMenuPresenter);
        } else {
            this.mListMenuPresenter.updateMenuView(false);
        }
        return this.mListMenuPresenter.getMenuView(new FrameLayout(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMenu(MenuBuilder menuBuilder) {
        if (menuBuilder != this.mMenu) {
            if (this.mMenu != null) {
                this.mMenu.removeMenuPresenter(this.mListMenuPresenter);
            }
            this.mMenu = menuBuilder;
            if (menuBuilder != null && this.mListMenuPresenter != null) {
                menuBuilder.addMenuPresenter(this.mListMenuPresenter);
            }
            if (this.mActionBarView != null) {
                this.mActionBarView.setMenu(menuBuilder, this);
            }
        }
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public boolean onBackPressed() {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
            return true;
        } else if (this.mActionBarView != null && this.mActionBarView.hasExpandedActionView()) {
            this.mActionBarView.collapseActionView();
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgressBarVisibility(boolean z) {
        updateProgressBars(z ? -1 : -2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
        updateProgressBars(z ? -1 : -2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgressBarIndeterminate(boolean z) {
        updateProgressBars(z ? -3 : -4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void setSupportProgress(int i) {
        updateProgressBars(i + 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new ActionBarDrawableToggleImpl();
    }

    private void updateProgressBars(int i) {
        ProgressBarICS circularProgressBar = getCircularProgressBar();
        ProgressBarICS horizontalProgressBar = getHorizontalProgressBar();
        if (i == -1) {
            if (this.mFeatureProgress) {
                horizontalProgressBar.setVisibility((horizontalProgressBar.isIndeterminate() || horizontalProgressBar.getProgress() < 10000) ? 0 : 4);
            }
            if (this.mFeatureIndeterminateProgress) {
                circularProgressBar.setVisibility(0);
            }
        } else if (i == -2) {
            if (this.mFeatureProgress) {
                horizontalProgressBar.setVisibility(8);
            }
            if (this.mFeatureIndeterminateProgress) {
                circularProgressBar.setVisibility(8);
            }
        } else if (i == -3) {
            horizontalProgressBar.setIndeterminate(true);
        } else if (i == -4) {
            horizontalProgressBar.setIndeterminate(false);
        } else if (i >= 0 && i <= 10000) {
            horizontalProgressBar.setProgress(i + 0);
            if (i < 10000) {
                showProgressBars(horizontalProgressBar, circularProgressBar);
            } else {
                hideProgressBars(horizontalProgressBar, circularProgressBar);
            }
        }
    }

    private void showProgressBars(ProgressBarICS progressBarICS, ProgressBarICS progressBarICS2) {
        if (this.mFeatureIndeterminateProgress && progressBarICS2.getVisibility() == 4) {
            progressBarICS2.setVisibility(0);
        }
        if (this.mFeatureProgress && progressBarICS.getProgress() < 10000) {
            progressBarICS.setVisibility(0);
        }
    }

    private void hideProgressBars(ProgressBarICS progressBarICS, ProgressBarICS progressBarICS2) {
        if (this.mFeatureIndeterminateProgress && progressBarICS2.getVisibility() == 0) {
            progressBarICS2.setVisibility(4);
        }
        if (this.mFeatureProgress && progressBarICS.getVisibility() == 0) {
            progressBarICS.setVisibility(4);
        }
    }

    private ProgressBarICS getCircularProgressBar() {
        ProgressBarICS progressBarICS = (ProgressBarICS) this.mActionBarView.findViewById(C0189R.C0191id.progress_circular);
        if (progressBarICS != null) {
            progressBarICS.setVisibility(4);
        }
        return progressBarICS;
    }

    private ProgressBarICS getHorizontalProgressBar() {
        ProgressBarICS progressBarICS = (ProgressBarICS) this.mActionBarView.findViewById(C0189R.C0191id.progress_horizontal);
        if (progressBarICS != null) {
            progressBarICS.setVisibility(4);
        }
        return progressBarICS;
    }

    /* renamed from: android.support.v7.app.ActionBarActivityDelegateBase$ActionModeCallbackWrapper */
    /* loaded from: classes.dex */
    class ActionModeCallbackWrapper implements ActionMode.Callback {
        private ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapper(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // android.support.p007v7.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        @Override // android.support.p007v7.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }

        @Override // android.support.p007v7.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.support.p007v7.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            ActionBarActivityDelegateBase.this.mActivity.onSupportActionModeFinished(actionMode);
            ActionBarActivityDelegateBase.this.mActionMode = null;
        }
    }

    /* renamed from: android.support.v7.app.ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl */
    /* loaded from: classes.dex */
    class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
        private ActionBarDrawableToggleImpl() {
        }

        @Override // android.support.p004v4.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TypedArray obtainStyledAttributes = ActionBarActivityDelegateBase.this.mActivity.obtainStyledAttributes(ActionBarActivityDelegateBase.ACTION_BAR_DRAWABLE_TOGGLE_ATTRS);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // android.support.p004v4.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) {
            if (ActionBarActivityDelegateBase.this.mActionBarView != null) {
                ActionBarActivityDelegateBase.this.mActionBarView.setHomeAsUpIndicator(drawable);
            }
        }

        @Override // android.support.p004v4.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) {
        }
    }
}
