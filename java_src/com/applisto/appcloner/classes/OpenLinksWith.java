package com.applisto.appcloner.classes;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.applisto.appcloner.classes.OpenLinksWith;
import com.applisto.appcloner.classes.util.IActivityManagerHook;
import com.applisto.appcloner.classes.util.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class OpenLinksWith {
    private static final String TAG = OpenLinksWith.class.getSimpleName();
    private String mPackageName;

    public OpenLinksWith(CloneSettings cloneSettings) {
        this.mPackageName = cloneSettings.getString("openLinksWith", null);
    }

    public void install(Context context) {
        Log.m13704i(TAG, "install; ");
        if (TextUtils.isEmpty(this.mPackageName)) {
            return;
        }
        if ("SELF".equals(this.mPackageName)) {
            this.mPackageName = context.getPackageName();
        }
        String str = TAG;
        Log.m13704i(str, "init; mPackageName: " + this.mPackageName);
        try {
            new C03441(context).install();
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.OpenLinksWith$1 */
    /* loaded from: classes2.dex */
    public class C03441 extends IActivityManagerHook {
        final /* synthetic */ Context val$context;

        C03441(Context context) {
            this.val$context = context;
        }

        @Override // com.applisto.appcloner.classes.util.IActivityManagerHook
        protected InvocationHandler getInvocationHandler(final Object obj) {
            final Context context = this.val$context;
            return new InvocationHandler() { // from class: com.applisto.appcloner.classes.-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                    return OpenLinksWith.C03441.this.lambda$getInvocationHandler$0$OpenLinksWith$1(context, obj, obj2, method, objArr);
                }
            };
        }

        public /* synthetic */ Object lambda$getInvocationHandler$0$OpenLinksWith$1(Context context, Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
            Intent intent;
            Uri data;
            String scheme;
            try {
                if ("startActivity".equals(method.getName()) && (intent = (Intent) objArr[2]) != null && "android.intent.action.VIEW".equals(intent.getAction()) && (data = intent.getData()) != null && (scheme = data.getScheme()) != null && scheme.startsWith("http") && OpenLinksWith.isApplicationInstalled(context, OpenLinksWith.this.mPackageName)) {
                    intent.setPackage(OpenLinksWith.this.mPackageName);
                }
            } catch (Exception e) {
                Log.m13698w(OpenLinksWith.TAG, e);
            }
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isApplicationInstalled(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                packageManager.getPackageInfo(str, 128);
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
