package android.support.p007v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.p004v4.app.FragmentTransaction;
import android.support.p007v7.app.ActionBar;
import android.view.View;
import android.widget.SpinnerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: android.support.v7.app.ActionBarImplICS */
/* loaded from: classes.dex */
class ActionBarImplICS extends ActionBar {
    final ActionBar mActionBar;
    FragmentTransaction mActiveTransaction;
    final Activity mActivity;
    private ArrayList<WeakReference<OnMenuVisibilityListenerWrapper>> mAddedMenuVisWrappers;
    final ActionBar.Callback mCallback;

    public ActionBarImplICS(Activity activity, ActionBar.Callback callback) {
        this(activity, callback, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionBarImplICS(Activity activity, ActionBar.Callback callback, boolean z) {
        this.mAddedMenuVisWrappers = new ArrayList<>();
        this.mActivity = activity;
        this.mCallback = callback;
        this.mActionBar = activity.getActionBar();
        if (z && (getDisplayOptions() & 4) != 0) {
            setHomeButtonEnabled(true);
        }
    }

    private OnMenuVisibilityListenerWrapper findAndRemoveMenuVisWrapper(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mAddedMenuVisWrappers.size()) {
                return null;
            }
            OnMenuVisibilityListenerWrapper onMenuVisibilityListenerWrapper = this.mAddedMenuVisWrappers.get(i2).get();
            if (onMenuVisibilityListenerWrapper == null) {
                this.mAddedMenuVisWrappers.remove(i2);
                i2--;
            } else if (onMenuVisibilityListenerWrapper.mWrappedListener == onMenuVisibilityListener) {
                this.mAddedMenuVisWrappers.remove(i2);
                return onMenuVisibilityListenerWrapper;
            }
            i = i2 + 1;
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setCustomView(View view) {
        this.mActionBar.setCustomView(view);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        ActionBar.LayoutParams layoutParams2 = new ActionBar.LayoutParams(layoutParams);
        layoutParams2.gravity = layoutParams.gravity;
        this.mActionBar.setCustomView(view, layoutParams2);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setCustomView(int i) {
        this.mActionBar.setCustomView(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setIcon(int i) {
        this.mActionBar.setIcon(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.mActionBar.setIcon(drawable);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setLogo(int i) {
        this.mActionBar.setLogo(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.mActionBar.setLogo(drawable);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.mActionBar.setListNavigationCallbacks(spinnerAdapter, onNavigationListener != null ? new OnNavigationListenerWrapper(onNavigationListener) : null);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setSelectedNavigationItem(int i) {
        this.mActionBar.setSelectedNavigationItem(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getSelectedNavigationIndex() {
        return this.mActionBar.getSelectedNavigationIndex();
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getNavigationItemCount() {
        return this.mActionBar.getNavigationItemCount();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.mActionBar.setTitle(charSequence);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setTitle(int i) {
        this.mActionBar.setTitle(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.mActionBar.setSubtitle(charSequence);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setSubtitle(int i) {
        this.mActionBar.setSubtitle(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayOptions(int i) {
        this.mActionBar.setDisplayOptions(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayOptions(int i, int i2) {
        this.mActionBar.setDisplayOptions(i, i2);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z) {
        this.mActionBar.setDisplayUseLogoEnabled(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z) {
        this.mActionBar.setDisplayShowHomeEnabled(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z) {
        this.mActionBar.setDisplayHomeAsUpEnabled(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z) {
        this.mActionBar.setDisplayShowTitleEnabled(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z) {
        this.mActionBar.setDisplayShowCustomEnabled(z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.mActionBar.setBackgroundDrawable(drawable);
    }

    @Override // android.support.p007v7.app.ActionBar
    public View getCustomView() {
        return this.mActionBar.getCustomView();
    }

    @Override // android.support.p007v7.app.ActionBar
    public CharSequence getTitle() {
        return this.mActionBar.getTitle();
    }

    @Override // android.support.p007v7.app.ActionBar
    public CharSequence getSubtitle() {
        return this.mActionBar.getSubtitle();
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getNavigationMode() {
        return this.mActionBar.getNavigationMode();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setNavigationMode(int i) {
        this.mActionBar.setNavigationMode(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getDisplayOptions() {
        return this.mActionBar.getDisplayOptions();
    }

    @Override // android.support.p007v7.app.ActionBar
    public ActionBar.Tab newTab() {
        ActionBar.Tab newTab = this.mActionBar.newTab();
        TabWrapper tabWrapper = new TabWrapper(newTab);
        newTab.setTag(tabWrapper);
        return tabWrapper;
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        this.mActionBar.addTab(((TabWrapper) tab).mWrappedTab);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z) {
        this.mActionBar.addTab(((TabWrapper) tab).mWrappedTab, z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i) {
        this.mActionBar.addTab(((TabWrapper) tab).mWrappedTab, i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        this.mActionBar.addTab(((TabWrapper) tab).mWrappedTab, i, z);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        this.mActionBar.removeTab(((TabWrapper) tab).mWrappedTab);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeTabAt(int i) {
        this.mActionBar.removeTabAt(i);
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeAllTabs() {
        this.mActionBar.removeAllTabs();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        this.mActionBar.selectTab(((TabWrapper) tab).mWrappedTab);
    }

    @Override // android.support.p007v7.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return (ActionBar.Tab) this.mActionBar.getSelectedTab().getTag();
    }

    @Override // android.support.p007v7.app.ActionBar
    public ActionBar.Tab getTabAt(int i) {
        return (ActionBar.Tab) this.mActionBar.getTabAt(i).getTag();
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getTabCount() {
        return this.mActionBar.getTabCount();
    }

    @Override // android.support.p007v7.app.ActionBar
    public Context getThemedContext() {
        return this.mActionBar.getThemedContext();
    }

    @Override // android.support.p007v7.app.ActionBar
    public int getHeight() {
        return this.mActionBar.getHeight();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void show() {
        this.mActionBar.show();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void hide() {
        this.mActionBar.hide();
    }

    @Override // android.support.p007v7.app.ActionBar
    public boolean isShowing() {
        return this.mActionBar.isShowing();
    }

    @Override // android.support.p007v7.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        if (onMenuVisibilityListener != null) {
            OnMenuVisibilityListenerWrapper onMenuVisibilityListenerWrapper = new OnMenuVisibilityListenerWrapper(onMenuVisibilityListener);
            this.mAddedMenuVisWrappers.add(new WeakReference<>(onMenuVisibilityListenerWrapper));
            this.mActionBar.addOnMenuVisibilityListener(onMenuVisibilityListenerWrapper);
        }
    }

    @Override // android.support.p007v7.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mActionBar.removeOnMenuVisibilityListener(findAndRemoveMenuVisWrapper(onMenuVisibilityListener));
    }

    @Override // android.support.p007v7.app.ActionBar
    public void setHomeButtonEnabled(boolean z) {
        this.mActionBar.setHomeButtonEnabled(z);
    }

    FragmentTransaction getActiveTransaction() {
        if (this.mActiveTransaction == null) {
            this.mActiveTransaction = this.mCallback.getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        }
        return this.mActiveTransaction;
    }

    void commitActiveTransaction() {
        if (this.mActiveTransaction != null && !this.mActiveTransaction.isEmpty()) {
            this.mActiveTransaction.commit();
        }
        this.mActiveTransaction = null;
    }

    /* renamed from: android.support.v7.app.ActionBarImplICS$OnNavigationListenerWrapper */
    /* loaded from: classes.dex */
    static class OnNavigationListenerWrapper implements ActionBar.OnNavigationListener {
        private final ActionBar.OnNavigationListener mWrappedListener;

        public OnNavigationListenerWrapper(ActionBar.OnNavigationListener onNavigationListener) {
            this.mWrappedListener = onNavigationListener;
        }

        @Override // android.app.ActionBar.OnNavigationListener
        public boolean onNavigationItemSelected(int i, long j) {
            return this.mWrappedListener.onNavigationItemSelected(i, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.app.ActionBarImplICS$OnMenuVisibilityListenerWrapper */
    /* loaded from: classes.dex */
    public static class OnMenuVisibilityListenerWrapper implements ActionBar.OnMenuVisibilityListener {
        final ActionBar.OnMenuVisibilityListener mWrappedListener;

        public OnMenuVisibilityListenerWrapper(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
            this.mWrappedListener = onMenuVisibilityListener;
        }

        @Override // android.app.ActionBar.OnMenuVisibilityListener
        public void onMenuVisibilityChanged(boolean z) {
            this.mWrappedListener.onMenuVisibilityChanged(z);
        }
    }

    /* renamed from: android.support.v7.app.ActionBarImplICS$TabWrapper */
    /* loaded from: classes.dex */
    class TabWrapper extends ActionBar.Tab implements ActionBar.TabListener {
        private CharSequence mContentDescription;
        private ActionBar.TabListener mTabListener;
        private Object mTag;
        final ActionBar.Tab mWrappedTab;

        public TabWrapper(ActionBar.Tab tab) {
            this.mWrappedTab = tab;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public int getPosition() {
            return this.mWrappedTab.getPosition();
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.mWrappedTab.getIcon();
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public CharSequence getText() {
            return this.mWrappedTab.getText();
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.mWrappedTab.setIcon(drawable);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i) {
            this.mWrappedTab.setIcon(i);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.mWrappedTab.setText(charSequence);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setText(int i) {
            this.mWrappedTab.setText(i);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.mWrappedTab.setCustomView(view);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i) {
            this.mWrappedTab.setCustomView(i);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public View getCustomView() {
            return this.mWrappedTab.getCustomView();
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public Object getTag() {
            return this.mTag;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.mTabListener = tabListener;
            this.mWrappedTab.setTabListener(tabListener != null ? this : null);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public void select() {
            this.mWrappedTab.select();
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i) {
            this.mContentDescription = ActionBarImplICS.this.mActivity.getText(i);
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.mContentDescription = charSequence;
            return this;
        }

        @Override // android.support.p007v7.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.mContentDescription;
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabSelected(ActionBar.Tab tab, android.app.FragmentTransaction fragmentTransaction) {
            this.mTabListener.onTabSelected(this, fragmentTransaction != null ? ActionBarImplICS.this.getActiveTransaction() : null);
            ActionBarImplICS.this.commitActiveTransaction();
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabUnselected(ActionBar.Tab tab, android.app.FragmentTransaction fragmentTransaction) {
            this.mTabListener.onTabUnselected(this, fragmentTransaction != null ? ActionBarImplICS.this.getActiveTransaction() : null);
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabReselected(ActionBar.Tab tab, android.app.FragmentTransaction fragmentTransaction) {
            this.mTabListener.onTabReselected(this, fragmentTransaction != null ? ActionBarImplICS.this.getActiveTransaction() : null);
            ActionBarImplICS.this.commitActiveTransaction();
        }
    }
}
