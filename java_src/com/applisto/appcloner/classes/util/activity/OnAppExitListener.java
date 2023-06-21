package com.applisto.appcloner.classes.util.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.applisto.appcloner.classes.util.Log;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class OnAppExitListener extends ActivityLifecycleListener {
    private static final String TAG = OnAppExitListener.class.getSimpleName();
    private Set<Activity> mActivities = new HashSet();
    private Handler mHandler = new Handler();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onAppExit */
    public abstract void lambda$onActivityDestroyed$0$OnAppExitListener(Context context);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; activity: " + activity);
        this.mHandler.removeCallbacksAndMessages(null);
        this.mActivities.add(activity);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityDestroyed(Activity activity) {
        String str = TAG;
        Log.m13704i(str, "onActivityDestroyed; activity: " + activity);
        this.mActivities.remove(activity);
        if (this.mActivities.isEmpty()) {
            final Context applicationContext = activity.getApplicationContext();
            String name = activity.getClass().getName();
            if ("ch.iAgentur.i20Mio.MainActivity".equals(name) || name.startsWith("com.facebook.messenger.")) {
                lambda$onActivityDestroyed$0$OnAppExitListener(applicationContext);
            } else {
                this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.util.activity.-$$Lambda$OnAppExitListener$ieziqKgQTJCB_DjkbY94zZ6yIwg
                    @Override // java.lang.Runnable
                    public final void run() {
                        OnAppExitListener.this.lambda$onActivityDestroyed$0$OnAppExitListener(applicationContext);
                    }
                }, 1000L);
            }
        }
    }
}
