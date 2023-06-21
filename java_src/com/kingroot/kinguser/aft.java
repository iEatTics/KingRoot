package com.kingroot.kinguser;

import android.app.Activity;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class aft {
    public static WeakReference<Activity> ail;

    /* renamed from: d */
    public static synchronized void m12028d(Activity activity) {
        synchronized (aft.class) {
            ail = new WeakReference<>(activity);
        }
    }

    /* renamed from: vt */
    public static synchronized Activity m12026vt() {
        Activity activity;
        synchronized (aft.class) {
            activity = ail != null ? ail.get() : null;
        }
        return activity;
    }

    /* renamed from: e */
    public static synchronized void m12027e(Activity activity) {
        synchronized (aft.class) {
            if (m12026vt() == activity) {
                ail = null;
            }
        }
    }
}
