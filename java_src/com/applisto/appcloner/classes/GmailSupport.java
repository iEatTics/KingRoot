package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.widget.TextView;
import com.applisto.appcloner.classes.GmailSupport;
import com.applisto.appcloner.classes.util.IPackageManagerHook;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.WindowCallbackWrapper;
import com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener;
import com.applisto.appcloner.hooking.Hooking;
import com.swift.sandhook.annotation.HookMethod;
import com.swift.sandhook.annotation.HookReflectClass;
import com.swift.sandhook.annotation.MethodParams;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class GmailSupport extends ActivityLifecycleListener {
    private static final String TAG = GmailSupport.class.getSimpleName();
    private String mAppName;
    private String mErrorMessage;
    private Handler mHandler = new Handler();

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected int getActivityTimerDelayMillis() {
        return 500;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void install(Context context) {
        Log.m13704i(TAG, "install; ");
        try {
            onCreate();
            installPackageManagerHook(context);
            installMailIntentReceiverHook(context);
            this.mAppName = Utils.getAppName(context);
            String str = TAG;
            Log.m13704i(str, "install; mAppName: " + this.mAppName);
            this.mErrorMessage = context.getString(context.getResources().getIdentifier("common_google_play_services_unknown_issue", "string", context.getPackageName()), this.mAppName);
            this.mErrorMessage = this.mErrorMessage.trim();
            String str2 = TAG;
            Log.m13704i(str2, "install; mErrorMessage: " + this.mErrorMessage);
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.GmailSupport$1 */
    /* loaded from: classes2.dex */
    public class C03311 extends WindowCallbackWrapper {
        C03311(Window.Callback callback) {
            super(callback);
        }

        @Override // com.applisto.appcloner.classes.util.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
            Log.m13704i(GmailSupport.TAG, "onContentChanged; ");
            super.onContentChanged();
            GmailSupport.this.checkForDialog();
            GmailSupport.this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$GmailSupport$1$gv5_EVymIpta_xgA09olrJWegxo
                @Override // java.lang.Runnable
                public final void run() {
                    GmailSupport.C03311.this.lambda$onContentChanged$0$GmailSupport$1();
                }
            }, 300L);
            GmailSupport.this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$GmailSupport$1$nydOkMRIGju3dG6sG2PsuscrbT4
                @Override // java.lang.Runnable
                public final void run() {
                    GmailSupport.C03311.this.lambda$onContentChanged$1$GmailSupport$1();
                }
            }, 500L);
            GmailSupport.this.mHandler.postDelayed(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$GmailSupport$1$a70tR4JnAuwFKEjGwTRCyhXKKuU
                @Override // java.lang.Runnable
                public final void run() {
                    GmailSupport.C03311.this.lambda$onContentChanged$2$GmailSupport$1();
                }
            }, 750L);
        }

        public /* synthetic */ void lambda$onContentChanged$0$GmailSupport$1() {
            GmailSupport.this.checkForDialog();
        }

        public /* synthetic */ void lambda$onContentChanged$1$GmailSupport$1() {
            GmailSupport.this.checkForDialog();
        }

        public /* synthetic */ void lambda$onContentChanged$2$GmailSupport$1() {
            GmailSupport.this.checkForDialog();
        }
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityCreated(Activity activity) {
        Window window = activity.getWindow();
        window.setCallback(new C03311(window.getCallback()));
        installContextHook(activity);
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityTimer(Activity activity) {
        checkForDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void checkForDialog() {
        TextView textView;
        CharSequence text;
        try {
            for (ViewParent viewParent : Utils.getViewRoots()) {
                try {
                    Field declaredField = viewParent.getClass().getDeclaredField("mView");
                    declaredField.setAccessible(true);
                    View view = (View) declaredField.get(viewParent);
                    if (view.getVisibility() != 8 && (textView = (TextView) view.findViewById(16908299)) != null && (text = textView.getText()) != null) {
                        String charSequence = text.toString();
                        if (!TextUtils.isEmpty(charSequence) && (charSequence.contains(this.mErrorMessage) || (charSequence.contains(this.mAppName) && charSequence.contains("Google Play")))) {
                            view.setVisibility(8);
                            String str = TAG;
                            Log.m13704i(str, "checkForDialog; view hidden; viewRoot: " + viewParent + ", view: " + view);
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

    private void installPackageManagerHook(Context context) {
        String str = TAG;
        Log.m13704i(str, "installPackageManagerHook; context: " + context);
        try {
            new C03322(context).install(context);
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.GmailSupport$2 */
    /* loaded from: classes2.dex */
    public class C03322 extends IPackageManagerHook {
        final /* synthetic */ Context val$context;

        C03322(Context context) {
            this.val$context = context;
        }

        @Override // com.applisto.appcloner.classes.util.IPackageManagerHook
        protected InvocationHandler getInvocationHandler(final Object obj) {
            final Context context = this.val$context;
            return new InvocationHandler() { // from class: com.applisto.appcloner.classes.-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                    return GmailSupport.C03322.lambda$getInvocationHandler$0(context, obj, obj2, method, objArr);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ Object lambda$getInvocationHandler$0(Context context, Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
            try {
                String name = method.getName();
                if ("getPackageInfo".equals(name)) {
                    if ((context.getPackageName() + "s").equals(objArr[0])) {
                        String str = GmailSupport.TAG;
                        Log.m13704i(str, "invoke; getPackageInfo; fixing args[0]: " + objArr[0]);
                        objArr[0] = "com.google.android.gms";
                    }
                } else if ("getApplicationInfo".equals(name)) {
                    if ((context.getPackageName() + "s").equals(objArr[0])) {
                        String str2 = GmailSupport.TAG;
                        Log.m13704i(str2, "invoke; getApplicationInfo; fixing args[0]: " + objArr[0]);
                        objArr[0] = "com.google.android.gms";
                    }
                }
            } catch (Exception e) {
                Log.m13698w(GmailSupport.TAG, e);
            }
            return method.invoke(obj, objArr);
        }
    }

    private void installContextHook(Context context) {
        String str = TAG;
        Log.m13704i(str, "installContextHook; context: " + context);
        try {
            Field declaredField = ContextWrapper.class.getDeclaredField("mBase");
            declaredField.setAccessible(true);
            Context context2 = context;
            while (context instanceof ContextWrapper) {
                context2 = context;
                context = (Context) declaredField.get(context);
            }
            declaredField.set(context2, new C03333(context, context.getPackageName()));
            Log.m13704i(TAG, "installed; installed context wrapper");
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.GmailSupport$3 */
    /* loaded from: classes2.dex */
    public class C03333 extends ContextWrapper {
        final /* synthetic */ String val$myPackageName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03333(Context context, String str) {
            super(context);
            this.val$myPackageName = str;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Context createPackageContext(String str, int i) throws PackageManager.NameNotFoundException {
            String str2 = GmailSupport.TAG;
            Log.m13704i(str2, "createPackageContext; packageName: " + str);
            if ((this.val$myPackageName + "s").equals(str)) {
                String str3 = GmailSupport.TAG;
                Log.m13704i(str3, "createPackageContext; replacing remote context; packageName: " + str);
                return new ContextWrapper(super.createPackageContext("com.google.android.gms", i)) { // from class: com.applisto.appcloner.classes.GmailSupport.3.1
                    private ClassLoader mClassLoader;

                    @Override // android.content.ContextWrapper, android.content.Context
                    public ClassLoader getClassLoader() {
                        if (this.mClassLoader == null) {
                            this.mClassLoader = new ClassLoader(super.getClassLoader()) { // from class: com.applisto.appcloner.classes.GmailSupport.3.1.1
                                @Override // java.lang.ClassLoader
                                protected Class<?> loadClass(String str4, boolean z) throws ClassNotFoundException {
                                    String str5 = GmailSupport.TAG;
                                    Log.m13704i(str5, "loadClass; name: " + str4 + ", resolve: " + z);
                                    if ((C03333.this.val$myPackageName + "s.common.security.ProviderInstallerImpl").equals(str4)) {
                                        String str6 = GmailSupport.TAG;
                                        Log.m13704i(str6, "loadClass; replacing class name: " + str4);
                                        str4 = "com.google.android.gms.common.security.ProviderInstallerImpl";
                                    }
                                    return super.loadClass(str4, z);
                                }
                            };
                        }
                        return this.mClassLoader;
                    }
                };
            }
            return super.createPackageContext(str, i);
        }
    }

    private void installMailIntentReceiverHook(Context context) {
        Log.m13704i(TAG, "installMailIntentReceiverHook; ");
        Hooking.initHooking(context);
        Hooking.addHookClass(Hook.class);
        Log.m13704i(TAG, "installMailIntentReceiverHook; hooks installed");
    }

    @HookReflectClass(".MailIntentReceiver")
    /* loaded from: classes2.dex */
    public static class Hook {
        @MethodParams({Context.class, Intent.class})
        @HookMethod("onReceive")
        public static void onReceiveHook(Object obj, Context context, Intent intent) {
            Log.m13704i(GmailSupport.TAG, "onReceiveHook; ");
        }
    }
}
