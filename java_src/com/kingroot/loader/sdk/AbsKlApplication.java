package com.kingroot.loader.sdk;

import android.app.Application;
import android.content.ContentProvider;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class AbsKlApplication extends Application implements IKlApplication, IKlPluginDelegate {
    private boolean mIsRunning = false;
    private final Object mRunningReadWriteLock = new Object();
    private final AtomicBoolean mCoreProcess = new AtomicBoolean(false);
    private final HashMap<String, Class<? extends ContentProvider>> mRegisteredProviderInfo = new HashMap<>();
    private final HashMap<String, ContentProvider> mProviderCache = new HashMap<>();
    private final HashMap<String, Integer> mRegisteredFragmentLaunchModes = new HashMap<>();

    @Override // com.kingroot.loader.sdk.IKlPluginDelegate
    public abstract Bundle onHostCall(Bundle bundle);

    @Override // com.kingroot.loader.sdk.IKlApplication
    public final void attachKlContext(KlContext klContext, boolean z) {
        this.mCoreProcess.set(z);
        int applicationTheme = getApplicationTheme();
        if (applicationTheme != 0) {
            klContext.setTheme(applicationTheme);
        }
        attachBaseContext(klContext);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        synchronized (this.mRunningReadWriteLock) {
            this.mIsRunning = true;
        }
    }

    @Override // com.kingroot.loader.sdk.IKlApplication
    public final KlContext getKlContext() {
        return (KlContext) getBaseContext();
    }

    @Override // com.kingroot.loader.sdk.IKlApplication
    public void onDestroy() {
        synchronized (this.mRunningReadWriteLock) {
            this.mIsRunning = false;
        }
    }

    @Override // com.kingroot.loader.sdk.IKlApplication
    public void onUninstall() {
    }

    @Override // com.kingroot.loader.sdk.IKlApplication
    public final boolean isRunning() {
        boolean z;
        synchronized (this.mRunningReadWriteLock) {
            z = this.mIsRunning;
        }
        return z;
    }

    public int getApplicationTheme() {
        return 0;
    }

    protected boolean isCoreProcess() {
        return this.mCoreProcess.get();
    }

    @Override // com.kingroot.loader.sdk.IKlApplication
    public Class<? extends KlFragment> getMainKlFragmentClass() {
        return null;
    }

    public final ContentProvider getContentProvider(String str) {
        synchronized (this.mProviderCache) {
            ContentProvider contentProvider = this.mProviderCache.get(str);
            if (contentProvider == null) {
                Class<? extends ContentProvider> cls = this.mRegisteredProviderInfo.get(str);
                if (cls == null) {
                    return null;
                }
                ContentProvider newInstance = cls.newInstance();
                this.mProviderCache.put(str, newInstance);
                newInstance.onCreate();
                return newInstance;
            }
            return contentProvider;
        }
    }

    public final int getLaunchMode(String str) {
        Integer num = this.mRegisteredFragmentLaunchModes.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    protected final void registerProvider(String str, Class<? extends ContentProvider> cls) {
        if (!TextUtils.isEmpty(str) && cls != null) {
            this.mRegisteredProviderInfo.put(str, cls);
        }
    }

    protected final void registerFragmentLaunchMode(Class<? extends KlFragment> cls, int i) {
        if (cls != null) {
            this.mRegisteredFragmentLaunchModes.put(cls.getName(), Integer.valueOf(i));
        }
    }
}
