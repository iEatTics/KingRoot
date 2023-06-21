package com.kingroot.kinguser;

import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.loader.host.KlNotifyActivity;
import com.kingroot.loader.sdk.service.IKlNotificationManager;
/* loaded from: classes.dex */
public class bjx implements IKlNotificationManager {
    @Override // com.kingroot.loader.sdk.service.IKlNotificationManager
    public Intent wrapKlFragmentIntent(int i, @NonNull Intent intent, int i2) {
        return KlNotifyActivity.m1222a(i, intent, i2);
    }
}
