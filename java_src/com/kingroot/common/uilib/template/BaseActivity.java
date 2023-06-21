package com.kingroot.common.uilib.template;

import com.kingroot.common.framework.main.MainExitReceiver;
/* loaded from: classes.dex */
public abstract class BaseActivity extends AbsActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MainExitReceiver.m13404jF();
    }
}
