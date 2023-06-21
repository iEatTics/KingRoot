package com.tencent.feedback.eup.jni;

import com.tencent.feedback.common.C4073e;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class NativeExceptionUpload {
    public static final int ANDROID_LOG_DEBUG = 3;
    public static final int ANDROID_LOG_ERROR = 6;
    public static final int ANDROID_LOG_INFO = 4;
    public static final int ANDROID_LOG_WARN = 5;
    public static final int JAR_JNI_VERSION = 1;

    /* renamed from: a */
    private static AtomicBoolean f4596a = new AtomicBoolean(false);

    /* renamed from: b */
    private static boolean f4597b = false;

    /* renamed from: c */
    private static NativeExceptionHandler f4598c = null;

    protected static native boolean appendNativeLog(String str, String str2, String str3);

    protected static native boolean appendWholeNativeLog(String str);

    protected static native void doNativeCrashForTest();

    protected static native void enableHandler(boolean z);

    protected static native String getNativeKeyValueList();

    protected static native String getNativeLog();

    protected static native boolean putNativeKeyValue(String str, String str2);

    protected static native boolean registNativeExceptionHandler(String str, String str2, int i);

    protected static native String registNativeExceptionHandler2(String str, String str2, int i, int i2);

    protected static native String removeNativeKeyValue(String str);

    protected static native void setLogMode(int i);

    public static synchronized boolean loadRQDNativeLib(File file) {
        boolean z = true;
        synchronized (NativeExceptionUpload.class) {
            if (file != null) {
                if (file.exists() && file.canRead()) {
                    C4073e.m1015b("load %s", file.getAbsolutePath());
                    System.load(file.getAbsolutePath());
                    f4596a.set(true);
                }
            }
            z = false;
        }
        return z;
    }

    public static synchronized boolean loadRQDNativeLib(List<File> list) {
        File next;
        boolean loadRQDNativeLib;
        synchronized (NativeExceptionUpload.class) {
            if (list != null) {
                Iterator<File> it = list.iterator();
                while (it.hasNext()) {
                    next = it.next();
                    if (next.exists() && next.isFile() && next.getName().equals("libNativeRQD.so")) {
                        break;
                    }
                }
            }
            next = null;
            loadRQDNativeLib = next != null ? loadRQDNativeLib(next) : false;
        }
        return loadRQDNativeLib;
    }

    public static synchronized boolean loadRQDNativeLib() {
        boolean z = true;
        synchronized (NativeExceptionUpload.class) {
            try {
                System.loadLibrary("NativeRQD");
                f4596a.set(true);
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  load library fail! see detail ,will turn off native eup function!}", new Object[0]);
                z = false;
            }
        }
        return z;
    }

    public static synchronized NativeExceptionHandler getmHandler() {
        NativeExceptionHandler nativeExceptionHandler;
        synchronized (NativeExceptionUpload.class) {
            nativeExceptionHandler = f4598c;
        }
        return nativeExceptionHandler;
    }

    public static synchronized void setmHandler(NativeExceptionHandler nativeExceptionHandler) {
        synchronized (NativeExceptionUpload.class) {
            f4598c = nativeExceptionHandler;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v4 */
    public static boolean registEUP(String str, String str2, int i) {
        ?? r0 = 0;
        if (!f4596a.get()) {
            C4073e.m1013c("rqdp{  nreg disable!}", new Object[0]);
            return false;
        } else if (str == null || str.trim().length() <= 0) {
            C4073e.m1013c("rqdp{  nreg param!}", new Object[0]);
            return false;
        } else {
            try {
                String registNativeExceptionHandler2 = registNativeExceptionHandler2(str, str2, i, 1);
                C4073e.m1015b("Check extra jni for RQD NDK: %s", registNativeExceptionHandler2);
                String replace = "nativeRqd.2.1.0".replace("nativeRqd.", "").replace(".", "");
                String replace2 = registNativeExceptionHandler2.replace("nativeRqd.", "").replace(".", "");
                if (replace2.length() == 2) {
                    replace2 = replace2 + "0";
                } else if (replace2.length() == 1) {
                    replace2 = replace2 + "00";
                }
                if (Integer.parseInt(replace2) >= Integer.parseInt(replace)) {
                    f4597b = true;
                }
                if (f4597b) {
                    C4073e.m1017a("Extra bugly jni can be accessed.", new Object[0]);
                } else {
                    C4073e.m1013c("Extra bugly jni can not be accessed.", new Object[0]);
                }
                C4073e.m1017a("jarV:%d nativeV:%s", 1, registNativeExceptionHandler2);
                r0 = 1;
                return true;
            } catch (Throwable th) {
                Object[] objArr = new Object[1];
                objArr[r0] = th.getMessage();
                C4073e.m1013c("regist fail:%s , try old regist", objArr);
                try {
                    return registNativeExceptionHandler(str, str2, i);
                } catch (Throwable th2) {
                    Object[] objArr2 = new Object[1];
                    objArr2[r0] = th2.getMessage();
                    C4073e.m1013c("regist fail:%s", objArr2);
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    if (!C4073e.m1016a(th2)) {
                        th2.printStackTrace();
                        return r0;
                    }
                    return r0;
                }
            }
        }
    }

    public static void enableNativeEUP(boolean z) {
        if (!f4596a.get()) {
            C4073e.m1013c("rqdp{  n enable disable!!}", new Object[0]);
            return;
        }
        try {
            enableHandler(z);
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
        }
    }

    public static void testNativeCrash() {
        if (!f4596a.get()) {
            C4073e.m1013c("rqdp{  n testNC disable!!}", new Object[0]);
        } else {
            doNativeCrashForTest();
        }
    }

    public static void setNativeLogMode(int i) {
        if (!f4596a.get()) {
            C4073e.m1013c("rqdp{  n sNL disable!!}", new Object[0]);
            return;
        }
        try {
            setLogMode(i);
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
        }
    }

    public static boolean appendLogToNative(String str, String str2, String str3) {
        if (!f4596a.get() || !f4597b || str == null || str2 == null || str3 == null) {
            return false;
        }
        try {
            return appendNativeLog(str, str2, str3);
        } catch (NoSuchMethodError e) {
            f4597b = false;
            return false;
        } catch (Throwable th) {
            if (C4073e.m1016a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    public static boolean putKeyValueToNative(String str, String str2) {
        if (!f4596a.get() || !f4597b || str == null || str2 == null) {
            return false;
        }
        try {
            return putNativeKeyValue(str, str2);
        } catch (NoSuchMethodError e) {
            f4597b = false;
            return false;
        } catch (Throwable th) {
            if (C4073e.m1016a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }
}
