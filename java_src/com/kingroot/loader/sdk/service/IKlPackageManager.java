package com.kingroot.loader.sdk.service;

import android.support.annotation.NonNull;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.KlPackage;
import java.util.List;
/* loaded from: classes.dex */
public interface IKlPackageManager {
    @NonNull
    List<KlInfo> getInstalledKlInfos();

    KlPackage getInstalledKlPackage(int i);

    int installPlugin(String str);

    int installPlugin(String str, KlInfo klInfo, boolean z);

    void markPluginRunning(int i, int i2);

    void postRestartUpdate(String str, IKlPostRestartUpdateObserver iKlPostRestartUpdateObserver);

    boolean setEnabledSetting(int i, boolean z);

    void uninstallPlugin(int i);
}
