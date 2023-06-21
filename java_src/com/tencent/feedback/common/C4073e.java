package com.tencent.feedback.common;

import android.util.Log;
import com.tencent.feedback.proguard.C4119a;
import java.util.Locale;
/* renamed from: com.tencent.feedback.common.e */
/* loaded from: classes.dex */
public final class C4073e {

    /* renamed from: a */
    private static InterfaceC4074a f4471a = null;

    /* renamed from: com.tencent.feedback.common.e$a */
    /* loaded from: classes.dex */
    public interface InterfaceC4074a {
        /* renamed from: a */
        default void m1011a(String str) {
            Log.i("eup", str);
        }

        /* renamed from: b */
        default void m1010b(String str) {
            Log.d("eup", str);
        }

        /* renamed from: c */
        default void m1009c(String str) {
            Log.w("eup", str);
        }

        /* renamed from: d */
        default void m1008d(String str) {
            Log.e("eup", str);
        }
    }

    /* renamed from: a */
    public static synchronized InterfaceC4074a m1021a() {
        InterfaceC4074a interfaceC4074a;
        synchronized (C4073e.class) {
            interfaceC4074a = f4471a;
        }
        return interfaceC4074a;
    }

    /* renamed from: a */
    public static synchronized void m1018a(InterfaceC4074a interfaceC4074a) {
        synchronized (C4073e.class) {
            f4471a = interfaceC4074a;
        }
    }

    /* renamed from: a */
    private static boolean m1020a(int i, String str, Object... objArr) {
        InterfaceC4074a m1021a = m1021a();
        if (m1021a == null) {
            return false;
        }
        if (str == null) {
            str = "null";
        } else if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        switch (i) {
            case 0:
                m1021a.m1011a(str);
                return true;
            case 1:
                m1021a.m1010b(str);
                return true;
            case 2:
                m1021a.m1009c(str);
                C4075f.m1003a("W", "eup", str);
                return true;
            case 3:
                m1021a.m1008d(str);
                C4075f.m1003a("E", "eup", str);
                return true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    private static boolean m1019a(int i, Throwable th) {
        InterfaceC4074a m1021a = m1021a();
        if (m1021a == null) {
            return false;
        }
        String m745a = C4119a.m745a(th);
        switch (i) {
            case 0:
                m1021a.m1011a(m745a);
                return true;
            case 1:
                m1021a.m1010b(m745a);
                return true;
            case 2:
                m1021a.m1009c(m745a);
                C4075f.m1003a("W", "eup", m745a);
                return true;
            case 3:
                m1021a.m1008d(m745a);
                C4075f.m1003a("E", "eup", m745a);
                return true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    public static boolean m1017a(String str, Object... objArr) {
        return m1020a(0, str, objArr);
    }

    /* renamed from: b */
    public static boolean m1015b(String str, Object... objArr) {
        return m1020a(1, str, objArr);
    }

    /* renamed from: c */
    public static boolean m1013c(String str, Object... objArr) {
        return m1020a(2, str, objArr);
    }

    /* renamed from: a */
    public static boolean m1016a(Throwable th) {
        return m1019a(2, th);
    }

    /* renamed from: d */
    public static boolean m1012d(String str, Object... objArr) {
        return m1020a(3, str, objArr);
    }

    /* renamed from: b */
    public static boolean m1014b(Throwable th) {
        return m1019a(3, th);
    }
}
