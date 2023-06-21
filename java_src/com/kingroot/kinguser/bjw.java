package com.kingroot.kinguser;

import android.content.Intent;
import com.kingroot.loader.host.KlNotifyActivity;
import com.kingroot.loader.sdk.service.IKlFragmentManager;
/* loaded from: classes.dex */
public class bjw implements IKlFragmentManager {
    @Override // com.kingroot.loader.sdk.service.IKlFragmentManager
    public void startKlFragment(int i, Intent intent, int i2) {
        KlNotifyActivity.m1221b(i, intent, i2);
    }

    @Override // com.kingroot.loader.sdk.service.IKlFragmentManager
    public void startMainFragment(int i, int i2) {
        KlNotifyActivity.m1221b(i, new Intent("android.intent.action.MAIN"), i2);
    }
}
