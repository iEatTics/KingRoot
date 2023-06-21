package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.wk */
/* loaded from: classes.dex */
public class HandlerC3839wk extends Handler {

    /* renamed from: MK */
    private static volatile HandlerC3839wk f3871MK = null;

    /* renamed from: ML */
    private static final Object f3872ML = new Object();

    /* renamed from: MM */
    private static final Object f3873MM = new Object();

    /* renamed from: MN */
    private static Set<String> f3874MN;

    /* renamed from: nr */
    public static HandlerC3839wk m1555nr() {
        if (f3871MK == null) {
            synchronized (HandlerC3839wk.class) {
                if (f3871MK == null) {
                    f3871MK = new HandlerC3839wk(Looper.getMainLooper());
                }
            }
        }
        return f3871MK;
    }

    private HandlerC3839wk(Looper looper) {
        super(looper);
    }

    /* renamed from: do */
    public static void m1558do(String str) {
        m1555nr().obtainMessage(1, str).sendToTarget();
    }

    /* renamed from: bE */
    public static void m1559bE(int i) {
        m1555nr().obtainMessage(1, 0, 0, bzt.m5101ge().getResources().getText(i).toString()).sendToTarget();
    }

    /* renamed from: ns */
    private static Set<String> m1554ns() {
        if (f3874MN == null) {
            synchronized (f3873MM) {
                if (f3874MN == null) {
                    Object obj = null;
                    File m1553nt = m1553nt();
                    if (m1553nt.exists()) {
                        obj = C3604sq.m2244u(m1553nt);
                    }
                    if (obj != null && (obj instanceof Set)) {
                        try {
                            f3874MN = (Set) obj;
                        } catch (Throwable th) {
                        }
                    }
                    if (f3874MN == null) {
                        f3874MN = Collections.synchronizedSet(new HashSet());
                    }
                }
            }
        }
        return f3874MN;
    }

    /* renamed from: dp */
    public static boolean m1557dp(String str) {
        boolean remove;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        synchronized (f3872ML) {
            Set<String> m1554ns = m1554ns();
            remove = m1554ns.remove(str);
            if (remove) {
                m1560b(m1554ns);
            }
        }
        return remove;
    }

    /* renamed from: dq */
    public static boolean m1556dq(String str) {
        boolean add;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        synchronized (f3872ML) {
            Set<String> m1554ns = m1554ns();
            add = m1554ns.add(str);
            if (add) {
                m1560b(m1554ns);
            }
        }
        return add;
    }

    /* renamed from: nt */
    private static File m1553nt() {
        return new File(bzt.m5101ge().getFilesDir() + "/tsset.dat");
    }

    /* renamed from: b */
    private static void m1560b(Set<String> set) {
        C3604sq.m2250a(set, m1553nt());
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message != null) {
            switch (message.what) {
                case 1:
                    try {
                        if (message.obj instanceof String) {
                            Toast.makeText(bzt.m5101ge(), message.obj.toString(), message.arg1 != 0 ? 1 : 0).show();
                        } else if (message.obj instanceof CharSequence) {
                            Toast.makeText(bzt.m5101ge(), (CharSequence) message.obj, message.arg1 != 0 ? 1 : 0).show();
                        }
                        return;
                    } catch (Throwable th) {
                        return;
                    }
                case 2:
                    if (message.obj != null && (message.obj instanceof Runnable)) {
                        try {
                            ((Runnable) message.obj).run();
                            return;
                        } catch (Throwable th2) {
                            return;
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
