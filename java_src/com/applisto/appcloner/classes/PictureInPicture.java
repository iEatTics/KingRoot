package com.applisto.appcloner.classes;

import android.app.Activity;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.Toast;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.WindowCallbackWrapper;
import com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener;
/* loaded from: classes2.dex */
public class PictureInPicture extends ActivityLifecycleListener {
    private static final String TAG = PictureInPicture.class.getSimpleName();
    private Handler mHandler = new Handler();
    private int mPictureInPictureKeyCode;
    private boolean mPictureInPictureLongPress;
    private boolean mPictureInPictureSupport;

    public PictureInPicture(CloneSettings cloneSettings) {
        this.mPictureInPictureSupport = cloneSettings.getBoolean("pictureInPictureSupport", false).booleanValue();
        this.mPictureInPictureKeyCode = cloneSettings.getInteger("pictureInPictureKeyCode", 0).intValue();
        this.mPictureInPictureLongPress = cloneSettings.getBoolean("pictureInPictureLongPress", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "PictureInPicture; mPictureInPictureSupport: " + this.mPictureInPictureSupport + ", mPictureInPictureKeyCode: " + this.mPictureInPictureKeyCode + ", mPictureInPictureLongPress: " + this.mPictureInPictureLongPress);
    }

    public void install() {
        Log.m13704i(TAG, "install; ");
        if (this.mPictureInPictureSupport) {
            onCreate();
            Log.m13704i(TAG, "init; created");
        }
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityCreated(final Activity activity) {
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; activity: " + activity);
        if (this.mPictureInPictureSupport) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.PictureInPicture.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Window window = activity.getWindow();
                        window.setCallback(new WindowCallbackWrapper(window.getCallback()) { // from class: com.applisto.appcloner.classes.PictureInPicture.1.1
                            @Override // com.applisto.appcloner.classes.util.WindowCallbackWrapper, android.view.Window.Callback
                            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                                int keyCode = keyEvent.getKeyCode();
                                boolean z = keyEvent.isLongPress() || keyEvent.getRepeatCount() == 10;
                                String str2 = PictureInPicture.TAG;
                                Log.m13704i(str2, "dispatchKeyEvent; keyCode: " + keyCode + ", longPress: " + z + ", event: " + keyEvent);
                                if (keyCode == PictureInPicture.this.mPictureInPictureKeyCode && keyEvent.getAction() == 0 && (!PictureInPicture.this.mPictureInPictureLongPress || z)) {
                                    PictureInPicture.this.startPictureInPictureDelayed(activity);
                                    return true;
                                }
                                return super.dispatchKeyEvent(keyEvent);
                            }
                        });
                        Log.m13704i(PictureInPicture.TAG, "run; window callback installed");
                    } catch (Exception e) {
                        Log.m13698w(PictureInPicture.TAG, e);
                    }
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPictureInPictureDelayed(final Activity activity) {
        String str = TAG;
        Log.m13704i(str, "startPictureInPictureDelayed; activity: " + activity);
        this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io
            @Override // java.lang.Runnable
            public final void run() {
                PictureInPicture.this.lambda$startPictureInPictureDelayed$0$PictureInPicture(activity);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startPictureInPicture */
    public void lambda$startPictureInPictureDelayed$0$PictureInPicture(Activity activity) {
        String str = TAG;
        Log.m13704i(str, "startPictureInPicture; activity: " + activity);
        try {
            activity.getClass().getMethod("enterPictureInPictureMode", new Class[0]).invoke(activity, new Object[0]);
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
            Toast.makeText(activity, "Failed to start picture-in-picture mode.", 1).show();
        }
    }
}
