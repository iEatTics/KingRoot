package com.applisto.appcloner.classes;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.webkit.WebView;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
import java.io.File;
/* loaded from: classes2.dex */
public class ClearCacheOnExitProvider extends OnAppExitListener {
    private static final String TAG = ClearCacheOnExitProvider.class.getSimpleName();

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected boolean onInit(Application application) {
        String str = TAG;
        Log.m13704i(str, "onInit; application: " + application);
        try {
            application.startService(new Intent(application, ClearCacheOnExitService.class));
            return true;
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        clearCache(context);
    }

    public static synchronized void clearCache(Context context) {
        File[] externalCacheDirs;
        synchronized (ClearCacheOnExitProvider.class) {
            try {
                new WebView(context).clearCache(true);
                context.deleteDatabase("webview.db");
                context.deleteDatabase("webviewCache.db");
                File cacheDir = context.getCacheDir();
                Log.m13704i(TAG, "clearCache; cacheDir: " + cacheDir);
                Utils.deleteDirectory(cacheDir);
                if (Build.VERSION.SDK_INT >= 19 && (externalCacheDirs = context.getExternalCacheDirs()) != null) {
                    for (File file : externalCacheDirs) {
                        Log.m13704i(TAG, "clearCache; externalCacheDir: " + file);
                        Utils.deleteDirectory(file);
                    }
                }
            }
        }
    }
}
