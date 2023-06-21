package com.kingroot.kinguser.ztool.autostartmgr;

import android.os.Bundle;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.bjd;
/* loaded from: classes.dex */
public class AutoStartMgrActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.BaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onRestart() {
        super.onRestart();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new bjd(this);
    }
}
