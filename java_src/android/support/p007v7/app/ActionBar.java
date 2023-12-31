package android.support.p007v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.p004v4.app.FragmentManager;
import android.support.p004v4.app.FragmentTransaction;
import android.support.p007v7.appcompat.C0189R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
/* renamed from: android.support.v7.app.ActionBar */
/* loaded from: classes.dex */
public abstract class ActionBar {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_USE_LOGO = 1;
    public static final int NAVIGATION_MODE_LIST = 1;
    public static final int NAVIGATION_MODE_STANDARD = 0;
    public static final int NAVIGATION_MODE_TABS = 2;

    /* renamed from: android.support.v7.app.ActionBar$Callback */
    /* loaded from: classes.dex */
    interface Callback {
        FragmentManager getSupportFragmentManager();
    }

    /* renamed from: android.support.v7.app.ActionBar$OnMenuVisibilityListener */
    /* loaded from: classes.dex */
    public interface OnMenuVisibilityListener {
        void onMenuVisibilityChanged(boolean z);
    }

    /* renamed from: android.support.v7.app.ActionBar$OnNavigationListener */
    /* loaded from: classes.dex */
    public interface OnNavigationListener {
        boolean onNavigationItemSelected(int i, long j);
    }

    /* renamed from: android.support.v7.app.ActionBar$Tab */
    /* loaded from: classes.dex */
    public static abstract class Tab {
        public static final int INVALID_POSITION = -1;

        public abstract CharSequence getContentDescription();

        public abstract View getCustomView();

        public abstract Drawable getIcon();

        public abstract int getPosition();

        public abstract Object getTag();

        public abstract CharSequence getText();

        public abstract void select();

        public abstract Tab setContentDescription(int i);

        public abstract Tab setContentDescription(CharSequence charSequence);

        public abstract Tab setCustomView(int i);

        public abstract Tab setCustomView(View view);

        public abstract Tab setIcon(int i);

        public abstract Tab setIcon(Drawable drawable);

        public abstract Tab setTabListener(TabListener tabListener);

        public abstract Tab setTag(Object obj);

        public abstract Tab setText(int i);

        public abstract Tab setText(CharSequence charSequence);
    }

    /* renamed from: android.support.v7.app.ActionBar$TabListener */
    /* loaded from: classes.dex */
    public interface TabListener {
        void onTabReselected(Tab tab, FragmentTransaction fragmentTransaction);

        void onTabSelected(Tab tab, FragmentTransaction fragmentTransaction);

        void onTabUnselected(Tab tab, FragmentTransaction fragmentTransaction);
    }

    public abstract void addOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener);

    public abstract void addTab(Tab tab);

    public abstract void addTab(Tab tab, int i);

    public abstract void addTab(Tab tab, int i, boolean z);

    public abstract void addTab(Tab tab, boolean z);

    public abstract View getCustomView();

    public abstract int getDisplayOptions();

    public abstract int getHeight();

    public abstract int getNavigationItemCount();

    public abstract int getNavigationMode();

    public abstract int getSelectedNavigationIndex();

    public abstract Tab getSelectedTab();

    public abstract CharSequence getSubtitle();

    public abstract Tab getTabAt(int i);

    public abstract int getTabCount();

    public abstract CharSequence getTitle();

    public abstract void hide();

    public abstract boolean isShowing();

    public abstract Tab newTab();

    public abstract void removeAllTabs();

    public abstract void removeOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener);

    public abstract void removeTab(Tab tab);

    public abstract void removeTabAt(int i);

    public abstract void selectTab(Tab tab);

    public abstract void setBackgroundDrawable(Drawable drawable);

    public abstract void setCustomView(int i);

    public abstract void setCustomView(View view);

    public abstract void setCustomView(View view, LayoutParams layoutParams);

    public abstract void setDisplayHomeAsUpEnabled(boolean z);

    public abstract void setDisplayOptions(int i);

    public abstract void setDisplayOptions(int i, int i2);

    public abstract void setDisplayShowCustomEnabled(boolean z);

    public abstract void setDisplayShowHomeEnabled(boolean z);

    public abstract void setDisplayShowTitleEnabled(boolean z);

    public abstract void setDisplayUseLogoEnabled(boolean z);

    public abstract void setIcon(int i);

    public abstract void setIcon(Drawable drawable);

    public abstract void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, OnNavigationListener onNavigationListener);

    public abstract void setLogo(int i);

    public abstract void setLogo(Drawable drawable);

    public abstract void setNavigationMode(int i);

    public abstract void setSelectedNavigationItem(int i);

    public abstract void setSubtitle(int i);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setTitle(int i);

    public abstract void setTitle(CharSequence charSequence);

    public abstract void show();

    public void setStackedBackgroundDrawable(Drawable drawable) {
    }

    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    public void setHomeButtonEnabled(boolean z) {
    }

    public Context getThemedContext() {
        return null;
    }

    /* renamed from: android.support.v7.app.ActionBar$LayoutParams */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0189R.styleable.ActionBarLayout);
            this.gravity = obtainStyledAttributes.getInt(0, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.gravity = 19;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.gravity = -1;
            this.gravity = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }
    }
}
