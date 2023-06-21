package com.kingroot.loader.sdk.service;

import com.kingroot.loader.sdk.AbsKlApplication;
/* loaded from: classes.dex */
public interface IKlApplicationManager {
    AbsKlApplication getPluginApplication(int i);

    AbsKlApplication getRunningPluginApplication(int i);

    boolean launchPlugin(int i);

    void setLaunchObserver(IKlLaunchObserver iKlLaunchObserver);

    void stopPlugin(int i, boolean z);
}
