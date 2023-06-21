package com.kingroot.kinguser;

import android.app.Activity;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class bjz {
    private static WeakReference<Activity> byQ;

    /* renamed from: m */
    public static synchronized void m6593m(Activity activity) {
        synchronized (bjz.class) {
            byQ = new WeakReference<>(activity);
        }
    }

    public static synchronized Activity aeC() {
        Activity activity;
        synchronized (bjz.class) {
            activity = byQ != null ? byQ.get() : null;
        }
        return activity;
    }

    /* renamed from: n */
    public static synchronized void m6592n(Activity activity) {
        synchronized (bjz.class) {
            if (aeC() == activity) {
                byQ = null;
            }
        }
    }
}
