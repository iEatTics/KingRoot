package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.p004v4.view.ViewCompat;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.ResumePauseActivityLifecycleListener;
import com.applisto.appcloner.hooking.Hooking;
import com.swift.sandhook.annotation.HookClass;
import com.swift.sandhook.annotation.HookMethod;
import com.swift.sandhook.annotation.HookMethodBackup;
import com.swift.sandhook.annotation.MethodParams;
import java.lang.reflect.Method;
import java.util.Properties;
/* loaded from: classes2.dex */
public class ScreenSaver extends ResumePauseActivityLifecycleListener {
    private static Context sContext;
    private static int sDelayMinutes;
    private static boolean sExitApp;
    private static boolean sMuteVolume;
    private static Properties sStringsProperties;
    private static final String TAG = ScreenSaver.class.getSimpleName();
    private static final Handler sHandler = new Handler();

    public void install(Context context, int i, boolean z, boolean z2, Properties properties) {
        String str = TAG;
        Log.m13704i(str, "install; delayMinutes: " + i + ", exitApp: " + z + ", muteVolume: " + z2);
        sContext = context.getApplicationContext();
        sDelayMinutes = i;
        sExitApp = z;
        sMuteVolume = z2;
        sStringsProperties = properties;
        Hooking.initHooking(context);
        Hooking.addHookClass(Hook.class);
        Log.m13704i(TAG, "install; hooks installed");
        onCreate();
    }

    @Override // com.applisto.appcloner.classes.util.activity.ResumePauseActivityLifecycleListener
    protected void onResumed(Activity activity) {
        Log.m13704i(TAG, "onResumed; ");
        if (activity.getClass().equals(ScreenSaverActivity.class)) {
            return;
        }
        scheduleScreenSaver();
    }

    @Override // com.applisto.appcloner.classes.util.activity.ResumePauseActivityLifecycleListener
    protected void onPaused(Context context) {
        Log.m13704i(TAG, "onPaused; ");
        unscheduleScreenSaver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void scheduleScreenSaver() {
        sHandler.removeCallbacksAndMessages(null);
        sHandler.postDelayed($$Lambda$ScreenSaver$arQ9fOA3cu0e9OZXI3LdeWO2ZEw.INSTANCE, sDelayMinutes * 60 * 1000);
    }

    private static void unscheduleScreenSaver() {
        sHandler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startScreenSaver() {
        Log.m13704i(TAG, "startScreenSaver; ");
        if (sExitApp) {
            try {
                DefaultProvider.invokeSecondaryStatic(sContext, "util.Utils", "killAppProcesses", sContext);
                return;
            } catch (Throwable th) {
                Log.m13698w(TAG, th);
                System.exit(0);
                return;
            }
        }
        if (sMuteVolume) {
            mute();
        }
        try {
            Intent intent = new Intent(sContext, ScreenSaverActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("unMute", sMuteVolume);
            sContext.startActivity(intent);
            unscheduleScreenSaver();
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    private static void mute() {
        Log.m13704i(TAG, "mute; ");
        try {
            AudioManager audioManager = (AudioManager) sContext.getSystemService("audio");
            if (audioManager != null) {
                audioManager.setStreamMute(3, true);
                Toast.makeText(sContext, sStringsProperties.getProperty("mute_on_start_muted_message"), 0).show();
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            Toast.makeText(sContext, sStringsProperties.getProperty("mute_on_start_muted_error_message"), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void unMute() {
        Log.m13704i(TAG, "unMute; ");
        try {
            AudioManager audioManager = (AudioManager) sContext.getSystemService("audio");
            if (audioManager != null) {
                audioManager.setStreamMute(3, false);
                Toast.makeText(sContext, sStringsProperties.getProperty("mute_on_start_unmuted_message"), 0).show();
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            Toast.makeText(sContext, sStringsProperties.getProperty("mute_on_start_unmuted_error_message"), 1).show();
        }
    }

    @HookClass(Activity.class)
    /* loaded from: classes2.dex */
    public static class Hook {
        @HookMethodBackup("dispatchKeyEvent")
        @MethodParams({KeyEvent.class})
        static Method dispatchKeyEventBackup;
        @HookMethodBackup("dispatchTouchEvent")
        @MethodParams({MotionEvent.class})
        static Method dispatchTouchEventBackup;

        @MethodParams({MotionEvent.class})
        @HookMethod("dispatchTouchEvent")
        public static boolean dispatchTouchEventHook(Object obj, MotionEvent motionEvent) throws Throwable {
            ScreenSaver.scheduleScreenSaver();
            return ((Boolean) Hooking.callInstanceOrigin(dispatchTouchEventBackup, obj, motionEvent)).booleanValue();
        }

        @MethodParams({KeyEvent.class})
        @HookMethod("dispatchKeyEvent")
        public static boolean dispatchKeyEventHook(Object obj, KeyEvent keyEvent) throws Throwable {
            ScreenSaver.scheduleScreenSaver();
            return ((Boolean) Hooking.callInstanceOrigin(dispatchKeyEventBackup, obj, keyEvent)).booleanValue();
        }
    }

    /* loaded from: classes2.dex */
    public static class ScreenSaverActivity extends Activity {
        @Override // android.app.Activity
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            View view = new View(this);
            view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            setContentView(view);
            if (Build.VERSION.SDK_INT >= 16) {
                Window window = getWindow();
                window.getDecorView().setSystemUiVisibility(5894);
                if (Build.VERSION.SDK_INT >= 21) {
                    window.setFlags(512, 512);
                    window.addFlags(Integer.MIN_VALUE);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.layoutInDisplayCutoutMode = 1;
                    window.setAttributes(attributes);
                }
            }
        }

        @Override // android.app.Activity, android.view.Window.Callback
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            runOnUiThread(new $$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk(this));
            return true;
        }

        @Override // android.app.Activity, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            runOnUiThread(new $$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk(this));
            return true;
        }

        @Override // android.app.Activity
        public void finish() {
            Log.m13704i(ScreenSaver.TAG, "finish; ");
            if (getIntent().getBooleanExtra("unMute", false)) {
                ScreenSaver.unMute();
            }
            super.finish();
            ScreenSaver.scheduleScreenSaver();
        }
    }
}
