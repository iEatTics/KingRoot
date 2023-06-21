package android.support.p007v7.app;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.app.ActionBarActivityDelegateHC */
/* loaded from: classes.dex */
public class ActionBarActivityDelegateHC extends ActionBarActivityDelegateBase {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionBarActivityDelegateHC(ActionBarActivity actionBarActivity) {
        super(actionBarActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.p007v7.app.ActionBarActivityDelegate
    public void onCreate(Bundle bundle) {
        this.mActivity.getWindow().requestFeature(10);
        super.onCreate(bundle);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegateBase, android.support.p007v7.app.ActionBarActivityDelegate
    public ActionBar createSupportActionBar() {
        ensureSubDecor();
        return new ActionBarImplHC(this.mActivity, this.mActivity);
    }
}
