package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.main.MainExitReceiver;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.kingroot.kinguser.tk */
/* loaded from: classes.dex */
public class C3637tk {

    /* renamed from: Hj */
    private volatile AtomicBoolean f3566Hj = new AtomicBoolean(false);

    /* renamed from: Hk */
    private long f3567Hk = 0;
    private String mTag;
    private static final Object sLock = new Object();

    /* renamed from: Hi */
    private static Set<C3637tk> f3565Hi = Collections.synchronizedSet(new HashSet());

    private C3637tk(String str) {
        this.mTag = "";
        this.mTag = TextUtils.isEmpty(str) ? "Null" : str + "#" + System.currentTimeMillis();
    }

    /* renamed from: jL */
    public static boolean m2166jL() {
        boolean z;
        synchronized (sLock) {
            Iterator<C3637tk> it = f3565Hi.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().m2164jN()) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    @Nullable
    /* renamed from: cS */
    public static C3637tk m2167cS(String str) {
        C3637tk c3637tk;
        synchronized (sLock) {
            if (!m2162jP()) {
                c3637tk = null;
            } else {
                c3637tk = new C3637tk(str);
                f3565Hi.add(c3637tk);
            }
        }
        return c3637tk;
    }

    @Nullable
    /* renamed from: jM */
    public static C3637tk m2165jM() {
        C3637tk c3637tk;
        synchronized (sLock) {
            if (!m2162jP()) {
                c3637tk = null;
            } else {
                c3637tk = new C3637tk("");
                f3565Hi.add(c3637tk);
            }
        }
        return c3637tk;
    }

    public void lock() {
        m2161s(0L);
    }

    /* renamed from: s */
    public void m2161s(long j) {
        synchronized (sLock) {
            if (this.f3566Hj.weakCompareAndSet(false, true)) {
                f3565Hi.add(this);
                this.f3567Hk = System.currentTimeMillis();
            }
            if (j > 0) {
                HandlerC3839wk.m1555nr().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.tk.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C3637tk.this.release();
                    }
                }, j);
            }
        }
    }

    public void release() {
        synchronized (sLock) {
            this.f3566Hj.weakCompareAndSet(true, false);
            f3565Hi.remove(this);
            if (!m2166jL()) {
                MainExitReceiver.m13404jF();
            }
        }
    }

    /* renamed from: jN */
    public boolean m2164jN() {
        return this.f3566Hj.get();
    }

    /* renamed from: jO */
    private void m2163jO() {
    }

    public static void dump() {
        synchronized (sLock) {
            for (C3637tk c3637tk : f3565Hi) {
                c3637tk.m2163jO();
            }
        }
    }

    /* renamed from: jP */
    private static boolean m2162jP() {
        return KApplication.m13450hT() == 1;
    }
}
