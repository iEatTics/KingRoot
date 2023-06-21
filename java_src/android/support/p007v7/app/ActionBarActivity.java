package android.support.p007v7.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.p004v4.app.ActionBarDrawerToggle;
import android.support.p004v4.app.ActivityCompat;
import android.support.p004v4.app.FragmentActivity;
import android.support.p004v4.app.NavUtils;
import android.support.p004v4.app.TaskStackBuilder;
import android.support.p007v7.app.ActionBar;
import android.support.p007v7.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: android.support.v7.app.ActionBarActivity */
/* loaded from: classes.dex */
public class ActionBarActivity extends FragmentActivity implements ActionBarDrawerToggle.DelegateProvider, TaskStackBuilder.SupportParentable, ActionBar.Callback {
    ActionBarActivityDelegate mImpl;

    public ActionBar getSupportActionBar() {
        return this.mImpl.getSupportActionBar();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return this.mImpl.getMenuInflater();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        this.mImpl.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        this.mImpl.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mImpl.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mImpl.addContentView(view, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.support.p004v4.app.BaseFragmentActivityDonut, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mImpl = ActionBarActivityDelegate.createDelegate(this);
        super.onCreate(bundle);
        this.mImpl.onCreate(bundle);
    }

    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mImpl.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.mImpl.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.mImpl.onPostResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public View onCreatePanelView(int i) {
        return i == 0 ? this.mImpl.onCreatePanelView(i) : super.onCreatePanelView(i);
    }

    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (this.mImpl.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() == 16908332 && supportActionBar != null && (supportActionBar.getDisplayOptions() & 4) != 0) {
            return onSupportNavigateUp();
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        this.mImpl.onTitleChanged(charSequence);
    }

    public boolean supportRequestWindowFeature(int i) {
        return this.mImpl.supportRequestWindowFeature(i);
    }

    @Override // android.support.p004v4.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        if (Build.VERSION.SDK_INT >= 14) {
            super.supportInvalidateOptionsMenu();
        }
        this.mImpl.supportInvalidateOptionsMenu();
    }

    public void onSupportActionModeStarted(ActionMode actionMode) {
    }

    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    public ActionMode startSupportActionMode(ActionMode.Callback callback) {
        return this.mImpl.startSupportActionMode(callback);
    }

    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.mImpl.onCreatePanelMenu(i, menu);
    }

    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.mImpl.onPreparePanel(i, view, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return this.mImpl.onPrepareOptionsPanel(view, menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void superSetContentView(int i) {
        super.setContentView(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void superSetContentView(View view) {
        super.setContentView(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void superSetContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void superAddContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addContentView(view, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean superOnCreatePanelMenu(int i, Menu menu) {
        return super.onCreatePanelMenu(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean superOnPreparePanel(int i, View view, Menu menu) {
        return super.onPreparePanel(i, view, menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean superOnPrepareOptionsPanel(View view, Menu menu) {
        return super.onPrepareOptionsPanel(view, menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean superOnMenuItemSelected(int i, MenuItem menuItem) {
        return super.onMenuItemSelected(i, menuItem);
    }

    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.mImpl.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void setSupportProgressBarVisibility(boolean z) {
        this.mImpl.setSupportProgressBarVisibility(z);
    }

    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
        this.mImpl.setSupportProgressBarIndeterminateVisibility(z);
    }

    public void setSupportProgressBarIndeterminate(boolean z) {
        this.mImpl.setSupportProgressBarIndeterminate(z);
    }

    public void setSupportProgress(int i) {
        this.mImpl.setSupportProgress(i);
    }

    public void onCreateSupportNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
        taskStackBuilder.addParentStack(this);
    }

    public void onPrepareSupportNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent != null) {
            if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
                TaskStackBuilder create = TaskStackBuilder.create(this);
                onCreateSupportNavigateUpTaskStack(create);
                onPrepareSupportNavigateUpTaskStack(create);
                create.startActivities();
                try {
                    ActivityCompat.finishAffinity(this);
                } catch (IllegalStateException e) {
                    finish();
                }
            } else {
                supportNavigateUpTo(supportParentActivityIntent);
            }
            return true;
        }
        return false;
    }

    @Override // android.support.p004v4.app.TaskStackBuilder.SupportParentable
    public Intent getSupportParentActivityIntent() {
        return NavUtils.getParentActivityIntent(this);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return NavUtils.shouldUpRecreateTask(this, intent);
    }

    public void supportNavigateUpTo(Intent intent) {
        NavUtils.navigateUpTo(this, intent);
    }

    @Override // android.support.p004v4.app.ActionBarDrawerToggle.DelegateProvider
    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return this.mImpl.getDrawerToggleDelegate();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
        this.mImpl.onContentChanged();
    }

    public void onSupportContentChanged() {
    }
}
