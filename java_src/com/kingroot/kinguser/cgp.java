package com.kingroot.kinguser;

import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes.dex */
public final class cgp {
    private static boolean cet = false;
    private static cgm ceu = new cgs();

    public static boolean isEnable() {
        return cet;
    }

    public static void setLogEnable(boolean z) {
        cet = z;
        if (z) {
            ceu = new cgq();
        } else {
            ceu = new cgs();
        }
    }

    /* renamed from: h */
    public static void m4321h(String str, Object obj) {
        ceu.m4329w(str, m4322A(obj));
    }

    /* renamed from: A */
    private static String m4322A(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Throwable) {
            return getStackTraceString((Throwable) obj);
        }
        return obj.toString();
    }

    public static String getStackTraceString(Throwable th) {
        if (th == null) {
            return "(Null stack trace)";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        printWriter.close();
        return stringWriter2;
    }
}
