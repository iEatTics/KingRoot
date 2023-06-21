package com.kingroot.loader.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import com.kingroot.kinguser.bkt;
import com.kingroot.kinguser.bku;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.service.IKlFragmentManager;
import java.io.File;
/* loaded from: classes.dex */
public class KlContext extends ContextWrapper {
    private Context mApplicationContext;
    private ClassLoader mClassLoader;
    private KlPackage mKlPackage;
    private LayoutInflater mLayoutInflater;
    private final Object mLayoutInflaterLock;
    private Bundle mMetaData;
    private Resources mResource;
    private Resources.Theme mTheme;
    private int mThemeResource;

    public KlContext(ClassLoader classLoader, Context context, KlPackage klPackage) {
        super(context);
        this.mLayoutInflaterLock = new Object();
        this.mThemeResource = 0;
        this.mApplicationContext = context;
        this.mKlPackage = klPackage;
        this.mClassLoader = classLoader;
        this.mMetaData = new Bundle();
        if (context.getResources() == null) {
            throw new RuntimeException("Get resources from application context fail!");
        }
        this.mResource = bkt.m6533C(context, klPackage.getPluginSourcePath());
        if (this.mResource == null) {
            throw new RuntimeException("Get resources from plugin fail!");
        }
    }

    public KlPackage getPackage() {
        return this.mKlPackage;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.mResource;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.mResource.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return this.mClassLoader;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        File file = new File(this.mKlPackage.getPluginBaseDataPath() + File.separator + KlConst.PLUGIN_FILES_DIR_NAME);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        return this.mKlPackage.klInfo.packageName;
    }

    public String getHostPackageName() {
        return this.mApplicationContext.getPackageName();
    }

    public void startKlFragment(Intent intent, int i) {
        ((IKlFragmentManager) KlServiceManager.getKService(IKlFragmentManager.class)).startKlFragment(getPluginId(), intent, i);
    }

    public int getPluginId() {
        return this.mKlPackage.klInfo.pluginId;
    }

    public int getPluginVersionCode() {
        return this.mKlPackage.klInfo.versionCode;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        if (this.mKlPackage != null) {
            str = this.mKlPackage.getPackageName() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + str;
        }
        return super.getSharedPreferences(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(9)
    public File getDir(String str, int i) {
        File file = new File(this.mKlPackage.getPluginBaseDataPath() + File.separator + str);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdirs();
        }
        switch (i) {
            case 1:
                if (bku.m6529qb() > 8) {
                    file.setReadable(true, false);
                    break;
                }
                break;
            case 2:
                if (bku.m6529qb() > 8) {
                    file.setWritable(true, false);
                    break;
                }
                break;
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        File file = new File(this.mKlPackage.getPluginBaseDataPath() + File.separator + KlConst.PLUGIN_CACHE_DIR_NAME);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this.mApplicationContext.getApplicationContext();
    }

    public Context getLoaderApplicationContext() {
        return this.mApplicationContext.getApplicationContext();
    }

    public LayoutInflater getLayoutInflater() {
        if (this.mLayoutInflater == null) {
            synchronized (this.mLayoutInflaterLock) {
                if (this.mLayoutInflater == null) {
                    this.mLayoutInflater = LayoutInflater.from(this.mApplicationContext).cloneInContext(this);
                }
            }
        }
        return this.mLayoutInflater;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(@NonNull String str) {
        return "layout_inflater".equals(str) ? getLayoutInflater() : this.mApplicationContext.getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(9)
    public ApplicationInfo getApplicationInfo() {
        ApplicationInfo applicationInfo = super.getApplicationInfo();
        if (applicationInfo != null) {
            ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
            applicationInfo2.dataDir = this.mKlPackage.getPluginBaseDataPath();
            applicationInfo2.sourceDir = this.mKlPackage.getPluginSourcePath();
            if (bku.m6529qb() > 8) {
                applicationInfo2.nativeLibraryDir = this.mKlPackage.getPluginLibPath();
            }
            applicationInfo2.publicSourceDir = this.mKlPackage.getPluginSourcePath();
            applicationInfo2.metaData = this.mMetaData;
            return applicationInfo2;
        }
        return applicationInfo;
    }

    protected void putMetaData(Bundle bundle) {
        if (bundle != null) {
            this.mMetaData.putAll(bundle);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        this.mThemeResource = i;
        initializeTheme();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        if (this.mTheme != null) {
            return this.mTheme;
        }
        this.mThemeResource = bkt.m6532an(this.mThemeResource, getApplicationInfo().targetSdkVersion);
        initializeTheme();
        return this.mTheme;
    }

    protected void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    private void initializeTheme() {
        boolean z = this.mTheme == null;
        if (z) {
            this.mTheme = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.mTheme.setTo(theme);
            }
        }
        onApplyThemeResource(this.mTheme, this.mThemeResource, z);
    }
}
