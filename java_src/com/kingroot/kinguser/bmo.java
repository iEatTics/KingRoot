package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Looper;
import android.util.Log;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* loaded from: classes.dex */
public final class bmo extends ContextWrapper {
    private Context bCd;
    private Resources bCe;
    private String bCf;

    public bmo(Context context, String str, String str2) {
        super(context);
        this.bCd = context;
        this.bCe = bmu.m6348H(context, str);
        this.bCf = str2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return this.bCe.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        return this.bCe;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ContentResolver getContentResolver() {
        return this.bCd.getContentResolver();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Looper getMainLooper() {
        return this.bCd.getMainLooper();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper
    public final Context getBaseContext() {
        return this.bCd;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        this.bCd.setTheme(i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        return this.bCd.getTheme();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ClassLoader getClassLoader() {
        return this.bCd.getClassLoader();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageName() {
        String packageName = this.bCd.getPackageName();
        if (packageName == null) {
            Log.d("", "mBase.getPackageName() is NULL.");
        }
        return packageName;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ApplicationInfo getApplicationInfo() {
        return this.bCd.getApplicationInfo();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageResourcePath() {
        return this.bCd.getPackageResourcePath();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageCodePath() {
        return this.bCd.getPackageCodePath();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final SharedPreferences getSharedPreferences(String str, int i) {
        return this.bCd.getSharedPreferences(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final FileInputStream openFileInput(String str) {
        return this.bCd.openFileInput(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final FileOutputStream openFileOutput(String str, int i) {
        return this.bCd.openFileOutput(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final boolean deleteFile(String str) {
        return this.bCd.deleteFile(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getFileStreamPath(String str) {
        return this.bCd.getFileStreamPath(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getFilesDir() {
        File file = new File(this.bCf + File.separator + KlConst.PLUGIN_FILES_DIR_NAME);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getExternalFilesDir(String str) {
        return this.bCd.getExternalFilesDir(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File[] getExternalFilesDirs(String str) {
        return this.bCd.getExternalFilesDirs(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getObbDir() {
        return this.bCd.getObbDir();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File[] getObbDirs() {
        return this.bCd.getObbDirs();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getCacheDir() {
        File file = new File(this.bCf + File.separator + KlConst.PLUGIN_CACHE_DIR_NAME);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @SuppressLint({"NewApi"})
    public final File getDir(String str, int i) {
        File file = new File(this.bCf + File.separator + str);
        if (!file.exists() || file.isFile()) {
            file.delete();
            file.mkdirs();
        }
        switch (i) {
            case 1:
                if (bmp.m6361V() > 8) {
                    file.setReadable(true, false);
                    break;
                }
                break;
            case 2:
                if (bmp.m6361V() > 8) {
                    file.setWritable(true, false);
                    break;
                }
                break;
        }
        return file;
    }
}
