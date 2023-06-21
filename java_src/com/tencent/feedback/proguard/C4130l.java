package com.tencent.feedback.proguard;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
/* renamed from: com.tencent.feedback.proguard.l */
/* loaded from: classes.dex */
public final class C4130l {

    /* renamed from: b */
    private static C4130l f4740b = new C4130l();

    /* renamed from: a */
    public String f4741a = "unknown";

    /* renamed from: c */
    private boolean f4742c;

    /* renamed from: d */
    private boolean f4743d;

    /* renamed from: e */
    private long f4744e;

    /* renamed from: a */
    public static C4130l m661a() {
        return f4740b;
    }

    /* renamed from: a */
    public final void m660a(Context context) {
        if (!this.f4742c) {
            this.f4742c = true;
            Application application = null;
            if (Build.VERSION.SDK_INT < 14) {
                this.f4743d = false;
                return;
            }
            if (context.getApplicationContext() instanceof Application) {
                application = (Application) context.getApplicationContext();
                this.f4743d = true;
            }
            if (application != null) {
                try {
                    application.registerActivityLifecycleCallbacks(new C4131a());
                } catch (Exception e) {
                    this.f4743d = false;
                }
                if (this.f4743d) {
                    C4073e.m1015b("[session] registed by api", new Object[0]);
                }
            }
        }
    }

    @TargetApi(14)
    /* renamed from: com.tencent.feedback.proguard.l$a */
    /* loaded from: classes.dex */
    class C4131a implements Application.ActivityLifecycleCallbacks {
        C4131a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            if (activity != null) {
                C4130l.this.f4741a = activity.getClass().getName();
            } else {
                C4130l.this.f4741a = "unknown";
            }
            C4071c m1091a = C4071c.m1091a();
            if (m1091a != null) {
                m1091a.m1079b(true);
                m1091a.m1064i(C4130l.this.f4741a);
            }
            SystemClock.elapsedRealtime();
            long unused = C4130l.this.f4744e;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            C4130l.this.f4744e = SystemClock.elapsedRealtime();
            if (activity != null) {
                C4130l.this.f4741a = "background";
            } else {
                C4130l.this.f4741a = "unknown";
            }
            C4071c m1091a = C4071c.m1091a();
            if (m1091a != null) {
                m1091a.m1079b(false);
                m1091a.m1064i(C4130l.this.f4741a);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }
    }
}
