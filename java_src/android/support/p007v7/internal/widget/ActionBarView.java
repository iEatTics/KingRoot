package android.support.p007v7.internal.widget;

import andhook.lib.xposed.callbacks.XCallback;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p004v4.internal.view.SupportMenu;
import android.support.p004v4.internal.view.SupportMenuItem;
import android.support.p007v7.app.ActionBar;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.view.menu.ActionMenuItem;
import android.support.p007v7.internal.view.menu.ActionMenuPresenter;
import android.support.p007v7.internal.view.menu.ActionMenuView;
import android.support.p007v7.internal.view.menu.MenuBuilder;
import android.support.p007v7.internal.view.menu.MenuItemImpl;
import android.support.p007v7.internal.view.menu.MenuPresenter;
import android.support.p007v7.internal.view.menu.MenuView;
import android.support.p007v7.internal.view.menu.SubMenuBuilder;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.support.p007v7.internal.widget.AdapterViewICS;
import android.support.p007v7.view.CollapsibleActionView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.kingroot.kinguser.C3298m;
/* renamed from: android.support.v7.internal.widget.ActionBarView */
/* loaded from: classes.dex */
public class ActionBarView extends AbsActionBarView {
    private static final int DEFAULT_CUSTOM_GRAVITY = 19;
    public static final int DISPLAY_DEFAULT = 0;
    private static final int DISPLAY_RELAYOUT_MASK = 31;
    private static final String TAG = "ActionBarView";
    private ActionBar.OnNavigationListener mCallback;
    private Context mContext;
    private ActionBarContextView mContextView;
    private View mCustomNavView;
    private int mDisplayOptions;
    View mExpandedActionView;
    private final View.OnClickListener mExpandedActionViewUpListener;
    private HomeView mExpandedHomeLayout;
    private ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private HomeView mHomeLayout;
    private Drawable mIcon;
    private boolean mIncludeTabs;
    private int mIndeterminateProgressStyle;
    private ProgressBarICS mIndeterminateProgressView;
    private boolean mIsCollapsable;
    private boolean mIsCollapsed;
    private int mItemPadding;
    private LinearLayout mListNavLayout;
    private Drawable mLogo;
    private ActionMenuItem mLogoNavItem;
    private final AdapterViewICS.OnItemSelectedListener mNavItemSelectedListener;
    private int mNavigationMode;
    private MenuBuilder mOptionsMenu;
    private int mProgressBarPadding;
    private int mProgressStyle;
    private ProgressBarICS mProgressView;
    private SpinnerICS mSpinner;
    private SpinnerAdapter mSpinnerAdapter;
    private CharSequence mSubtitle;
    private int mSubtitleStyleRes;
    private TextView mSubtitleView;
    private ScrollingTabContainerView mTabScrollView;
    private Runnable mTabSelector;
    private CharSequence mTitle;
    private LinearLayout mTitleLayout;
    private int mTitleStyleRes;
    private View mTitleUpView;
    private TextView mTitleView;
    private final View.OnClickListener mUpClickListener;
    private boolean mUserTitle;
    Window.Callback mWindowCallback;

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void animateToVisibility(int i) {
        super.animateToVisibility(i);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void dismissPopupMenus() {
        super.dismissPopupMenus();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean hideOverflowMenu() {
        return super.hideOverflowMenu();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowMenuShowing() {
        return super.isOverflowMenuShowing();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowReserved() {
        return super.isOverflowReserved();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void postShowOverflowMenu() {
        super.postShowOverflowMenu();
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void setContentHeight(int i) {
        super.setContentHeight(i);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void setSplitView(ActionBarContainer actionBarContainer) {
        super.setSplitView(actionBarContainer);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void setSplitWhenNarrow(boolean z) {
        super.setSplitWhenNarrow(z);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean showOverflowMenu() {
        return super.showOverflowMenu();
    }

    public ActionBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDisplayOptions = -1;
        this.mNavItemSelectedListener = new AdapterViewICS.OnItemSelectedListener() { // from class: android.support.v7.internal.widget.ActionBarView.1
            @Override // android.support.p007v7.internal.widget.AdapterViewICS.OnItemSelectedListener
            public void onItemSelected(AdapterViewICS<?> adapterViewICS, View view, int i, long j) {
                if (ActionBarView.this.mCallback != null) {
                    ActionBarView.this.mCallback.onNavigationItemSelected(i, j);
                }
            }

            @Override // android.support.p007v7.internal.widget.AdapterViewICS.OnItemSelectedListener
            public void onNothingSelected(AdapterViewICS<?> adapterViewICS) {
            }
        };
        this.mExpandedActionViewUpListener = new View.OnClickListener() { // from class: android.support.v7.internal.widget.ActionBarView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MenuItemImpl menuItemImpl = ActionBarView.this.mExpandedMenuPresenter.mCurrentExpandedItem;
                if (menuItemImpl != null) {
                    menuItemImpl.collapseActionView();
                }
            }
        };
        this.mUpClickListener = new View.OnClickListener() { // from class: android.support.v7.internal.widget.ActionBarView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActionBarView.this.mWindowCallback.onMenuItemSelected(0, ActionBarView.this.mLogoNavItem);
            }
        };
        this.mContext = context;
        setBackgroundResource(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0189R.styleable.ActionBar, C0189R.attr.actionBarStyle, 0);
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        PackageManager packageManager = context.getPackageManager();
        this.mNavigationMode = obtainStyledAttributes.getInt(2, 0);
        this.mTitle = obtainStyledAttributes.getText(1);
        this.mSubtitle = obtainStyledAttributes.getText(4);
        this.mLogo = obtainStyledAttributes.getDrawable(8);
        if (this.mLogo == null && Build.VERSION.SDK_INT >= 9) {
            if (context instanceof Activity) {
                try {
                    this.mLogo = packageManager.getActivityLogo(((Activity) context).getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(TAG, "Activity component name not found!", e);
                }
            }
            if (this.mLogo == null) {
                this.mLogo = applicationInfo.loadLogo(packageManager);
            }
        }
        this.mIcon = obtainStyledAttributes.getDrawable(7);
        if (this.mIcon == null) {
            if (context instanceof Activity) {
                try {
                    this.mIcon = packageManager.getActivityIcon(((Activity) context).getComponentName());
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e(TAG, "Activity component name not found!", e2);
                }
            }
            if (this.mIcon == null) {
                this.mIcon = applicationInfo.loadIcon(packageManager);
            }
        }
        LayoutInflater from = LayoutInflater.from(context);
        int resourceId = obtainStyledAttributes.getResourceId(14, C0189R.layout.abc_action_bar_home);
        this.mHomeLayout = (HomeView) from.inflate(resourceId, (ViewGroup) this, false);
        this.mExpandedHomeLayout = (HomeView) from.inflate(resourceId, (ViewGroup) this, false);
        this.mExpandedHomeLayout.setUp(true);
        this.mExpandedHomeLayout.setOnClickListener(this.mExpandedActionViewUpListener);
        this.mExpandedHomeLayout.setContentDescription(getResources().getText(C0189R.string.abc_action_bar_up_description));
        this.mTitleStyleRes = obtainStyledAttributes.getResourceId(5, 0);
        this.mSubtitleStyleRes = obtainStyledAttributes.getResourceId(6, 0);
        this.mProgressStyle = obtainStyledAttributes.getResourceId(15, 0);
        this.mIndeterminateProgressStyle = obtainStyledAttributes.getResourceId(16, 0);
        this.mProgressBarPadding = obtainStyledAttributes.getDimensionPixelOffset(17, 0);
        this.mItemPadding = obtainStyledAttributes.getDimensionPixelOffset(18, 0);
        setDisplayOptions(obtainStyledAttributes.getInt(3, 0));
        int resourceId2 = obtainStyledAttributes.getResourceId(13, 0);
        if (resourceId2 != 0) {
            this.mCustomNavView = from.inflate(resourceId2, (ViewGroup) this, false);
            this.mNavigationMode = 0;
            setDisplayOptions(this.mDisplayOptions | 16);
        }
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(0, 0);
        obtainStyledAttributes.recycle();
        this.mLogoNavItem = new ActionMenuItem(context, 0, 16908332, 0, 0, this.mTitle);
        this.mHomeLayout.setOnClickListener(this.mUpClickListener);
        this.mHomeLayout.setClickable(true);
        this.mHomeLayout.setFocusable(true);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView, android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mTitleView = null;
        this.mSubtitleView = null;
        this.mTitleUpView = null;
        if (this.mTitleLayout != null && this.mTitleLayout.getParent() == this) {
            removeView(this.mTitleLayout);
        }
        this.mTitleLayout = null;
        if ((this.mDisplayOptions & 8) != 0) {
            initTitle();
        }
        if (this.mTabScrollView != null && this.mIncludeTabs) {
            ViewGroup.LayoutParams layoutParams = this.mTabScrollView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = -1;
            }
            this.mTabScrollView.setAllowCollapse(true);
        }
        if (this.mProgressView != null) {
            removeView(this.mProgressView);
            initProgress();
        }
        if (this.mIndeterminateProgressView != null) {
            removeView(this.mIndeterminateProgressView);
            initIndeterminateProgress();
        }
    }

    public void setWindowCallback(Window.Callback callback) {
        this.mWindowCallback = callback;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mTabSelector);
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu();
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void initProgress() {
        this.mProgressView = new ProgressBarICS(this.mContext, null, 0, this.mProgressStyle);
        this.mProgressView.setId(C0189R.C0191id.progress_horizontal);
        this.mProgressView.setMax(XCallback.PRIORITY_HIGHEST);
        this.mProgressView.setVisibility(8);
        addView(this.mProgressView);
    }

    public void initIndeterminateProgress() {
        this.mIndeterminateProgressView = new ProgressBarICS(this.mContext, null, 0, this.mIndeterminateProgressStyle);
        this.mIndeterminateProgressView.setId(C0189R.C0191id.progress_circular);
        this.mIndeterminateProgressView.setVisibility(8);
        addView(this.mIndeterminateProgressView);
    }

    @Override // android.support.p007v7.internal.widget.AbsActionBarView
    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
                if (z) {
                    if (this.mSplitView != null) {
                        this.mSplitView.addView(this.mMenuView);
                    }
                    this.mMenuView.getLayoutParams().width = -1;
                } else {
                    addView(this.mMenuView);
                    this.mMenuView.getLayoutParams().width = -2;
                }
                this.mMenuView.requestLayout();
            }
            if (this.mSplitView != null) {
                this.mSplitView.setVisibility(z ? 0 : 8);
            }
            if (this.mActionMenuPresenter != null) {
                if (!z) {
                    this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(C0189R.bool.abc_action_bar_expanded_action_views_exclusive));
                } else {
                    this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    this.mActionMenuPresenter.setItemLimit(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                }
            }
            super.setSplitActionBar(z);
        }
    }

    public boolean isSplitActionBar() {
        return this.mSplitActionBar;
    }

    public boolean hasEmbeddedTabs() {
        return this.mIncludeTabs;
    }

    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.mTabScrollView != null) {
            removeView(this.mTabScrollView);
        }
        this.mTabScrollView = scrollingTabContainerView;
        this.mIncludeTabs = scrollingTabContainerView != null;
        if (this.mIncludeTabs && this.mNavigationMode == 2) {
            addView(this.mTabScrollView);
            ViewGroup.LayoutParams layoutParams = this.mTabScrollView.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    public void setCallback(ActionBar.OnNavigationListener onNavigationListener) {
        this.mCallback = onNavigationListener;
    }

    public void setMenu(SupportMenu supportMenu, MenuPresenter.Callback callback) {
        ActionMenuView actionMenuView;
        ViewGroup viewGroup;
        if (supportMenu != this.mOptionsMenu) {
            if (this.mOptionsMenu != null) {
                this.mOptionsMenu.removeMenuPresenter(this.mActionMenuPresenter);
                this.mOptionsMenu.removeMenuPresenter(this.mExpandedMenuPresenter);
            }
            MenuBuilder menuBuilder = (MenuBuilder) supportMenu;
            this.mOptionsMenu = menuBuilder;
            if (this.mMenuView != null && (viewGroup = (ViewGroup) this.mMenuView.getParent()) != null) {
                viewGroup.removeView(this.mMenuView);
            }
            if (this.mActionMenuPresenter == null) {
                this.mActionMenuPresenter = new ActionMenuPresenter(this.mContext);
                this.mActionMenuPresenter.setCallback(callback);
                this.mActionMenuPresenter.setId(C0189R.C0191id.action_menu_presenter);
                this.mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
            if (!this.mSplitActionBar) {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(C0189R.bool.abc_action_bar_expanded_action_views_exclusive));
                configPresenters(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                actionMenuView.initialize(menuBuilder);
                ViewGroup viewGroup2 = (ViewGroup) actionMenuView.getParent();
                if (viewGroup2 != null && viewGroup2 != this) {
                    viewGroup2.removeView(actionMenuView);
                }
                addView(actionMenuView, layoutParams);
            } else {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                this.mActionMenuPresenter.setItemLimit(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                layoutParams.width = -1;
                configPresenters(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                if (this.mSplitView != null) {
                    ViewGroup viewGroup3 = (ViewGroup) actionMenuView.getParent();
                    if (viewGroup3 != null && viewGroup3 != this.mSplitView) {
                        viewGroup3.removeView(actionMenuView);
                    }
                    actionMenuView.setVisibility(getAnimatedVisibility());
                    this.mSplitView.addView(actionMenuView, layoutParams);
                } else {
                    actionMenuView.setLayoutParams(layoutParams);
                }
            }
            this.mMenuView = actionMenuView;
        }
    }

    private void configPresenters(MenuBuilder menuBuilder) {
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter);
        } else {
            this.mActionMenuPresenter.initForMenu(this.mContext, null);
            this.mExpandedMenuPresenter.initForMenu(this.mContext, null);
        }
        this.mActionMenuPresenter.updateMenuView(true);
        this.mExpandedMenuPresenter.updateMenuView(true);
    }

    public boolean hasExpandedActionView() {
        return (this.mExpandedMenuPresenter == null || this.mExpandedMenuPresenter.mCurrentExpandedItem == null) ? false : true;
    }

    public void collapseActionView() {
        MenuItemImpl menuItemImpl = this.mExpandedMenuPresenter == null ? null : this.mExpandedMenuPresenter.mCurrentExpandedItem;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    public void setCustomNavigationView(View view) {
        boolean z = (this.mDisplayOptions & 16) != 0;
        if (this.mCustomNavView != null && z) {
            removeView(this.mCustomNavView);
        }
        this.mCustomNavView = view;
        if (this.mCustomNavView != null && z) {
            addView(this.mCustomNavView);
        }
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public void setTitle(CharSequence charSequence) {
        this.mUserTitle = true;
        setTitleImpl(charSequence);
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (!this.mUserTitle) {
            setTitleImpl(charSequence);
        }
    }

    private void setTitleImpl(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
            this.mTitleLayout.setVisibility(this.mExpandedActionView == null && (this.mDisplayOptions & 8) != 0 && (!TextUtils.isEmpty(this.mTitle) || !TextUtils.isEmpty(this.mSubtitle)) ? 0 : 8);
        }
        if (this.mLogoNavItem != null) {
            this.mLogoNavItem.setTitle(charSequence);
        }
    }

    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    public void setSubtitle(CharSequence charSequence) {
        this.mSubtitle = charSequence;
        if (this.mSubtitleView != null) {
            this.mSubtitleView.setText(charSequence);
            this.mSubtitleView.setVisibility(charSequence != null ? 0 : 8);
            this.mTitleLayout.setVisibility(this.mExpandedActionView == null && (this.mDisplayOptions & 8) != 0 && (!TextUtils.isEmpty(this.mTitle) || !TextUtils.isEmpty(this.mSubtitle)) ? 0 : 8);
        }
    }

    public void setHomeButtonEnabled(boolean z) {
        this.mHomeLayout.setEnabled(z);
        this.mHomeLayout.setFocusable(z);
        if (!z) {
            this.mHomeLayout.setContentDescription(null);
        } else if ((this.mDisplayOptions & 4) != 0) {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(C0189R.string.abc_action_bar_up_description));
        } else {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(C0189R.string.abc_action_bar_home_description));
        }
    }

    public void setDisplayOptions(int i) {
        int i2 = 8;
        boolean z = true;
        int i3 = this.mDisplayOptions != -1 ? this.mDisplayOptions ^ i : -1;
        this.mDisplayOptions = i;
        if ((i3 & 31) != 0) {
            boolean z2 = (i & 2) != 0;
            this.mHomeLayout.setVisibility((z2 && this.mExpandedActionView == null) ? 0 : 8);
            if ((i3 & 4) != 0) {
                boolean z3 = (i & 4) != 0;
                this.mHomeLayout.setUp(z3);
                if (z3) {
                    setHomeButtonEnabled(true);
                }
            }
            if ((i3 & 1) != 0) {
                this.mHomeLayout.setIcon(this.mLogo != null && (i & 1) != 0 ? this.mLogo : this.mIcon);
            }
            if ((i3 & 8) != 0) {
                if ((i & 8) != 0) {
                    initTitle();
                } else {
                    removeView(this.mTitleLayout);
                }
            }
            if (this.mTitleLayout != null && (i3 & 6) != 0) {
                boolean z4 = (this.mDisplayOptions & 4) != 0;
                View view = this.mTitleUpView;
                if (!z2) {
                    i2 = z4 ? 0 : 4;
                }
                view.setVisibility(i2);
                LinearLayout linearLayout = this.mTitleLayout;
                if (z2 || !z4) {
                    z = false;
                }
                linearLayout.setEnabled(z);
            }
            if ((i3 & 16) != 0 && this.mCustomNavView != null) {
                if ((i & 16) != 0) {
                    addView(this.mCustomNavView);
                } else {
                    removeView(this.mCustomNavView);
                }
            }
            requestLayout();
        } else {
            invalidate();
        }
        if (!this.mHomeLayout.isEnabled()) {
            this.mHomeLayout.setContentDescription(null);
        } else if ((i & 4) != 0) {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(C0189R.string.abc_action_bar_up_description));
        } else {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(C0189R.string.abc_action_bar_home_description));
        }
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        if (drawable != null && ((this.mDisplayOptions & 1) == 0 || this.mLogo == null)) {
            this.mHomeLayout.setIcon(drawable);
        }
        if (this.mExpandedActionView != null) {
            this.mExpandedHomeLayout.setIcon(this.mIcon.getConstantState().newDrawable(getResources()));
        }
    }

    public void setIcon(int i) {
        setIcon(this.mContext.getResources().getDrawable(i));
    }

    public void setLogo(Drawable drawable) {
        this.mLogo = drawable;
        if (drawable != null && (this.mDisplayOptions & 1) != 0) {
            this.mHomeLayout.setIcon(drawable);
        }
    }

    public void setLogo(int i) {
        setLogo(this.mContext.getResources().getDrawable(i));
    }

    public void setNavigationMode(int i) {
        int i2 = this.mNavigationMode;
        if (i != i2) {
            switch (i2) {
                case 1:
                    if (this.mListNavLayout != null) {
                        removeView(this.mListNavLayout);
                        break;
                    }
                    break;
                case 2:
                    if (this.mTabScrollView != null && this.mIncludeTabs) {
                        removeView(this.mTabScrollView);
                        break;
                    }
                    break;
            }
            switch (i) {
                case 1:
                    if (this.mSpinner == null) {
                        this.mSpinner = new SpinnerICS(this.mContext, null, C0189R.attr.actionDropDownStyle);
                        this.mListNavLayout = (LinearLayout) LayoutInflater.from(this.mContext).inflate(C0189R.layout.abc_action_bar_view_list_nav_layout, (ViewGroup) null);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                        layoutParams.gravity = 17;
                        this.mListNavLayout.addView(this.mSpinner, layoutParams);
                    }
                    if (this.mSpinner.getAdapter() != this.mSpinnerAdapter) {
                        this.mSpinner.setAdapter(this.mSpinnerAdapter);
                    }
                    this.mSpinner.setOnItemSelectedListener(this.mNavItemSelectedListener);
                    addView(this.mListNavLayout);
                    break;
                case 2:
                    if (this.mTabScrollView != null && this.mIncludeTabs) {
                        addView(this.mTabScrollView);
                        break;
                    }
                    break;
            }
            this.mNavigationMode = i;
            requestLayout();
        }
    }

    public void setDropdownAdapter(SpinnerAdapter spinnerAdapter) {
        this.mSpinnerAdapter = spinnerAdapter;
        if (this.mSpinner != null) {
            this.mSpinner.setAdapter(spinnerAdapter);
        }
    }

    public SpinnerAdapter getDropdownAdapter() {
        return this.mSpinnerAdapter;
    }

    public void setDropdownSelectedPosition(int i) {
        this.mSpinner.setSelection(i);
    }

    public int getDropdownSelectedPosition() {
        return this.mSpinner.getSelectedItemPosition();
    }

    public View getCustomNavigationView() {
        return this.mCustomNavView;
    }

    public int getNavigationMode() {
        return this.mNavigationMode;
    }

    public int getDisplayOptions() {
        return this.mDisplayOptions;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ActionBar.LayoutParams(19);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        ViewParent parent;
        super.onFinishInflate();
        addView(this.mHomeLayout);
        if (this.mCustomNavView != null && (this.mDisplayOptions & 16) != 0 && (parent = this.mCustomNavView.getParent()) != this) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mCustomNavView);
            }
            addView(this.mCustomNavView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initTitle() {
        int i;
        boolean z = true;
        if (this.mTitleLayout == null) {
            this.mTitleLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(C0189R.layout.abc_action_bar_title_item, (ViewGroup) this, false);
            this.mTitleView = (TextView) this.mTitleLayout.findViewById(C0189R.C0191id.action_bar_title);
            this.mSubtitleView = (TextView) this.mTitleLayout.findViewById(C0189R.C0191id.action_bar_subtitle);
            this.mTitleUpView = this.mTitleLayout.findViewById(C0189R.C0191id.up);
            this.mTitleLayout.setOnClickListener(this.mUpClickListener);
            if (this.mTitleStyleRes != 0) {
                this.mTitleView.setTextAppearance(this.mContext, this.mTitleStyleRes);
            }
            if (this.mTitle != null) {
                this.mTitleView.setText(this.mTitle);
            }
            if (this.mSubtitleStyleRes != 0) {
                this.mSubtitleView.setTextAppearance(this.mContext, this.mSubtitleStyleRes);
            }
            if (this.mSubtitle != null) {
                this.mSubtitleView.setText(this.mSubtitle);
                this.mSubtitleView.setVisibility(0);
            }
            boolean z2 = (this.mDisplayOptions & 4) != 0;
            boolean z3 = (this.mDisplayOptions & 2) != 0;
            View view = this.mTitleUpView;
            if (z3) {
                i = 8;
            } else {
                i = z2 ? 0 : 4;
            }
            view.setVisibility(i);
            LinearLayout linearLayout = this.mTitleLayout;
            if (!z2 || z3) {
                z = false;
            }
            linearLayout.setEnabled(z);
        }
        addView(this.mTitleLayout);
        if (this.mExpandedActionView != null || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mSubtitle))) {
            this.mTitleLayout.setVisibility(8);
        }
    }

    public void setContextView(ActionBarContextView actionBarContextView) {
        this.mContextView = actionBarContextView;
    }

    public void setCollapsable(boolean z) {
        this.mIsCollapsable = z;
    }

    public boolean isCollapsed() {
        return this.mIsCollapsed;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:117:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x025a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        View view;
        int i7;
        int makeMeasureSpec;
        int childCount = getChildCount();
        if (this.mIsCollapsable) {
            int i8 = 0;
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt.getVisibility() != 8 && (childAt != this.mMenuView || this.mMenuView.getChildCount() != 0)) {
                    i8++;
                }
            }
            if (i8 == 0) {
                setMeasuredDimension(0, 0);
                this.mIsCollapsed = true;
                return;
            }
        }
        this.mIsCollapsed = false;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"MATCH_PARENT\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.mContentHeight > 0 ? this.mContentHeight : View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i10 = size2 - paddingTop;
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE);
        int i11 = (size - paddingLeft) - paddingRight;
        int i12 = i11 / 2;
        HomeView homeView = this.mExpandedActionView != null ? this.mExpandedHomeLayout : this.mHomeLayout;
        if (homeView.getVisibility() != 8) {
            ViewGroup.LayoutParams layoutParams = homeView.getLayoutParams();
            if (layoutParams.width < 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11, Integer.MIN_VALUE);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
            }
            homeView.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
            int leftOffset = homeView.getLeftOffset() + homeView.getMeasuredWidth();
            i4 = Math.max(0, i11 - leftOffset);
            i3 = Math.max(0, i4 - leftOffset);
        } else {
            i3 = i12;
            i4 = i11;
        }
        if (this.mMenuView != null && this.mMenuView.getParent() == this) {
            i4 = measureChildView(this.mMenuView, i4, makeMeasureSpec2, 0);
            i12 = Math.max(0, i12 - this.mMenuView.getMeasuredWidth());
        }
        if (this.mIndeterminateProgressView != null && this.mIndeterminateProgressView.getVisibility() != 8) {
            i4 = measureChildView(this.mIndeterminateProgressView, i4, makeMeasureSpec2, 0);
            i12 = Math.max(0, i12 - this.mIndeterminateProgressView.getMeasuredWidth());
        }
        boolean z = (this.mTitleLayout == null || this.mTitleLayout.getVisibility() == 8 || (this.mDisplayOptions & 8) == 0) ? false : true;
        if (this.mExpandedActionView == null) {
            switch (this.mNavigationMode) {
                case 1:
                    if (this.mListNavLayout != null) {
                        int i13 = z ? this.mItemPadding * 2 : this.mItemPadding;
                        int max = Math.max(0, i4 - i13);
                        int max2 = Math.max(0, i3 - i13);
                        this.mListNavLayout.measure(View.MeasureSpec.makeMeasureSpec(max, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
                        int measuredWidth = this.mListNavLayout.getMeasuredWidth();
                        int max3 = Math.max(0, max - measuredWidth);
                        i5 = Math.max(0, max2 - measuredWidth);
                        i6 = max3;
                        break;
                    }
                    break;
                case 2:
                    if (this.mTabScrollView != null) {
                        int i14 = z ? this.mItemPadding * 2 : this.mItemPadding;
                        int max4 = Math.max(0, i4 - i14);
                        int max5 = Math.max(0, i3 - i14);
                        this.mTabScrollView.measure(View.MeasureSpec.makeMeasureSpec(max4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
                        int measuredWidth2 = this.mTabScrollView.getMeasuredWidth();
                        int max6 = Math.max(0, max4 - measuredWidth2);
                        i5 = Math.max(0, max5 - measuredWidth2);
                        i6 = max6;
                        break;
                    }
                    break;
            }
            if (this.mExpandedActionView == null) {
                view = this.mExpandedActionView;
            } else if ((this.mDisplayOptions & 16) == 0 || this.mCustomNavView == null) {
                view = null;
            } else {
                view = this.mCustomNavView;
            }
            if (view != null) {
                ViewGroup.LayoutParams generateLayoutParams = generateLayoutParams(view.getLayoutParams());
                ActionBar.LayoutParams layoutParams2 = generateLayoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) generateLayoutParams : null;
                int i15 = 0;
                int i16 = 0;
                if (layoutParams2 != null) {
                    i15 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                    i16 = layoutParams2.topMargin + layoutParams2.bottomMargin;
                }
                if (this.mContentHeight <= 0) {
                    i7 = Integer.MIN_VALUE;
                } else {
                    i7 = generateLayoutParams.height != -2 ? 1073741824 : Integer.MIN_VALUE;
                }
                if (generateLayoutParams.height >= 0) {
                    i10 = Math.min(generateLayoutParams.height, i10);
                }
                view.measure(View.MeasureSpec.makeMeasureSpec((((layoutParams2 != null ? layoutParams2.gravity : 19) & 7) == 1 && generateLayoutParams.width == -1) ? Math.min(i5, i12) * 2 : Math.max(0, (generateLayoutParams.width >= 0 ? Math.min(generateLayoutParams.width, i6) : i6) - i15), generateLayoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(Math.max(0, i10 - i16), i7));
                i6 -= view.getMeasuredWidth() + i15;
            }
            if (this.mExpandedActionView == null && z) {
                measureChildView(this.mTitleLayout, i6, View.MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), 0);
                Math.max(0, i5 - this.mTitleLayout.getMeasuredWidth());
            }
            if (this.mContentHeight > 0) {
                int i17 = 0;
                int i18 = 0;
                while (i18 < childCount) {
                    int measuredHeight = getChildAt(i18).getMeasuredHeight() + paddingTop;
                    if (measuredHeight <= i17) {
                        measuredHeight = i17;
                    }
                    i18++;
                    i17 = measuredHeight;
                }
                setMeasuredDimension(size, i17);
            } else {
                setMeasuredDimension(size, size2);
            }
            if (this.mContextView != null) {
                this.mContextView.setContentHeight(getMeasuredHeight());
            }
            if (this.mProgressView == null && this.mProgressView.getVisibility() != 8) {
                this.mProgressView.measure(View.MeasureSpec.makeMeasureSpec(size - (this.mProgressBarPadding * 2), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
                return;
            }
        }
        i5 = i3;
        i6 = i4;
        if (this.mExpandedActionView == null) {
        }
        if (view != null) {
        }
        if (this.mExpandedActionView == null) {
            measureChildView(this.mTitleLayout, i6, View.MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), 0);
            Math.max(0, i5 - this.mTitleLayout.getMeasuredWidth());
        }
        if (this.mContentHeight > 0) {
        }
        if (this.mContextView != null) {
        }
        if (this.mProgressView == null) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0150  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int paddingRight;
        int i7;
        View view;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (paddingTop2 > 0) {
            HomeView homeView = this.mExpandedActionView != null ? this.mExpandedHomeLayout : this.mHomeLayout;
            if (homeView.getVisibility() != 8) {
                int leftOffset = homeView.getLeftOffset();
                i5 = positionChild(homeView, paddingLeft + leftOffset, paddingTop, paddingTop2) + leftOffset + paddingLeft;
            } else {
                i5 = paddingLeft;
            }
            if (this.mExpandedActionView == null) {
                boolean z2 = (this.mTitleLayout == null || this.mTitleLayout.getVisibility() == 8 || (this.mDisplayOptions & 8) == 0) ? false : true;
                if (z2) {
                    i5 += positionChild(this.mTitleLayout, i5, paddingTop, paddingTop2);
                }
                switch (this.mNavigationMode) {
                    case 0:
                        i6 = i5;
                        break;
                    case 1:
                        if (this.mListNavLayout != null) {
                            if (z2) {
                                i5 += this.mItemPadding;
                            }
                            i6 = i5 + positionChild(this.mListNavLayout, i5, paddingTop, paddingTop2) + this.mItemPadding;
                            break;
                        }
                        break;
                    case 2:
                        if (this.mTabScrollView != null) {
                            if (z2) {
                                i5 += this.mItemPadding;
                            }
                            i6 = i5 + positionChild(this.mTabScrollView, i5, paddingTop, paddingTop2) + this.mItemPadding;
                            break;
                        }
                        break;
                }
                paddingRight = (i3 - i) - getPaddingRight();
                if (this.mMenuView != null && this.mMenuView.getParent() == this) {
                    positionChildInverse(this.mMenuView, paddingRight, paddingTop, paddingTop2);
                    paddingRight -= this.mMenuView.getMeasuredWidth();
                }
                if (this.mIndeterminateProgressView != null || this.mIndeterminateProgressView.getVisibility() == 8) {
                    i7 = paddingRight;
                } else {
                    positionChildInverse(this.mIndeterminateProgressView, paddingRight, paddingTop, paddingTop2);
                    i7 = paddingRight - this.mIndeterminateProgressView.getMeasuredWidth();
                }
                if (this.mExpandedActionView == null) {
                    view = this.mExpandedActionView;
                } else if ((this.mDisplayOptions & 16) == 0 || this.mCustomNavView == null) {
                    view = null;
                } else {
                    view = this.mCustomNavView;
                }
                if (view != null) {
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ActionBar.LayoutParams layoutParams2 = layoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) layoutParams : null;
                    int i14 = layoutParams2 != null ? layoutParams2.gravity : 19;
                    int measuredWidth = view.getMeasuredWidth();
                    if (layoutParams2 == null) {
                        i8 = 0;
                        i9 = i7;
                        i10 = 0;
                        i11 = i6;
                    } else {
                        int i15 = i6 + layoutParams2.leftMargin;
                        int i16 = i7 - layoutParams2.rightMargin;
                        int i17 = layoutParams2.topMargin;
                        int i18 = layoutParams2.bottomMargin;
                        i8 = i17;
                        i9 = i16;
                        i11 = i15;
                        i10 = i18;
                    }
                    int i19 = i14 & 7;
                    if (i19 == 1) {
                        int width = (getWidth() - measuredWidth) / 2;
                        if (width < i11) {
                            i19 = 3;
                        } else if (width + measuredWidth > i9) {
                            i19 = 5;
                        }
                        i12 = i19;
                    } else {
                        i12 = i14 == -1 ? 3 : i19;
                    }
                    switch (i12) {
                        case 1:
                            i13 = (getWidth() - measuredWidth) / 2;
                            break;
                        case 2:
                        case 4:
                        default:
                            i13 = 0;
                            break;
                        case 3:
                            i13 = i11;
                            break;
                        case 5:
                            i13 = i9 - measuredWidth;
                            break;
                    }
                    int i20 = i14 & 112;
                    if (i14 == -1) {
                        i20 = 16;
                    }
                    int i21 = 0;
                    switch (i20) {
                        case 16:
                            i21 = (((getHeight() - getPaddingBottom()) - getPaddingTop()) - view.getMeasuredHeight()) / 2;
                            break;
                        case C3298m.f3076fF /* 48 */:
                            i21 = getPaddingTop() + i8;
                            break;
                        case 80:
                            i21 = ((getHeight() - getPaddingBottom()) - view.getMeasuredHeight()) - i10;
                            break;
                    }
                    int measuredWidth2 = view.getMeasuredWidth();
                    view.layout(i13, i21, i13 + measuredWidth2, view.getMeasuredHeight() + i21);
                    int i22 = i11 + measuredWidth2;
                }
                if (this.mProgressView == null) {
                    this.mProgressView.bringToFront();
                    int measuredHeight = this.mProgressView.getMeasuredHeight() / 2;
                    this.mProgressView.layout(this.mProgressBarPadding, -measuredHeight, this.mProgressBarPadding + this.mProgressView.getMeasuredWidth(), measuredHeight);
                    return;
                }
                return;
            }
            i6 = i5;
            paddingRight = (i3 - i) - getPaddingRight();
            if (this.mMenuView != null) {
                positionChildInverse(this.mMenuView, paddingRight, paddingTop, paddingTop2);
                paddingRight -= this.mMenuView.getMeasuredWidth();
            }
            if (this.mIndeterminateProgressView != null) {
            }
            i7 = paddingRight;
            if (this.mExpandedActionView == null) {
            }
            if (view != null) {
            }
            if (this.mProgressView == null) {
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBar.LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        return layoutParams;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.mCurrentExpandedItem != null) {
            savedState.expandedMenuItemId = this.mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SupportMenuItem supportMenuItem;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.expandedMenuItemId != 0 && this.mExpandedMenuPresenter != null && this.mOptionsMenu != null && (supportMenuItem = (SupportMenuItem) this.mOptionsMenu.findItem(savedState.expandedMenuItemId)) != null) {
            supportMenuItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            postShowOverflowMenu();
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        this.mHomeLayout.setUpIndicator(drawable);
    }

    public void setHomeAsUpIndicator(int i) {
        this.mHomeLayout.setUpIndicator(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.internal.widget.ActionBarView$SavedState */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.internal.widget.ActionBarView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int expandedMenuItemId;
        boolean isOverflowOpen;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.internal.widget.ActionBarView$HomeView */
    /* loaded from: classes.dex */
    public static class HomeView extends FrameLayout {
        private Drawable mDefaultUpIndicator;
        private ImageView mIconView;
        private int mUpIndicatorRes;
        private ImageView mUpView;
        private int mUpWidth;

        public HomeView(Context context) {
            this(context, null);
        }

        public HomeView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void setUp(boolean z) {
            this.mUpView.setVisibility(z ? 0 : 8);
        }

        public void setIcon(Drawable drawable) {
            this.mIconView.setImageDrawable(drawable);
        }

        public void setUpIndicator(Drawable drawable) {
            ImageView imageView = this.mUpView;
            if (drawable == null) {
                drawable = this.mDefaultUpIndicator;
            }
            imageView.setImageDrawable(drawable);
            this.mUpIndicatorRes = 0;
        }

        public void setUpIndicator(int i) {
            this.mUpIndicatorRes = i;
            this.mUpView.setImageDrawable(i != 0 ? getResources().getDrawable(i) : null);
        }

        @Override // android.view.View
        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            if (this.mUpIndicatorRes != 0) {
                setUpIndicator(this.mUpIndicatorRes);
            }
        }

        @Override // android.view.View
        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            CharSequence contentDescription = getContentDescription();
            if (!TextUtils.isEmpty(contentDescription)) {
                accessibilityEvent.getText().add(contentDescription);
                return true;
            }
            return true;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            this.mUpView = (ImageView) findViewById(C0189R.C0191id.up);
            this.mIconView = (ImageView) findViewById(C0189R.C0191id.home);
            this.mDefaultUpIndicator = this.mUpView.getDrawable();
        }

        public int getLeftOffset() {
            if (this.mUpView.getVisibility() == 8) {
                return this.mUpWidth;
            }
            return 0;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            measureChildWithMargins(this.mUpView, i, 0, i2, 0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mUpView.getLayoutParams();
            this.mUpWidth = layoutParams.leftMargin + this.mUpView.getMeasuredWidth() + layoutParams.rightMargin;
            int i3 = this.mUpView.getVisibility() == 8 ? 0 : this.mUpWidth;
            int measuredHeight = layoutParams.topMargin + this.mUpView.getMeasuredHeight() + layoutParams.bottomMargin;
            measureChildWithMargins(this.mIconView, i, i3, i2, 0);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mIconView.getLayoutParams();
            int measuredWidth = i3 + layoutParams2.leftMargin + this.mIconView.getMeasuredWidth() + layoutParams2.rightMargin;
            int max = Math.max(measuredHeight, layoutParams2.bottomMargin + layoutParams2.topMargin + this.mIconView.getMeasuredHeight());
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            switch (mode) {
                case Integer.MIN_VALUE:
                    size = Math.min(measuredWidth, size);
                    break;
                case 1073741824:
                    break;
                default:
                    size = measuredWidth;
                    break;
            }
            switch (mode2) {
                case Integer.MIN_VALUE:
                    size2 = Math.min(max, size2);
                    break;
                case 1073741824:
                    break;
                default:
                    size2 = max;
                    break;
            }
            setMeasuredDimension(size, size2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = 0;
            int i6 = (i4 - i2) / 2;
            int i7 = i3 - i;
            if (this.mUpView.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mUpView.getLayoutParams();
                int measuredHeight = this.mUpView.getMeasuredHeight();
                int measuredWidth = this.mUpView.getMeasuredWidth();
                int i8 = i6 - (measuredHeight / 2);
                this.mUpView.layout(0, i8, measuredWidth, measuredHeight + i8);
                int i9 = layoutParams.rightMargin + layoutParams.leftMargin + measuredWidth;
                int i10 = i7 - i9;
                i += i9;
                i5 = i9;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mIconView.getLayoutParams();
            int measuredHeight2 = this.mIconView.getMeasuredHeight();
            int measuredWidth2 = this.mIconView.getMeasuredWidth();
            int max = i5 + Math.max(layoutParams2.leftMargin, ((i3 - i) / 2) - (measuredWidth2 / 2));
            int max2 = Math.max(layoutParams2.topMargin, i6 - (measuredHeight2 / 2));
            this.mIconView.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.internal.widget.ActionBarView$ExpandedActionViewMenuPresenter */
    /* loaded from: classes.dex */
    public class ExpandedActionViewMenuPresenter implements MenuPresenter {
        MenuItemImpl mCurrentExpandedItem;
        MenuBuilder mMenu;

        private ExpandedActionViewMenuPresenter() {
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            if (this.mMenu != null && this.mCurrentExpandedItem != null) {
                this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
            }
            this.mMenu = menuBuilder;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public void updateMenuView(boolean z) {
            boolean z2;
            if (this.mCurrentExpandedItem != null) {
                if (this.mMenu != null) {
                    int size = this.mMenu.size();
                    for (int i = 0; i < size; i++) {
                        if (((SupportMenuItem) this.mMenu.getItem(i)) == this.mCurrentExpandedItem) {
                            z2 = true;
                            break;
                        }
                    }
                }
                z2 = false;
                if (!z2) {
                    collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
                }
            }
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public void setCallback(MenuPresenter.Callback callback) {
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public boolean flagActionItems() {
            return false;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            ActionBarView.this.mExpandedActionView = menuItemImpl.getActionView();
            ActionBarView.this.mExpandedHomeLayout.setIcon(ActionBarView.this.mIcon.getConstantState().newDrawable(ActionBarView.this.getResources()));
            this.mCurrentExpandedItem = menuItemImpl;
            if (ActionBarView.this.mExpandedActionView.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.mExpandedActionView);
            }
            if (ActionBarView.this.mExpandedHomeLayout.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.mExpandedHomeLayout);
            }
            ActionBarView.this.mHomeLayout.setVisibility(8);
            if (ActionBarView.this.mTitleLayout != null) {
                ActionBarView.this.mTitleLayout.setVisibility(8);
            }
            if (ActionBarView.this.mTabScrollView != null) {
                ActionBarView.this.mTabScrollView.setVisibility(8);
            }
            if (ActionBarView.this.mSpinner != null) {
                ActionBarView.this.mSpinner.setVisibility(8);
            }
            if (ActionBarView.this.mCustomNavView != null) {
                ActionBarView.this.mCustomNavView.setVisibility(8);
            }
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (ActionBarView.this.mExpandedActionView instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.mExpandedActionView).onActionViewExpanded();
            }
            return true;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (ActionBarView.this.mExpandedActionView instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.mExpandedActionView).onActionViewCollapsed();
            }
            ActionBarView.this.removeView(ActionBarView.this.mExpandedActionView);
            ActionBarView.this.removeView(ActionBarView.this.mExpandedHomeLayout);
            ActionBarView.this.mExpandedActionView = null;
            if ((ActionBarView.this.mDisplayOptions & 2) != 0) {
                ActionBarView.this.mHomeLayout.setVisibility(0);
            }
            if ((ActionBarView.this.mDisplayOptions & 8) != 0) {
                if (ActionBarView.this.mTitleLayout == null) {
                    ActionBarView.this.initTitle();
                } else {
                    ActionBarView.this.mTitleLayout.setVisibility(0);
                }
            }
            if (ActionBarView.this.mTabScrollView != null && ActionBarView.this.mNavigationMode == 2) {
                ActionBarView.this.mTabScrollView.setVisibility(0);
            }
            if (ActionBarView.this.mSpinner != null && ActionBarView.this.mNavigationMode == 1) {
                ActionBarView.this.mSpinner.setVisibility(0);
            }
            if (ActionBarView.this.mCustomNavView != null && (ActionBarView.this.mDisplayOptions & 16) != 0) {
                ActionBarView.this.mCustomNavView.setVisibility(0);
            }
            ActionBarView.this.mExpandedHomeLayout.setIcon(null);
            this.mCurrentExpandedItem = null;
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // android.support.p007v7.internal.view.menu.MenuPresenter
        public void onRestoreInstanceState(Parcelable parcelable) {
        }
    }
}
