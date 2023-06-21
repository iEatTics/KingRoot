package com.tencent.feedback.common;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import com.tencent.feedback.proguard.C4119a;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.tencent.feedback.common.f */
/* loaded from: classes.dex */
public final class C4075f {

    /* renamed from: a */
    public static boolean f4472a;

    /* renamed from: d */
    private static StringBuffer f4475d;

    /* renamed from: e */
    private static StringBuffer f4476e;

    /* renamed from: f */
    private static C4077a f4477f;

    /* renamed from: g */
    private static String f4478g;

    /* renamed from: h */
    private static Context f4479h;

    /* renamed from: i */
    private static String f4480i;

    /* renamed from: j */
    private static boolean f4481j;

    /* renamed from: k */
    private static int f4482k;

    /* renamed from: m */
    private static Class<?> f4484m;

    /* renamed from: n */
    private static Method f4485n;

    /* renamed from: b */
    private static SimpleDateFormat f4473b = new SimpleDateFormat("MM-dd HH:mm:ss");

    /* renamed from: c */
    private static int f4474c = 5120;

    /* renamed from: l */
    private static Object f4483l = new Object();

    static {
        f4484m = null;
        f4485n = null;
        try {
            Class<?> cls = Class.forName("com.tencent.feedback.eup.jni.NativeExceptionUpload");
            f4484m = cls;
            f4485n = cls.getDeclaredMethod("appendLogToNative", String.class, String.class, String.class);
        } catch (Throwable th) {
            Log.w("eup", th.getMessage());
        }
    }

    /* renamed from: c */
    private static boolean m997c(String str, String str2, String str3) {
        if (f4484m == null || f4485n == null) {
            return false;
        }
        try {
            return ((Boolean) f4485n.invoke(f4484m, str, str2, str3)).booleanValue();
        } catch (Throwable th) {
            Log.w("eup", th.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static synchronized void m1005a(Context context) {
        synchronized (C4075f.class) {
            if (!f4481j && context != null) {
                f4472a = C4073e.m1021a() != null;
                f4476e = new StringBuffer(0);
                f4475d = new StringBuffer(0);
                f4479h = context;
                f4478g = C4071c.m1088a(context).m1101H();
                f4480i = f4479h.getFilesDir().getPath() + "/buglylog_" + f4478g + "_.txt";
                f4482k = Process.myPid();
                f4481j = true;
            }
        }
    }

    /* renamed from: a */
    public static void m1006a(int i) {
        synchronized (f4483l) {
            f4474c = i;
            if (i < 0) {
                f4474c = 0;
            } else if (i > 10240) {
                f4474c = 10240;
            }
        }
        if (f4472a) {
            Log.i("eup", "[log] cache is set to " + f4474c);
        }
    }

    /* renamed from: a */
    public static void m1003a(String str, String str2, String str3) {
        if (f4472a) {
            m999b(str, str2, str3);
        }
    }

    /* renamed from: a */
    public static void m1002a(String str, String str2, Throwable th) {
        if (th != null) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            m999b(str, str2, message + '\n' + C4119a.m745a(th));
        }
    }

    /* renamed from: b */
    public static synchronized void m999b(String str, String str2, String str3) {
        synchronized (C4075f.class) {
            if (f4481j) {
                m997c(str, str2, str3);
                int myTid = Process.myTid();
                f4475d.setLength(0);
                if (str3.length() > 30720) {
                    str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
                    if (f4472a) {
                        Log.w("eup", "[log] your log is too long, will be substring");
                    }
                }
                f4475d.append(f4473b.format(new Date())).append(" ").append(f4482k).append(" ").append(myTid).append(" ").append(str).append(" ").append(str2).append(": ").append(str3).append("\u0001\r\n");
                final String stringBuffer = f4475d.toString();
                f4476e.append(stringBuffer);
                if (f4476e.length() > f4474c) {
                    AbstractC4069b.m1113b().mo1111a(new Runnable() { // from class: com.tencent.feedback.common.f.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            synchronized (C4075f.f4483l) {
                                if (C4075f.f4476e.length() > C4075f.f4474c) {
                                    if (C4075f.f4477f == null) {
                                        C4077a unused = C4075f.f4477f = new C4077a(C4075f.f4480i);
                                    } else if (C4075f.f4477f.f4488b.length() + C4075f.f4476e.length() > C4075f.f4477f.f4491e) {
                                        C4075f.f4477f.m994a();
                                    }
                                    if (C4075f.f4477f.f4487a) {
                                        C4075f.f4477f.m992a(C4075f.f4476e.toString());
                                        C4075f.f4476e.setLength(0);
                                    } else {
                                        C4075f.f4476e.setLength(0);
                                        C4075f.f4476e.append(stringBuffer);
                                    }
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    public static byte[] m1001a(boolean z) {
        byte[] bArr = null;
        synchronized (f4483l) {
            File file = (f4477f == null || !f4477f.f4487a) ? null : f4477f.f4488b;
            if (f4476e.length() != 0 || file != null) {
                bArr = C4119a.m749a(file, f4476e.toString());
            }
        }
        return bArr;
    }

    /* renamed from: com.tencent.feedback.common.f$a */
    /* loaded from: classes.dex */
    public static class C4077a {

        /* renamed from: a */
        private boolean f4487a;

        /* renamed from: b */
        private File f4488b;

        /* renamed from: c */
        private String f4489c;

        /* renamed from: d */
        private long f4490d;

        /* renamed from: e */
        private long f4491e = 30720;

        public C4077a(String str) {
            if (str == null || str.equals("")) {
                if (C4075f.f4472a) {
                    Log.w("eup", "[log] file path is: " + str);
                    return;
                }
                return;
            }
            this.f4489c = str;
            this.f4487a = m994a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public synchronized boolean m994a() {
            boolean z = false;
            synchronized (this) {
                try {
                    this.f4488b = new File(this.f4489c);
                    if (this.f4488b.exists() && !this.f4488b.delete()) {
                        if (C4075f.f4472a) {
                            Log.w("eup", "[log] create log file error: " + this.f4489c);
                        }
                        this.f4487a = false;
                    } else if (!this.f4488b.createNewFile()) {
                        if (C4075f.f4472a) {
                            Log.w("eup", "[log] create log file error: " + this.f4489c);
                        }
                        this.f4487a = false;
                    } else {
                        if (C4075f.f4472a) {
                            Log.i("eup", "[log] create log file success: " + this.f4489c);
                        }
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: a */
        public final synchronized boolean m992a(String str) {
            byte[] bytes;
            boolean z = false;
            synchronized (this) {
                if (this.f4487a) {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f4488b, true);
                    fileOutputStream.write(str.getBytes("UTF-8"));
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.f4490d = bytes.length + this.f4490d;
                    z = true;
                }
            }
            return z;
        }
    }
}
