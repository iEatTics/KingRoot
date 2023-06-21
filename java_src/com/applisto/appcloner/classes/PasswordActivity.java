package com.applisto.appcloner.classes;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.p004v4.view.ViewCompat;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.ContextThemeWrapper;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.applisto.appcloner.classes.PasswordActivity;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.WindowCallbackDelegate;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
/* loaded from: classes2.dex */
public class PasswordActivity extends Activity {
    public static boolean sUnlocked;
    private EditText mEditText;
    private boolean mHidePasswordCharacters;
    private String mOriginalActivityName;
    private String mPassword;
    private boolean mPasswordProtectApp;
    private SharedPreferences mPreferences;
    private boolean mStealthMode;
    private boolean mStealthModeUseFingerprint;
    private static final String TAG = PasswordActivity.class.getSimpleName();
    public static final String PREF_KEY_PASSWORD_ENTERED = PasswordActivity.class.getName() + "_passwordEntered";
    private List<Dialog> mDialogs = new ArrayList();
    private Handler mHandler = new Handler();

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            this.mPreferences = PreferenceManager.getDefaultSharedPreferences(this);
            Bundle bundle2 = getPackageManager().getActivityInfo(getComponentName(), 129).metaData;
            if (bundle2 != null) {
                this.mOriginalActivityName = bundle2.getString("com.applisto.appcloner.originalActivityName");
                if (this.mOriginalActivityName != null && this.mOriginalActivityName.startsWith(".")) {
                    this.mOriginalActivityName = getPackageName() + this.mOriginalActivityName;
                }
                CloneSettings cloneSettings = CloneSettings.getInstance(this);
                this.mPasswordProtectApp = cloneSettings.getBoolean("passwordProtectApp", false).booleanValue();
                this.mPassword = cloneSettings.getString("appPassword", null);
                if (cloneSettings.has("stealthMode")) {
                    this.mStealthMode = cloneSettings.getBoolean("stealthMode", false).booleanValue();
                } else {
                    this.mStealthMode = cloneSettings.getBoolean("appPasswordStealthMode", false).booleanValue();
                }
                this.mStealthModeUseFingerprint = cloneSettings.getBoolean("stealthModeUseFingerprint", false).booleanValue();
                this.mHidePasswordCharacters = cloneSettings.getBoolean("hidePasswordCharacters", false).booleanValue();
                if (!TextUtils.isEmpty(this.mPassword) && cloneSettings.getBoolean("appPasswordAskOnlyOnce", false).booleanValue()) {
                    boolean z = this.mPreferences.getBoolean(PREF_KEY_PASSWORD_ENTERED, false);
                    String str = TAG;
                    Log.m13704i(str, "onCreate; passwordEntered: " + z);
                    if (z) {
                        startApp();
                        return;
                    }
                }
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            exit();
        }
        showDialog();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:3:0x0004, B:8:0x0015, B:10:0x0026, B:14:0x0036, B:16:0x0049, B:31:0x00f4, B:32:0x00f9, B:34:0x00fe, B:36:0x010f, B:51:0x0182, B:53:0x0188, B:54:0x0190, B:56:0x01a5, B:57:0x01ad, B:58:0x01b5, B:60:0x01d5, B:64:0x01e5, B:63:0x01e0, B:35:0x0109, B:37:0x0113, B:39:0x011b, B:41:0x011f, B:44:0x0132, B:50:0x0169, B:9:0x001e, B:46:0x014d), top: B:77:0x0004, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0109 A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:3:0x0004, B:8:0x0015, B:10:0x0026, B:14:0x0036, B:16:0x0049, B:31:0x00f4, B:32:0x00f9, B:34:0x00fe, B:36:0x010f, B:51:0x0182, B:53:0x0188, B:54:0x0190, B:56:0x01a5, B:57:0x01ad, B:58:0x01b5, B:60:0x01d5, B:64:0x01e5, B:63:0x01e0, B:35:0x0109, B:37:0x0113, B:39:0x011b, B:41:0x011f, B:44:0x0132, B:50:0x0169, B:9:0x001e, B:46:0x014d), top: B:77:0x0004, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0188 A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:3:0x0004, B:8:0x0015, B:10:0x0026, B:14:0x0036, B:16:0x0049, B:31:0x00f4, B:32:0x00f9, B:34:0x00fe, B:36:0x010f, B:51:0x0182, B:53:0x0188, B:54:0x0190, B:56:0x01a5, B:57:0x01ad, B:58:0x01b5, B:60:0x01d5, B:64:0x01e5, B:63:0x01e0, B:35:0x0109, B:37:0x0113, B:39:0x011b, B:41:0x011f, B:44:0x0132, B:50:0x0169, B:9:0x001e, B:46:0x014d), top: B:77:0x0004, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a5 A[Catch: all -> 0x01ec, TryCatch #5 {all -> 0x01ec, blocks: (B:3:0x0004, B:8:0x0015, B:10:0x0026, B:14:0x0036, B:16:0x0049, B:31:0x00f4, B:32:0x00f9, B:34:0x00fe, B:36:0x010f, B:51:0x0182, B:53:0x0188, B:54:0x0190, B:56:0x01a5, B:57:0x01ad, B:58:0x01b5, B:60:0x01d5, B:64:0x01e5, B:63:0x01e0, B:35:0x0109, B:37:0x0113, B:39:0x011b, B:41:0x011f, B:44:0x0132, B:50:0x0169, B:9:0x001e, B:46:0x014d), top: B:77:0x0004, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d5 A[Catch: Exception -> 0x01df, all -> 0x01ec, TRY_LEAVE, TryCatch #1 {Exception -> 0x01df, blocks: (B:58:0x01b5, B:60:0x01d5), top: B:71:0x01b5, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showDialog() {
        final ContextThemeWrapper contextThemeWrapper;
        final AlertDialog create;
        String str;
        try {
            Properties stringsProperties = Utils.getStringsProperties();
            boolean z = Build.VERSION.SDK_INT >= 21;
            if (z) {
                contextThemeWrapper = new ContextThemeWrapper(this, 16974123);
            } else {
                contextThemeWrapper = new ContextThemeWrapper(this, 16974120);
            }
            int dp2px = Utils.dp2px(contextThemeWrapper, 24.0f);
            FrameLayout frameLayout = new FrameLayout(contextThemeWrapper);
            frameLayout.setPadding(dp2px, dp2px, dp2px, z ? 0 : dp2px);
            String string = getString(17039370);
            AlertDialog.Builder builder = new AlertDialog.Builder(contextThemeWrapper);
            if (this.mStealthMode) {
                TextView textView = new TextView(contextThemeWrapper);
                String str2 = "Unfortunately, " + Utils.getAppName(contextThemeWrapper) + " has stopped.";
                try {
                    str = getString(getResources().getIdentifier("aerr_application", "string", "android"), new Object[]{Utils.getAppName(contextThemeWrapper)});
                    string = getString(getResources().getIdentifier("aerr_close", "string", "android"));
                    if (Build.VERSION.SDK_INT >= 24) {
                        try {
                            textView = new TextView(new ContextThemeWrapper(contextThemeWrapper, getResources().getIdentifier("aerr_list_item", "style", "android")));
                        } catch (Exception e) {
                            Log.m13698w(TAG, e);
                        }
                        builder.setTitle(str);
                        str = getString(getResources().getIdentifier("aerr_restart", "string", "android"));
                        try {
                            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(getResources().getIdentifier("ic_refresh", "drawable", "android"), 0, 0, 0);
                            textView.setCompoundDrawablePadding(Utils.dp2px(contextThemeWrapper, 32.0f));
                            textView.setPadding(0, 0, 0, Utils.dp2px(contextThemeWrapper, 20.0f));
                            textView.setOnClickListener(new View.OnClickListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$T1MHt5AVzb_hjHwVrKkqOkxau-Q
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    PasswordActivity.this.lambda$showDialog$0$PasswordActivity(view);
                                }
                            });
                            textView.setBackground(null);
                            string = null;
                        } catch (Throwable th) {
                            th = th;
                            string = null;
                            Log.m13698w(TAG, th);
                            textView.setText(str);
                            if (!z) {
                            }
                            frameLayout.addView(textView);
                            if (!TextUtils.isEmpty(string)) {
                            }
                            create = builder.setView(frameLayout).setCancelable(false).create();
                            this.mDialogs.add(create);
                            if (this.mStealthMode) {
                            }
                            create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$E8mOz44UXJfPECqeaAedmpy-m7c
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    PasswordActivity.this.lambda$showDialog$4$PasswordActivity(dialogInterface);
                                }
                            });
                            create.getWindow().setDimAmount(1.0f);
                            create.getWindow().setWindowAnimations(0);
                            create.getWindow().setSoftInputMode(5);
                            if (Utils.getTargetSdkVersion(contextThemeWrapper) < 23) {
                            }
                            create.show();
                            Utils.keepDialogOpenOnOrientationChange(create);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                textView.setText(str);
                if (!z) {
                    textView.setTextSize(16.0f);
                    textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                } else {
                    textView.setTextAppearance(contextThemeWrapper, 16973892);
                }
                frameLayout.addView(textView);
            } else if (TextUtils.isEmpty(this.mPassword)) {
                startApp();
                return;
            } else {
                this.mEditText = new EditText(contextThemeWrapper);
                this.mEditText.setInputType(524288 | (TextUtils.isDigitsOnly(this.mPassword) ? 2 : 1) | 128);
                this.mEditText.setImeOptions(2);
                this.mEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                        return PasswordActivity.this.lambda$showDialog$1$PasswordActivity(textView2, i, keyEvent);
                    }
                });
                if (this.mHidePasswordCharacters) {
                    this.mEditText.setTransformationMethod((PasswordTransformationMethod) Utils.getSecondaryClassLoader(contextThemeWrapper).loadClass("com.applisto.appcloner.classes.secondary.util.NoEchoPasswordTransformationMethod").newInstance());
                }
                frameLayout.addView(this.mEditText);
                builder.setTitle(stringsProperties.getProperty("title_enter_password")).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$D6qdW30jvAfIY5pk1DvsC8h2R_0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        PasswordActivity.this.lambda$showDialog$2$PasswordActivity(dialogInterface, i);
                    }
                });
            }
            if (!TextUtils.isEmpty(string)) {
                builder.setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$zc7hd37mOHt0UzAhYJvzuezNGv8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        PasswordActivity.this.lambda$showDialog$3$PasswordActivity(dialogInterface, i);
                    }
                });
            }
            create = builder.setView(frameLayout).setCancelable(false).create();
            this.mDialogs.add(create);
            if (this.mStealthMode) {
                create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.applisto.appcloner.classes.PasswordActivity.1
                    @Override // android.content.DialogInterface.OnShowListener
                    public void onShow(DialogInterface dialogInterface) {
                        final Runnable longPressRunnable = PasswordActivity.this.getLongPressRunnable();
                        try {
                            Window window = create.getWindow();
                            window.setCallback(new WindowCallbackDelegate(window.getCallback()) { // from class: com.applisto.appcloner.classes.PasswordActivity.1.1
                                GestureDetector gestureDetector;

                                {
                                    this.gestureDetector = new GestureDetector(contextThemeWrapper, new GestureDetector.SimpleOnGestureListener() { // from class: com.applisto.appcloner.classes.PasswordActivity.1.1.1
                                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                                        public void onLongPress(MotionEvent motionEvent) {
                                            try {
                                                longPressRunnable.run();
                                            } catch (Exception e2) {
                                                Log.m13698w(PasswordActivity.TAG, e2);
                                            }
                                        }
                                    });
                                }

                                @Override // com.applisto.appcloner.classes.util.WindowCallbackDelegate, android.view.Window.Callback
                                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                                    this.gestureDetector.onTouchEvent(motionEvent);
                                    return super.dispatchTouchEvent(motionEvent);
                                }
                            });
                            if (!PasswordActivity.this.mStealthModeUseFingerprint || Build.VERSION.SDK_INT < 23) {
                                return;
                            }
                            PasswordActivity.this.listenFingerprints(PasswordActivity.this);
                        } catch (Exception e2) {
                            Log.m13698w(PasswordActivity.TAG, e2);
                        }
                    }
                });
            }
            create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$E8mOz44UXJfPECqeaAedmpy-m7c
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    PasswordActivity.this.lambda$showDialog$4$PasswordActivity(dialogInterface);
                }
            });
            try {
                create.getWindow().setDimAmount(1.0f);
                create.getWindow().setWindowAnimations(0);
                create.getWindow().setSoftInputMode(5);
                if (Utils.getTargetSdkVersion(contextThemeWrapper) < 23) {
                    create.getWindow().setType(2003);
                }
            } catch (Exception e2) {
                Log.m13698w(TAG, e2);
            }
            create.show();
            Utils.keepDialogOpenOnOrientationChange(create);
        } catch (Throwable th3) {
            Log.m13698w(TAG, th3);
            exit();
        }
    }

    public /* synthetic */ void lambda$showDialog$0$PasswordActivity(View view) {
        exit();
    }

    public /* synthetic */ boolean lambda$showDialog$1$PasswordActivity(TextView textView, int i, KeyEvent keyEvent) {
        onOk();
        return false;
    }

    public /* synthetic */ void lambda$showDialog$2$PasswordActivity(DialogInterface dialogInterface, int i) {
        exit();
    }

    public /* synthetic */ void lambda$showDialog$3$PasswordActivity(DialogInterface dialogInterface, int i) {
        onOk();
    }

    public /* synthetic */ void lambda$showDialog$4$PasswordActivity(DialogInterface dialogInterface) {
        if (sUnlocked) {
            return;
        }
        exit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void listenFingerprints(Context context) {
        FingerprintManager fingerprintManager = (FingerprintManager) context.getSystemService("fingerprint");
        if (fingerprintManager == null || !fingerprintManager.isHardwareDetected()) {
            return;
        }
        fingerprintManager.authenticate(null, null, 0, new C03482(context), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.PasswordActivity$2 */
    /* loaded from: classes2.dex */
    public class C03482 extends FingerprintManager.AuthenticationCallback {
        final /* synthetic */ Context val$context;

        C03482(Context context) {
            this.val$context = context;
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
            Log.m13704i(PasswordActivity.TAG, "onAuthenticationSucceeded; ");
            try {
                PasswordActivity.this.onDoubleLongPress();
            } catch (Exception e) {
                Log.m13698w(PasswordActivity.TAG, e);
            }
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationFailed() {
            Log.m13704i(PasswordActivity.TAG, "onAuthenticationFailed; ");
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationError(int i, CharSequence charSequence) {
            String str = PasswordActivity.TAG;
            Log.m13704i(str, "onAuthenticationError; errorCode: " + i + ", errString: " + ((Object) charSequence));
            Handler handler = PasswordActivity.this.mHandler;
            final Context context = this.val$context;
            handler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$2$W-9YASUACguDr_7MTu_lz-eCQhs
                @Override // java.lang.Runnable
                public final void run() {
                    PasswordActivity.C03482.this.lambda$onAuthenticationError$0$PasswordActivity$2(context);
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$onAuthenticationError$0$PasswordActivity$2(Context context) {
            PasswordActivity.this.listenFingerprints(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.PasswordActivity$3 */
    /* loaded from: classes2.dex */
    public class RunnableC03493 implements Runnable {
        private int mCount;
        private Handler mHandler = new Handler();

        RunnableC03493() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mHandler.removeCallbacksAndMessages(null);
            this.mCount++;
            if (this.mCount >= 2) {
                PasswordActivity.this.onDoubleLongPress();
            } else {
                this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$PasswordActivity$3$dtKTXKLiCIp97MWlz7ZSfdVOtDc
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasswordActivity.RunnableC03493.this.lambda$run$0$PasswordActivity$3();
                    }
                }, 3000L);
            }
        }

        public /* synthetic */ void lambda$run$0$PasswordActivity$3() {
            this.mCount = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable getLongPressRunnable() {
        return new RunnableC03493();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDoubleLongPress() {
        if (!this.mPasswordProtectApp || TextUtils.isEmpty(this.mPassword)) {
            startApp();
            return;
        }
        this.mStealthMode = false;
        showDialog();
    }

    private void onOk() {
        boolean z = false;
        try {
            if (this.mEditText != null) {
                if (this.mPassword.equals(this.mEditText.getText().toString())) {
                    z = true;
                }
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        if (z) {
            try {
                this.mPreferences.edit().putBoolean(PREF_KEY_PASSWORD_ENTERED, true).apply();
            } catch (Exception e2) {
                Log.m13698w(TAG, e2);
            }
            startApp();
            return;
        }
        exit();
    }

    private void startApp() {
        sUnlocked = true;
        try {
            for (Dialog dialog : this.mDialogs) {
                dialog.dismiss();
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        try {
            Intent intent = new Intent(getIntent());
            intent.setComponent(new ComponentName(this, Class.forName(this.mOriginalActivityName)));
            intent.setFlags(268435456);
            startActivity(intent);
        } catch (Exception e2) {
            Log.m13698w(TAG, e2);
        }
        finish();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.applisto.appcloner.classes.PasswordActivity$4] */
    private void exit() {
        if (Build.VERSION.SDK_INT >= 21) {
            finishAndRemoveTask();
        } else {
            finish();
        }
        new Thread() { // from class: com.applisto.appcloner.classes.PasswordActivity.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(250L);
                } catch (InterruptedException unused) {
                }
                System.exit(0);
            }
        }.start();
    }
}
