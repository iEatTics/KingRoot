package android.support.p007v7.app;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.support.p004v4.app.ActionBarDrawerToggle;
import android.support.p004v4.app.NavUtils;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.view.SupportMenuInflater;
import android.support.p007v7.view.ActionMode;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: android.support.v7.app.ActionBarActivityDelegate */
/* loaded from: classes.dex */
abstract class ActionBarActivityDelegate {
    static final String METADATA_UI_OPTIONS = "android.support.UI_OPTIONS";
    private static final String TAG = "ActionBarActivityDelegate";
    static final String UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW = "splitActionBarWhenNarrow";
    private ActionBar mActionBar;
    final ActionBarActivity mActivity;
    private boolean mEnableDefaultActionBarUp;
    boolean mHasActionBar;
    private MenuInflater mMenuInflater;
    boolean mOverlayActionBar;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    abstract ActionBar createSupportActionBar();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean onBackPressed();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onConfigurationChanged(Configuration configuration);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onContentChanged();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean onCreatePanelMenu(int i, Menu menu);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract View onCreatePanelView(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean onMenuItemSelected(int i, MenuItem menuItem);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onPostResume();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean onPreparePanel(int i, View view, Menu menu);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onStop();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onTitleChanged(CharSequence charSequence);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setContentView(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setContentView(View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setSupportProgress(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setSupportProgressBarIndeterminate(boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setSupportProgressBarIndeterminateVisibility(boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setSupportProgressBarVisibility(boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ActionMode startSupportActionMode(ActionMode.Callback callback);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void supportInvalidateOptionsMenu();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean supportRequestWindowFeature(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ActionBarActivityDelegate createDelegate(ActionBarActivity actionBarActivity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            return new ActionBarActivityDelegateJB(actionBarActivity);
        }
        if (i >= 14) {
            return new ActionBarActivityDelegateICS(actionBarActivity);
        }
        if (i >= 11) {
            return new ActionBarActivityDelegateHC(actionBarActivity);
        }
        return new ActionBarActivityDelegateBase(actionBarActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionBarActivityDelegate(ActionBarActivity actionBarActivity) {
        this.mActivity = actionBarActivity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ActionBar getSupportActionBar() {
        if (this.mHasActionBar || this.mOverlayActionBar) {
            if (this.mActionBar == null) {
                this.mActionBar = createSupportActionBar();
                if (this.mEnableDefaultActionBarUp) {
                    this.mActionBar.setDisplayHomeAsUpEnabled(true);
                }
            }
        } else {
            this.mActionBar = null;
        }
        return this.mActionBar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                this.mMenuInflater = new SupportMenuInflater(supportActionBar.getThemedContext());
            } else {
                this.mMenuInflater = new SupportMenuInflater(this.mActivity);
            }
        }
        return this.mMenuInflater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onCreate(Bundle bundle) {
        TypedArray obtainStyledAttributes = this.mActivity.obtainStyledAttributes(C0189R.styleable.ActionBarWindow);
        if (!obtainStyledAttributes.hasValue(0)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        this.mHasActionBar = obtainStyledAttributes.getBoolean(0, false);
        this.mOverlayActionBar = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (NavUtils.getParentActivityName(this.mActivity) != null) {
            if (this.mActionBar == null) {
                this.mEnableDefaultActionBarUp = true;
            } else {
                this.mActionBar.setDisplayHomeAsUpEnabled(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return Build.VERSION.SDK_INT < 16 ? this.mActivity.onPrepareOptionsMenu(menu) : this.mActivity.superOnPrepareOptionsPanel(view, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String getUiOptionsFromMetadata() {
        try {
            ActivityInfo activityInfo = this.mActivity.getPackageManager().getActivityInfo(this.mActivity.getComponentName(), 128);
            if (activityInfo.metaData != null) {
                return activityInfo.metaData.getString(METADATA_UI_OPTIONS);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "getUiOptionsFromMetadata: Activity '" + this.mActivity.getClass().getSimpleName() + "' not in manifest");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Context getActionBarThemedContext() {
        ActionBarActivity actionBarActivity = this.mActivity;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            return supportActionBar.getThemedContext();
        }
        return actionBarActivity;
    }
}
