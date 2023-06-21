package android.support.p007v7.app;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.app.ActionBarActivityDelegateJB */
/* loaded from: classes.dex */
public class ActionBarActivityDelegateJB extends ActionBarActivityDelegateICS {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionBarActivityDelegateJB(ActionBarActivity actionBarActivity) {
        super(actionBarActivity);
    }

    @Override // android.support.p007v7.app.ActionBarActivityDelegateICS, android.support.p007v7.app.ActionBarActivityDelegate
    public ActionBar createSupportActionBar() {
        return new ActionBarImplJB(this.mActivity, this.mActivity);
    }
}
