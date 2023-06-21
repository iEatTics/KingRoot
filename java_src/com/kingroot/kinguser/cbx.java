package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class cbx {
    private static final String TAG = "k_";

    /* renamed from: Wo */
    private static String f2238Wo = null;

    /* renamed from: Wp */
    private static boolean f2239Wp = false;

    /* renamed from: Wq */
    private static boolean f2240Wq = false;

    /* renamed from: Wr */
    private static int f2241Wr = -1;

    /* renamed from: Ws */
    private static List<String> f2242Ws = new ArrayList();
    public static final String bWT = "common";
    public static final String bWU = "k_framework";

    /* renamed from: g */
    public static void m4981g(@NonNull String... strArr) {
        if (f2242Ws.size() > 0) {
            f2242Ws.clear();
        }
        if (strArr != null) {
            Collections.addAll(f2242Ws, strArr);
        }
    }

    /* renamed from: k */
    public static void m4978k(@NonNull String... strArr) {
        if (strArr != null) {
            Collections.addAll(f2242Ws, strArr);
        }
    }

    /* renamed from: eD */
    public static void m4982eD(boolean z) {
        f2240Wq = z;
    }

    /* renamed from: d */
    public static void m4987d(boolean z, int i) {
        f2240Wq = z;
        f2241Wr = i;
    }

    /* renamed from: ih */
    private static boolean m4979ih() {
        return f2240Wq;
    }

    public static void write(String str) {
        if (m4979ih()) {
            Log.i(TAG, str);
        }
    }

    /* renamed from: i */
    public static void m4980i(String str, String str2) {
        if (m4979ih()) {
            if (f2239Wp) {
                Log.i(str, str2);
                return;
            }
            String m4985dt = m4985dt(str);
            if (m4986ds(m4985dt)) {
                Log.i(m4985dt, str2);
            }
        }
    }

    /* renamed from: d */
    public static void m4989d(String str, String str2) {
        if (m4979ih()) {
            if (f2239Wp) {
                Log.d(str, str2);
                return;
            }
            String m4985dt = m4985dt(str);
            if (m4986ds(m4985dt)) {
                Log.d(m4985dt, str2);
            }
        }
    }

    /* renamed from: d */
    public static void m4988d(Throwable th) {
        m4992a((String) null, th);
    }

    /* renamed from: a */
    public static void m4992a(String str, Throwable th) {
        if (th != null && m4979ih()) {
            Log.w(m4985dt(str), th);
        }
    }

    /* renamed from: c */
    public static void m4991c(String str, String str2, Throwable th) {
        if (th != null && m4979ih()) {
            Log.w(m4985dt(str), str2, th);
        }
    }

    /* renamed from: w */
    public static void m4975w(String str, String str2) {
        if (m4979ih()) {
            if (f2239Wp) {
                Log.w(str, str2);
            } else if (m4986ds(m4985dt(str))) {
                Log.w(m4985dt(str), str2);
            }
        }
    }

    /* renamed from: e */
    public static void m4983e(String str, String str2) {
        if (m4979ih()) {
            if (f2239Wp) {
                Log.e(str, str2);
            } else if (m4986ds(m4985dt(str))) {
                Log.e(m4985dt(str), str2);
            }
        }
    }

    /* renamed from: l */
    public static void m4977l(Throwable th) {
        if (th != null && m4979ih()) {
            Log.e(m4985dt(null), "error", th);
        }
    }

    /* renamed from: d */
    public static void m4990d(@NonNull File file, @NonNull String str) {
        if (file != null && !TextUtils.isEmpty(str)) {
            new cbz(file, str).m5114X(true);
        }
    }

    @WorkerThread
    /* renamed from: e */
    public static void m4984e(@NonNull File file, @NonNull String str) {
        FileOutputStream fileOutputStream;
        if (file != null && !TextUtils.isEmpty(str)) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    if (!file.exists()) {
                        file.getAbsoluteFile().getParentFile().mkdirs();
                        file.createNewFile();
                    }
                    fileOutputStream = new FileOutputStream(file, true);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                fileOutputStream.write(str.getBytes());
                fileOutputStream.close();
                C3141gx.m3645a(fileOutputStream);
            } catch (Exception e2) {
                e = e2;
                fileOutputStream2 = fileOutputStream;
                m4992a(bWT, e);
                C3141gx.m3645a(fileOutputStream2);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                C3141gx.m3645a(fileOutputStream2);
                throw th;
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static void m4993a(@NonNull File file, @NonNull Throwable th) {
        m4984e(file, Log.getStackTraceString(th));
    }

    /* renamed from: ds */
    private static boolean m4986ds(@NonNull String str) {
        if (C3137gu.m3653a(f2242Ws) || TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : f2242Ws) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: pp */
    private static String m4976pp() {
        if (f2238Wo != null) {
            return f2238Wo;
        }
        f2238Wo = "ptag:" + f2241Wr;
        return f2238Wo;
    }

    /* renamed from: dt */
    private static String m4985dt(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(TAG);
        sb.append(m4976pp());
        sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
        sb.append(Thread.currentThread().getId());
        if (!TextUtils.isEmpty(str)) {
            sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            sb.append(str);
        }
        return sb.toString();
    }
}
