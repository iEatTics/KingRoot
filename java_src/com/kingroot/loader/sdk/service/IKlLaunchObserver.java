package com.kingroot.loader.sdk.service;
/* loaded from: classes.dex */
public interface IKlLaunchObserver {
    void onPluginLaunchException(int i, Throwable th);

    void onPluginLaunched(int i, int i2);

    void onPluginLoaded(int i, int i2);
}
