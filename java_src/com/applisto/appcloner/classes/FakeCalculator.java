package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
/* loaded from: classes2.dex */
public class FakeCalculator extends OnAppExitListener {
    private static final String TAG = FakeCalculator.class.getSimpleName();

    public void install() {
        Log.m13704i(TAG, "install; ");
        onCreate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if ((activity instanceof CalculatorActivity) || (activity instanceof SplashScreenActivity)) {
            Log.m13704i(TAG, "onActivityCreated; ignoring");
        } else if (!CalculatorActivity.sUnlocked) {
            Intent intent = new Intent(activity, CalculatorActivity.class);
            intent.addFlags(65536);
            activity.startActivity(intent);
            Log.m13704i(TAG, "onActivityCreated; started CalculatorActivity");
        } else {
            Log.m13704i(TAG, "onActivityCreated; already unlocked");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        CalculatorActivity.sUnlocked = false;
    }
}
