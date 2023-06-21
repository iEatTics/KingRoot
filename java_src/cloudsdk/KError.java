package cloudsdk;
/* loaded from: classes.dex */
public class KError {
    public static final int NONE = 0;

    /* renamed from: c */
    private static final ThreadLocal<KError> f93c = new ThreadLocal<>();

    /* renamed from: d */
    private String f94d = "";

    /* renamed from: e */
    private String f95e = "";

    /* renamed from: f */
    private Throwable f96f;

    public static void set(String str, String str2, Throwable th) {
        KError kError = f93c.get();
        if (kError == null) {
            kError = new KError();
            f93c.set(kError);
        }
        kError.f94d = str;
        kError.f95e = str2;
        kError.f96f = th;
    }

    public static void set(int i, String str, Throwable th) {
        set(new StringBuilder().append(i).toString(), str, th);
    }

    public static void set(int i, String str) {
        set(i, str, (Throwable) null);
    }

    public static String getCode() {
        KError kError = f93c.get();
        return kError == null ? "0" : kError.f94d;
    }

    public static String getMsg() {
        KError kError = f93c.get();
        return kError == null ? "" : kError.f95e;
    }

    public static Throwable getCause() {
        KError kError = f93c.get();
        if (kError == null) {
            return null;
        }
        return kError.f96f;
    }

    public static String getMsgAndCause() {
        return getMsg() + getThrowMsg(getCause());
    }

    public static void clean() {
        if (f93c.get() != null) {
            f93c.remove();
        }
    }

    public static boolean exist() {
        KError kError = f93c.get();
        return kError != null && "0".equals(kError.f94d);
    }

    public static String getThrowMsg(Throwable th) {
        Throwable cause;
        if (th != null) {
            String th2 = th.toString();
            Throwable cause2 = th.getCause();
            if (cause2 != null) {
                String str = th2 + "_cause_" + cause2.toString();
                if (cause2.getCause() != null) {
                    return str + "_cause_" + cause.toString();
                }
                return str;
            }
            return th2;
        }
        return "";
    }
}
