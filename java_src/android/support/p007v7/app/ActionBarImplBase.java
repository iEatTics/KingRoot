package android.support.p007v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.p004v4.app.FragmentTransaction;
import android.support.p007v7.app.ActionBar;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.view.ActionBarPolicy;
import android.support.p007v7.internal.view.SupportMenuInflater;
import android.support.p007v7.internal.view.menu.MenuBuilder;
import android.support.p007v7.internal.view.menu.SubMenuBuilder;
import android.support.p007v7.internal.widget.ActionBarContainer;
import android.support.p007v7.internal.widget.ActionBarContextView;
import android.support.p007v7.internal.widget.ActionBarOverlayLayout;
import android.support.p007v7.internal.widget.ActionBarView;
import android.support.p007v7.internal.widget.ScrollingTabContainerView;
import android.support.p007v7.view.ActionMode;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.SpinnerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.app.ActionBarImplBase */
/* loaded from: classes.dex */
public class ActionBarImplBase extends ActionBar {
    private static final int CONTEXT_DISPLAY_NORMAL = 0;
    private static final int CONTEXT_DISPLAY_SPLIT = 1;
    private static final int INVALID_POSITION = -1;
    ActionModeImpl mActionMode;
    private ActionBarView mActionView;
    private ActionBarActivity mActivity;
    private ActionBar.Callback mCallback;
    private ActionBarContainer mContainerView;
    private View mContentView;
    private Context mContext;
    private int mContextDisplayMode;
    private ActionBarContextView mContextView;
    ActionMode mDeferredDestroyActionMode;
    ActionMode.Callback mDeferredModeDestroyCallback;
    private Dialog mDialog;
    private boolean mDisplayHomeAsUpSet;
    private boolean mHasEmbeddedTabs;
    private boolean mHiddenByApp;
    private boolean mHiddenBySystem;
    private boolean mLastMenuVisibility;
    private ActionBarOverlayLayout mOverlayLayout;
    private TabImpl mSelectedTab;
    private boolean mShowHideAnimationEnabled;
    private boolean mShowingForMode;
    private ActionBarContainer mSplitView;
    private ScrollingTabContainerView mTabScrollView;
    Runnable mTabSelector;
    private Context mThemedContext;
    private ViewGroup mTopVisibilityView;
    private ArrayList<TabImpl> mTabs = new ArrayList<>();
    private int mSavedTabPosition = -1;
    private ArrayList<ActionBar.OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList<>();
    final Handler mHandler = new Handler();
    private int mCurWindowVisibility = 0;
    private boolean mNowShowing = true;

    public ActionBarImplBase(ActionBarActivity actionBarActivity, ActionBar.Callback callback) {
        this.mActivity = actionBarActivity;
        this.mContext = actionBarActivity;
        this.mCallback = callback;
        init(this.mActivity);
    }

