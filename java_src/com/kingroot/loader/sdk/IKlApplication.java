package com.kingroot.loader.sdk;
/* loaded from: classes.dex */
public interface IKlApplication {
    void attachKlContext(KlContext klContext, boolean z);

    KlContext getKlContext();

    Class<? extends KlFragment> getMainKlFragmentClass();

    boolean isRunning();

    void onDestroy();

    void onUninstall();
}
