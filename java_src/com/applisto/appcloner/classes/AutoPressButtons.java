package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class AutoPressButtons extends OnAppExitListener {
    private static final String TAG = AutoPressButtons.class.getSimpleName();
    private boolean mReady;
    private Handler mHandler = new Handler();
    private Map<String, Pair<String, AtomicBoolean>> mAutoPressButtons = new HashMap();

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected int getActivityTimerDelayMillis() {
        return 500;
    }

    public AutoPressButtons(CloneSettings cloneSettings) {
        List<CloneSettings> forObjectArray = cloneSettings.forObjectArray("autoPressButtons");
        String str = TAG;
        Log.m13704i(str, "AutoPressButtons; autoPressButtons: " + forObjectArray);
        if (forObjectArray != null) {
            for (CloneSettings cloneSettings2 : forObjectArray) {
                String string = cloneSettings2.getString("buttonLabel", null);
                if (!TextUtils.isEmpty(string)) {
                    String lowerCase = string.toLowerCase(Locale.ENGLISH);
                    String string2 = cloneSettings2.getString("screenText", null);
                    this.mAutoPressButtons.put(lowerCase, new Pair<>(string2 != null ? string2.toLowerCase(Locale.ENGLISH) : string2, cloneSettings2.getBoolean("pressOnceOnly", false).booleanValue() ? new AtomicBoolean(true) : null));
                }
            }
        }
        String str2 = TAG;
        Log.m13704i(str2, "AutoPressButtons; mAutoPressButtons: " + this.mAutoPressButtons);
    }

    public void install() {
        Log.m13704i(TAG, "install; ");
        if (this.mAutoPressButtons.isEmpty()) {
            return;
        }
        onCreate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(final Activity activity) {
        super.onActivityCreated(activity);
        if (Build.VERSION.SDK_INT >= 18) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc
                @Override // java.lang.Runnable
                public final void run() {
                    AutoPressButtons.this.lambda$onActivityCreated$1$AutoPressButtons(activity);
                }
            }, 1000L);
        }
    }

    public /* synthetic */ void lambda$onActivityCreated$1$AutoPressButtons(Activity activity) {
        View findViewById = activity.findViewById(16908290);
        String str = TAG;
        Log.m13704i(str, "run; rootView: " + findViewById);
        if (findViewById != null) {
            findViewById.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$AutoPressButtons$lIlimpYQIWc-cpThJE2A5QfdhKs
                @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                public final void onWindowFocusChanged(boolean z) {
                    AutoPressButtons.this.lambda$null$0$AutoPressButtons(z);
                }
            });
            this.mReady = true;
            Log.m13704i(TAG, "run; now ready");
        }
    }

    public /* synthetic */ void lambda$null$0$AutoPressButtons(boolean z) {
        Log.m13704i(TAG, "onWindowFocusChanged; ");
        checkForButtons();
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityTimer(Activity activity) {
        checkForButtons();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        Log.m13704i(TAG, "onAppExit; ");
        try {
            this.mReady = false;
            for (Pair<String, AtomicBoolean> pair : this.mAutoPressButtons.values()) {
                if (pair.second != null) {
                    ((AtomicBoolean) pair.second).set(true);
                }
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    private synchronized void checkForButtons() {
        if (!this.mReady) {
            Log.m13704i(TAG, "checkForButtons; not ready");
            return;
        }
        try {
            for (ViewParent viewParent : Utils.getViewRoots()) {
                try {
                    Field declaredField = viewParent.getClass().getDeclaredField("mView");
                    declaredField.setAccessible(true);
                    View findView = new ButtonViewFinder((View) declaredField.get(viewParent)).findView();
                    if (findView != null) {
                        if (findView.callOnClick()) {
                            Log.m13704i(TAG, "checkForButtons; button clicked");
                        } else {
                            Log.m13700w(TAG, "checkForButtons; button not clicked");
                        }
                    }
                } catch (Exception e) {
                    Log.m13698w(TAG, e);
                }
            }
        } catch (Exception e2) {
            Log.m13698w(TAG, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class ViewFinder {
        View mRootView;

        abstract boolean matchesView(View view);

        ViewFinder(View view) {
            this.mRootView = view;
        }

        View findView() {
            return findView(this.mRootView);
        }

        View findView(View view) {
            try {
                if (matchesView(view)) {
                    return view;
                }
            } catch (Exception e) {
                Log.m13698w(AutoPressButtons.TAG, e);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View findView = findView(viewGroup.getChildAt(i));
                    if (findView != null) {
                        return findView;
                    }
                }
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class ButtonViewFinder extends ViewFinder {
        ButtonViewFinder(View view) {
            super(view);
        }

        @Override // com.applisto.appcloner.classes.AutoPressButtons.ViewFinder
        boolean matchesView(View view) {
            CharSequence text;
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                if (textView.isClickable() && (text = textView.getText()) != null) {
                    String lowerCase = text.toString().toLowerCase(Locale.ENGLISH);
                    for (String str : AutoPressButtons.this.mAutoPressButtons.keySet()) {
                        if (str.equals(lowerCase)) {
                            Pair pair = (Pair) AutoPressButtons.this.mAutoPressButtons.get(str);
                            String str2 = (String) pair.first;
                            AtomicBoolean atomicBoolean = (AtomicBoolean) pair.second;
                            if ((atomicBoolean == null || atomicBoolean.get()) && (TextUtils.isEmpty(str2) || new TextViewFinder(this.mRootView, str2).findView() != null)) {
                                if (atomicBoolean != null) {
                                    atomicBoolean.set(false);
                                    return true;
                                }
                                return true;
                            }
                            return false;
                        }
                    }
                }
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    private class TextViewFinder extends ViewFinder {
        String mScreenText;

        TextViewFinder(View view, String str) {
            super(view);
            this.mScreenText = str;
        }

        @Override // com.applisto.appcloner.classes.AutoPressButtons.ViewFinder
        boolean matchesView(View view) {
            CharSequence text;
            return (view instanceof TextView) && (text = ((TextView) view).getText()) != null && text.toString().toLowerCase(Locale.ENGLISH).contains(this.mScreenText);
        }
    }
}
