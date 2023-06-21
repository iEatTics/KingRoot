package com.kingroot.loader.sdk.service;

import android.content.Intent;
/* loaded from: classes.dex */
public interface IKlFragmentManager {
    public static final int FLAG_NO_NEW_STACK_IF_POSSIBLE = 1;

    void startKlFragment(int i, Intent intent, int i2);

    void startMainFragment(int i, int i2);
}