    private void init(ActionBarActivity actionBarActivity) {
        boolean z = false;
        this.mOverlayLayout = (ActionBarOverlayLayout) actionBarActivity.findViewById(C0189R.C0191id.action_bar_overlay_layout);
        if (this.mOverlayLayout != null) {
            this.mOverlayLayout.setActionBar(this);
        }
        this.mActionView = (ActionBarView) actionBarActivity.findViewById(C0189R.C0191id.action_bar);
        this.mContextView = (ActionBarContextView) actionBarActivity.findViewById(C0189R.C0191id.action_context_bar);
        this.mContainerView = (ActionBarContainer) actionBarActivity.findViewById(C0189R.C0191id.action_bar_container);
        this.mTopVisibilityView = (ViewGroup) actionBarActivity.findViewById(C0189R.C0191id.top_action_bar);
        if (this.mTopVisibilityView == null) {
            this.mTopVisibilityView = this.mContainerView;
        }
        this.mSplitView = (ActionBarContainer) actionBarActivity.findViewById(C0189R.C0191id.split_action_bar);
        if (this.mActionView == null || this.mContextView == null || this.mContainerView == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.mActionView.setContextView(this.mContextView);
        this.mContextDisplayMode = this.mActionView.isSplitActionBar() ? 1 : 0;
        boolean z2 = (this.mActionView.getDisplayOptions() & 4) != 0;
        if (z2) {
            this.mDisplayHomeAsUpSet = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.mContext);
        if (actionBarPolicy.enableHomeButtonByDefault() || z2) {
            z = true;
        }
        setHomeButtonEnabled(z);
        setHasEmbeddedTabs(actionBarPolicy.hasEmbeddedTabs());
        setTitle(this.mActivity.getTitle());
    }

    public void onConfigurationChanged(Configuration configuration) {
        setHasEmbeddedTabs(ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
    }

    private void setHasEmbeddedTabs(boolean z) {
        boolean z2 = true;
        this.mHasEmbeddedTabs = z;
        if (!this.mHasEmbeddedTabs) {
            this.mActionView.setEmbeddedTabView(null);
            this.mContainerView.setTabContainer(this.mTabScrollView);
        } else {
            this.mContainerView.setTabContainer(null);
            this.mActionView.setEmbeddedTabView(this.mTabScrollView);
        }
        boolean z3 = getNavigationMode() == 2;
        if (this.mTabScrollView != null) {
            if (z3) {
                this.mTabScrollView.setVisibility(0);
            } else {
                this.mTabScrollView.setVisibility(8);
            }
        }
        ActionBarView actionBarView = this.mActionView;
        if (this.mHasEmbeddedTabs || !z3) {
            z2 = false;
        }
        actionBarView.setCollapsable(z2);
    }

    public boolean hasNonEmbeddedTabs() {
        return !this.mHasEmbeddedTabs && getNavigationMode() == 2;
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setCustomView(View view) {
        this.mActionView.setCustomNavigationView(view);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.mActionView.setCustomNavigationView(view);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setCustomView(int i) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i, (ViewGroup) this.mActionView, false));
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setIcon(int i) {
        this.mActionView.setIcon(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.mActionView.setIcon(drawable);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setLogo(int i) {
        this.mActionView.setLogo(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.mActionView.setLogo(drawable);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.mActionView.setDropdownAdapter(spinnerAdapter);
        this.mActionView.setCallback(onNavigationListener);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setSelectedNavigationItem(int i) {
        switch (this.mActionView.getNavigationMode()) {
            case 1:
                this.mActionView.setDropdownSelectedPosition(i);
                return;
            case 2:
                selectTab(this.mTabs.get(i));
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getSelectedNavigationIndex() {
        switch (this.mActionView.getNavigationMode()) {
            case 1:
                return this.mActionView.getDropdownSelectedPosition();
            case 2:
                if (this.mSelectedTab != null) {
                    return this.mSelectedTab.getPosition();
                }
                return -1;
            default:
                return -1;
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getNavigationItemCount() {
        switch (this.mActionView.getNavigationMode()) {
            case 1:
                SpinnerAdapter dropdownAdapter = this.mActionView.getDropdownAdapter();
                if (dropdownAdapter != null) {
                    return dropdownAdapter.getCount();
                }
                return 0;
            case 2:
                return this.mTabs.size();
            default:
                return 0;
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.mActionView.setTitle(charSequence);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.mActionView.setSubtitle(charSequence);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setSubtitle(int i) {
        setSubtitle(this.mContext.getString(i));
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayOptions(int i) {
        if ((i & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mActionView.setDisplayOptions(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayOptions(int i, int i2) {
        int displayOptions = this.mActionView.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mActionView.setDisplayOptions((displayOptions & (i2 ^ (-1))) | (i & i2));
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z ? 1 : 0, 1);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setHomeButtonEnabled(boolean z) {
        this.mActionView.setHomeButtonEnabled(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.mContainerView.setPrimaryBackground(drawable);
    }

    @Override // android.support.p007v7.app.ActionBar
    public View getCustomView() {
        return this.mActionView.getCustomNavigationView();
    }

    @Override // android.support.p007v7.app.ActionBar
    public CharSequence getTitle() {
        return this.mActionView.getTitle();
    }

    @Override // android.support.p007v7.app.ActionBar
    public CharSequence getSubtitle() {
        return this.mActionView.getSubtitle();
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getNavigationMode() {
        return this.mActionView.getNavigationMode();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setNavigationMode(int i) {
        boolean z = false;
        switch (this.mActionView.getNavigationMode()) {
            case 2:
                this.mSavedTabPosition = getSelectedNavigationIndex();
                selectTab(null);
                this.mTabScrollView.setVisibility(8);
                break;
        }
        this.mActionView.setNavigationMode(i);
        switch (i) {
            case 2:
                ensureTabsExist();
                this.mTabScrollView.setVisibility(0);
                if (this.mSavedTabPosition != -1) {
                    setSelectedNavigationItem(this.mSavedTabPosition);
                    this.mSavedTabPosition = -1;
                    break;
                }
                break;
        }
        ActionBarView actionBarView = this.mActionView;
        if (i == 2 && !this.mHasEmbeddedTabs) {
            z = true;
        }
        actionBarView.setCollapsable(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getDisplayOptions() {
        return this.mActionView.getDisplayOptions();
    }

    @Override // android.support.p007v7.app.ActionBar
    public ActionBar.Tab newTab() {
        return new TabImpl();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.mTabs.isEmpty());
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z) {
        ensureTabsExist();
        this.mTabScrollView.addTab(tab, z);
        configureTab(tab, this.mTabs.size());
        if (z) {
            selectTab(tab);
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i) {
        addTab(tab, i, this.mTabs.isEmpty());
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        ensureTabsExist();
        this.mTabScrollView.addTab(tab, i, z);
        configureTab(tab, i);
        if (z) {
            selectTab(tab);
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeTabAt(int i) {
        if (this.mTabScrollView != null) {
            int position = this.mSelectedTab != null ? this.mSelectedTab.getPosition() : this.mSavedTabPosition;
            this.mTabScrollView.removeTabAt(i);
            TabImpl remove = this.mTabs.remove(i);
            if (remove != null) {
                remove.setPosition(-1);
            }
            int size = this.mTabs.size();
            for (int i2 = i; i2 < size; i2++) {
                this.mTabs.get(i2).setPosition(i2);
            }
            if (position == i) {
                selectTab(this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, i - 1)));
            }
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeAllTabs() {
        cleanupTabs();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        if (getNavigationMode() != 2) {
            this.mSavedTabPosition = tab != null ? tab.getPosition() : -1;
            return;
        }
        FragmentTransaction disallowAddToBackStack = this.mActivity.getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        if (this.mSelectedTab == tab) {
            if (this.mSelectedTab != null) {
                this.mSelectedTab.getCallback().onTabReselected(this.mSelectedTab, disallowAddToBackStack);
                this.mTabScrollView.animateToTab(tab.getPosition());
            }
        } else {
            this.mTabScrollView.setTabSelected(tab != null ? tab.getPosition() : -1);
            if (this.mSelectedTab != null) {
                this.mSelectedTab.getCallback().onTabUnselected(this.mSelectedTab, disallowAddToBackStack);
            }
            this.mSelectedTab = (TabImpl) tab;
            if (this.mSelectedTab != null) {
                this.mSelectedTab.getCallback().onTabSelected(this.mSelectedTab, disallowAddToBackStack);
            }
        }
        if (!disallowAddToBackStack.isEmpty()) {
            disallowAddToBackStack.commit();
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.mSelectedTab;
    }

    @Override // android.support.p007v7.app.ActionBar
    public ActionBar.Tab getTabAt(int i) {
        return this.mTabs.get(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getTabCount() {
        return this.mTabs.size();
    }

    @Override // android.support.p007v7.app.ActionBar
    public Context getThemedContext() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(C0189R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i);
            } else {
                this.mThemedContext = this.mContext;
            }
        }
        return this.mThemedContext;
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getHeight() {
        return this.mContainerView.getHeight();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void show() {
        if (this.mHiddenByApp) {
            this.mHiddenByApp = false;
            updateVisibility(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showForActionMode() {
        if (!this.mShowingForMode) {
            this.mShowingForMode = true;
            updateVisibility(false);
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void hide() {
        if (!this.mHiddenByApp) {
            this.mHiddenByApp = true;
            updateVisibility(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideForActionMode() {
        if (this.mShowingForMode) {
            this.mShowingForMode = false;
            updateVisibility(false);
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public boolean isShowing() {
        return this.mNowShowing;
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mMenuVisibilityListeners.add(onMenuVisibilityListener);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mMenuVisibilityListeners.remove(onMenuVisibilityListener);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        this.mContextView.killMode();
        ActionModeImpl actionModeImpl = new ActionModeImpl(callback);
        if (actionModeImpl.dispatchOnCreate()) {
            actionModeImpl.invalidate();
            this.mContextView.initForMode(actionModeImpl);
            animateToMode(true);
            if (this.mSplitView != null && this.mContextDisplayMode == 1 && this.mSplitView.getVisibility() != 0) {
                this.mSplitView.setVisibility(0);
            }
            this.mContextView.sendAccessibilityEvent(32);
            this.mActionMode = actionModeImpl;
            return actionModeImpl;
        }
        return null;
    }

    void animateToMode(boolean z) {
        if (z) {
            showForActionMode();
        } else {
            hideForActionMode();
        }
        this.mActionView.animateToVisibility(z ? 4 : 0);
        this.mContextView.animateToVisibility(z ? 0 : 8);
        if (this.mTabScrollView != null && !this.mActionView.hasEmbeddedTabs() && this.mActionView.isCollapsed()) {
            this.mTabScrollView.setVisibility(z ? 8 : 0);
        }
    }

    /* renamed from: android.support.v7.app.ActionBarImplBase$TabImpl */
    /* loaded from: classes.dex */
    public class TabImpl extends ActionBar.Tab {
        private ActionBar.TabListener mCallback;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;

        public TabImpl() {
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public Object getTag() {
            return this.mTag;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public ActionBar.TabListener getCallback() {
            return this.mCallback;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.mCallback = tabListener;
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public View getCustomView() {
            return this.mCustomView;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.mCustomView = view;
            if (this.mPosition >= 0) {
                ActionBarImplBase.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(ActionBarImplBase.this.getThemedContext()).inflate(i, (ViewGroup) null));
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.mIcon;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public int getPosition() {
            return this.mPosition;
        }

        public void setPosition(int i) {
            this.mPosition = i;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public CharSequence getText() {
            return this.mText;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.mIcon = drawable;
            if (this.mPosition >= 0) {
                ActionBarImplBase.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i) {
            return setIcon(ActionBarImplBase.this.mContext.getResources().getDrawable(i));
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.mText = charSequence;
            if (this.mPosition >= 0) {
                ActionBarImplBase.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setText(int i) {
            return setText(ActionBarImplBase.this.mContext.getResources().getText(i));
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public void select() {
            ActionBarImplBase.this.selectTab(this);
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i) {
            return setContentDescription(ActionBarImplBase.this.mContext.getResources().getText(i));
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.mContentDesc = charSequence;
            if (this.mPosition >= 0) {
                ActionBarImplBase.this.mTabScrollView.updateTab(this.mPosition);
            }
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.mContentDesc;
        }
    }

    /* renamed from: android.support.v7.app.ActionBarImplBase$ActionModeImpl */
    /* loaded from: classes.dex */
    class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        private ActionMode.Callback mCallback;
        private WeakReference<View> mCustomView;
        private MenuBuilder mMenu;

        public ActionModeImpl(ActionMode.Callback callback) {
            this.mCallback = callback;
            this.mMenu = new MenuBuilder(ActionBarImplBase.this.getThemedContext()).setDefaultShowAsAction(1);
            this.mMenu.setCallback(this);
        }

        @Override // android.support.p007v7.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new SupportMenuInflater(ActionBarImplBase.this.getThemedContext());
        }

        @Override // android.support.p007v7.view.ActionMode
        public Menu getMenu() {
            return this.mMenu;
        }

        @Override // android.support.p007v7.view.ActionMode
        public void finish() {
            if (ActionBarImplBase.this.mActionMode == this) {
                if (!ActionBarImplBase.checkShowingFlags(ActionBarImplBase.this.mHiddenByApp, ActionBarImplBase.this.mHiddenBySystem, false)) {
                    ActionBarImplBase.this.mDeferredDestroyActionMode = this;
                    ActionBarImplBase.this.mDeferredModeDestroyCallback = this.mCallback;
                } else {
                    this.mCallback.onDestroyActionMode(this);
                }
                this.mCallback = null;
                ActionBarImplBase.this.animateToMode(false);
                ActionBarImplBase.this.mContextView.closeMode();
                ActionBarImplBase.this.mActionView.sendAccessibilityEvent(32);
                ActionBarImplBase.this.mActionMode = null;
            }
        }

        @Override // android.support.p007v7.view.ActionMode
        public void invalidate() {
            this.mMenu.stopDispatchingItemsChanged();
            try {
                this.mCallback.onPrepareActionMode(this, this.mMenu);
            } finally {
                this.mMenu.startDispatchingItemsChanged();
            }
        }

        public boolean dispatchOnCreate() {
            this.mMenu.stopDispatchingItemsChanged();
            try {
                return this.mCallback.onCreateActionMode(this, this.mMenu);
            } finally {
                this.mMenu.startDispatchingItemsChanged();
            }
        }

        @Override // android.support.p007v7.view.ActionMode
        public void setCustomView(View view) {
            ActionBarImplBase.this.mContextView.setCustomView(view);
            this.mCustomView = new WeakReference<>(view);
        }

        @Override // android.support.p007v7.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            ActionBarImplBase.this.mContextView.setSubtitle(charSequence);
        }

        @Override // android.support.p007v7.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            ActionBarImplBase.this.mContextView.setTitle(charSequence);
        }

        @Override // android.support.p007v7.view.ActionMode
        public void setTitle(int i) {
            setTitle(ActionBarImplBase.this.mContext.getResources().getString(i));
        }

        @Override // android.support.p007v7.view.ActionMode
        public void setSubtitle(int i) {
            setSubtitle(ActionBarImplBase.this.mContext.getResources().getString(i));
        }

        @Override // android.support.p007v7.view.ActionMode
        public CharSequence getTitle() {
            return ActionBarImplBase.this.mContextView.getTitle();
        }

        @Override // android.support.p007v7.view.ActionMode
        public CharSequence getSubtitle() {
            return ActionBarImplBase.this.mContextView.getSubtitle();
        }

        @Override // android.support.p007v7.view.ActionMode
        public void setTitleOptionalHint(boolean z) {
            super.setTitleOptionalHint(z);
            ActionBarImplBase.this.mContextView.setTitleOptional(z);
        }

        @Override // android.support.p007v7.view.ActionMode
        public boolean isTitleOptional() {
            return ActionBarImplBase.this.mContextView.isTitleOptional();
        }

        @Override // android.support.p007v7.view.ActionMode
        public View getCustomView() {
            if (this.mCustomView != null) {
                return this.mCustomView.get();
            }
            return null;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (this.mCallback != null) {
                return this.mCallback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.mCallback != null) {
                invalidate();
                ActionBarImplBase.this.mContextView.showOverflowMenu();
            }
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            if (this.mCallback == null) {
                return false;
            }
            if (!subMenuBuilder.hasVisibleItems()) {
            }
            return true;
        }

        public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
        }

        public void onMenuModeChange(Menu menu) {
            if (this.mCallback != null) {
                invalidate();
                ActionBarImplBase.this.mContextView.showOverflowMenu();
            }
        }
    }

    private void ensureTabsExist() {
        if (this.mTabScrollView == null) {
            ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
            if (this.mHasEmbeddedTabs) {
                scrollingTabContainerView.setVisibility(0);
                this.mActionView.setEmbeddedTabView(scrollingTabContainerView);
            } else {
                if (getNavigationMode() == 2) {
                    scrollingTabContainerView.setVisibility(0);
                } else {
                    scrollingTabContainerView.setVisibility(8);
                }
                this.mContainerView.setTabContainer(scrollingTabContainerView);
            }
            this.mTabScrollView = scrollingTabContainerView;
        }
    }

    private void configureTab(ActionBar.Tab tab, int i) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        tabImpl.setPosition(i);
        this.mTabs.add(i, tabImpl);
        int size = this.mTabs.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            this.mTabs.get(i2).setPosition(i2);
        }
    }

    private void cleanupTabs() {
        if (this.mSelectedTab != null) {
            selectTab(null);
        }
        this.mTabs.clear();
        if (this.mTabScrollView != null) {
            this.mTabScrollView.removeAllTabs();
        }
        this.mSavedTabPosition = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkShowingFlags(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    private void updateVisibility(boolean z) {
        if (checkShowingFlags(this.mHiddenByApp, this.mHiddenBySystem, this.mShowingForMode)) {
            if (!this.mNowShowing) {
                this.mNowShowing = true;
                doShow(z);
            }
        } else if (this.mNowShowing) {
            this.mNowShowing = false;
            doHide(z);
        }
    }

    public void setShowHideAnimationEnabled(boolean z) {
        this.mShowHideAnimationEnabled = z;
        if (!z) {
            this.mTopVisibilityView.clearAnimation();
            if (this.mSplitView != null) {
                this.mSplitView.clearAnimation();
            }
        }
    }

    public void doShow(boolean z) {
        this.mTopVisibilityView.clearAnimation();
        if (this.mTopVisibilityView.getVisibility() != 0) {
            boolean z2 = isShowHideAnimationEnabled() || z;
            if (z2) {
                this.mTopVisibilityView.startAnimation(AnimationUtils.loadAnimation(this.mContext, C0189R.anim.abc_slide_in_top));
            }
            this.mTopVisibilityView.setVisibility(0);
            if (this.mSplitView != null && this.mSplitView.getVisibility() != 0) {
                if (z2) {
                    this.mSplitView.startAnimation(AnimationUtils.loadAnimation(this.mContext, C0189R.anim.abc_slide_in_bottom));
                }
                this.mSplitView.setVisibility(0);
            }
        }
    }

    public void doHide(boolean z) {
        this.mTopVisibilityView.clearAnimation();
        if (this.mTopVisibilityView.getVisibility() != 8) {
            boolean z2 = isShowHideAnimationEnabled() || z;
            if (z2) {
                this.mTopVisibilityView.startAnimation(AnimationUtils.loadAnimation(this.mContext, C0189R.anim.abc_slide_out_top));
            }
            this.mTopVisibilityView.setVisibility(8);
            if (this.mSplitView != null && this.mSplitView.getVisibility() != 8) {
                if (z2) {
                    this.mSplitView.startAnimation(AnimationUtils.loadAnimation(this.mContext, C0189R.anim.abc_slide_out_bottom));
                }
                this.mSplitView.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShowHideAnimationEnabled() {
        return this.mShowHideAnimationEnabled;
    }
}
