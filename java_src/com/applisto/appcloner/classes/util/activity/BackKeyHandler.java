package com.applisto.appcloner.classes.util.activity;

import android.app.Activity;
import com.applisto.appcloner.classes.util.IActivityManagerHook;
import com.applisto.appcloner.classes.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public abstract class BackKeyHandler extends ActivityLifecycleListener {
    private static final String TAG = BackKeyHandler.class.getSimpleName();
    private List<Object> mActivityTokens = new ArrayList();
    private Map<Object, Activity> mActivities = new WeakHashMap();

    protected abstract boolean handleBackPressed(Activity activity, Object obj);

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener, com.applisto.appcloner.classes.util.activity.AbstractContentProvider, android.content.ContentProvider
    public boolean onCreate() {
        boolean onCreate = super.onCreate();
        if (onCreate) {
            try {
                new IActivityManagerHook() { // from class: com.applisto.appcloner.classes.util.activity.BackKeyHandler.1
                    @Override // com.applisto.appcloner.classes.util.IActivityManagerHook
                    protected InvocationHandler getInvocationHandler(final Object obj) {
                        return new InvocationHandler() { // from class: com.applisto.appcloner.classes.util.activity.BackKeyHandler.1.1
                            @Override // java.lang.reflect.InvocationHandler
                            public Object invoke(Object obj2, Method method, Object[] objArr) throws Throwable {
                                if ("finishActivity".equals(method.getName()) || "moveActivityTaskToBack".equals(method.getName())) {
                                    Log.m13704i(BackKeyHandler.TAG, "invoke; finishActivity/moveActivityTaskToBack; ");
                                    Object obj3 = objArr[0];
                                    String str = BackKeyHandler.TAG;
                                    Log.m13704i(str, "invoke; token: " + obj3 + ", mActivityTokens: " + BackKeyHandler.this.mActivityTokens);
                                    if (BackKeyHandler.this.mActivityTokens.isEmpty() || BackKeyHandler.this.mActivityTokens.get(0) != obj3) {
                                        BackKeyHandler.this.removeToken(obj3);
                                    } else if ("moveActivityTaskToBack".equals(method.getName()) || Log.getStackTraceString(new Exception()).contains("onBackPressed")) {
                                        if (!BackKeyHandler.this.handleBackPressed((Activity) BackKeyHandler.this.mActivities.get(obj3), obj3)) {
                                            return false;
                                        }
                                    } else {
                                        Log.m13704i(BackKeyHandler.TAG, "invoke; no onBackPressed");
                                    }
                                }
                                return method.invoke(obj, objArr);
                            }
                        };
                    }
                }.install();
                Log.m13704i(TAG, "onCreate; IActivityManagerHook installed");
            } catch (Exception e) {
                Log.m13698w(TAG, e);
            }
        }
        return onCreate;
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityCreated(Activity activity) {
        int flags = activity.getIntent().getFlags();
        if ((268435456 & flags) != 0) {
            Log.m13704i(TAG, "onActivityCreated; new task");
            this.mActivityTokens.clear();
        }
        Object activityToken = getActivityToken(activity);
        if (!this.mActivityTokens.contains(activityToken)) {
            this.mActivityTokens.add(activityToken);
            this.mActivities.put(activityToken, activity);
        }
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; activity: " + activity + ", flags: " + flags + ", mActivityTokens: " + this.mActivityTokens);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityDestroyed(Activity activity) {
        super.onActivityDestroyed(activity);
        removeToken(getActivityToken(activity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeToken(Object obj) {
        do {
        } while (this.mActivityTokens.remove(obj));
        this.mActivities.remove(obj);
        String str = TAG;
        Log.m13704i(str, "removeToken; mActivityTokens: " + this.mActivityTokens);
    }

    private static Object getActivityToken(Activity activity) {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField.get(activity);
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            return "";
        }
    }
}
