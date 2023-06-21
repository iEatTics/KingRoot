package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.kingroot.kinguser.zg */
/* loaded from: classes.dex */
public class C3951zg {

    /* renamed from: Wo */
    private static String f4071Wo = null;

    /* renamed from: Wp */
    private static boolean f4072Wp = false;

    /* renamed from: Wq */
    private static boolean f4073Wq = false;

    /* renamed from: Wr */
    private static int f4074Wr = -1;

    /* renamed from: Ws */
    private static List<String> f4075Ws = new ArrayList();

    /* renamed from: Wt */
    private static final Handler f4076Wt;

    static {
        HandlerThread handlerThread = new HandlerThread("WRITE_LOG_HANDLER");
        handlerThread.start();
        f4076Wt = new Handler(handlerThread.getLooper());
    }

    /* renamed from: g */
    public static void m1317g(@NonNull String... strArr) {
        if (f4075Ws.size() > 0) {
            f4075Ws.clear();
        }
        if (strArr != null) {
            Collections.addAll(f4075Ws, strArr);
        }
    }

    /* renamed from: d */
    public static void m1320d(boolean z, int i) {
        f4073Wq = z;
        f4074Wr = i;
    }

    /* renamed from: ih */
    private static boolean m1316ih() {
        return f4073Wq;
    }

    public static void write(String str) {
        if (m1316ih()) {
            Log.i("k_", str);
        }
    }

    /* renamed from: d */
    public static void m1322d(String str, String str2) {
        if (m1316ih()) {
            if (f4072Wp) {
                Log.d(str, str2);
                return;
            }
            String m1318dt = m1318dt(str);
            if (m1319ds(m1318dt)) {
                Log.d(m1318dt, str2);
            }
        }
    }

    /* renamed from: d */
    public static void m1321d(Throwable th) {
        m1323a(null, th);
    }

    /* renamed from: a */
    public static void m1323a(String str, Throwable th) {
        if (th != null && m1316ih()) {
            Log.w(m1318dt(str), th);
        }
    }

    /* renamed from: ds */
    private static boolean m1319ds(@NonNull String str) {
        if (C3942yy.m1352c(f4075Ws) || TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : f4075Ws) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: pp */
    private static String m1315pp() {
        if (f4071Wo != null) {
            return f4071Wo;
        }
        f4071Wo = "ptag:" + f4074Wr;
        return f4071Wo;
    }

    /* renamed from: dt */
    private static String m1318dt(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("k_");
        sb.append(m1315pp());
        sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
        sb.append(Thread.currentThread().getId());
        if (!TextUtils.isEmpty(str)) {
            sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            sb.append(str);
        }
        return sb.toString();
    }
}
