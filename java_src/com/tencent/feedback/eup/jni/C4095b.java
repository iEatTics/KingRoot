package com.tencent.feedback.eup.jni;

import android.content.Context;
import android.util.Log;
import com.tencent.feedback.anr.C4061b;
import com.tencent.feedback.common.C4068a;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import com.tencent.feedback.eup.C4085b;
import com.tencent.feedback.eup.C4088c;
import com.tencent.feedback.eup.C4090e;
import com.tencent.feedback.eup.C4091f;
import com.tencent.feedback.eup.CrashHandleListener;
import com.tencent.feedback.eup.CrashReport;
import com.tencent.feedback.proguard.C4119a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.eup.jni.b */
/* loaded from: classes.dex */
public final class C4095b implements NativeExceptionHandler {

    /* renamed from: b */
    private static C4095b f4602b;

    /* renamed from: a */
    private Context f4603a;

    /* renamed from: c */
    private String f4604c;

    private C4095b(Context context) {
        this.f4603a = context;
    }

    @Override // com.tencent.feedback.eup.jni.NativeExceptionHandler
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4) {
        handleNativeException(i, i2, j, j2, str, str2, str3, str4, -1234567890, "", -1, -1, -1, "", "unknown");
    }

    /* renamed from: a */
    public static synchronized C4095b m788a(Context context) {
        C4095b c4095b;
        synchronized (C4095b.class) {
            if (f4602b == null) {
                f4602b = new C4095b(context);
            }
            c4095b = f4602b;
        }
        return c4095b;
    }

    /* renamed from: a */
    public static synchronized C4095b m789a() {
        C4095b c4095b;
        synchronized (C4095b.class) {
            c4095b = f4602b;
        }
        return c4095b;
    }

    /* renamed from: b */
    private synchronized String m785b() {
        return this.f4604c;
    }

    /* renamed from: a */
    public final synchronized void m786a(String str) {
        this.f4604c = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static C4090e m787a(Context context, long j, String str, String str2, String str3, String str4, int i, String str5, int i2, String str6, byte[] bArr, String str7, String str8, String str9, String str10, byte[] bArr2, Map<String, String> map) {
        int indexOf;
        String str11;
        if (str3 == null) {
            str11 = null;
        } else {
            int indexOf2 = str3.indexOf("java.lang.Thread.getStackTrace");
            if (indexOf2 < 0) {
                str11 = str3;
            } else {
                if (str3.indexOf("\n", indexOf2) < 0) {
                    str11 = str3;
                } else {
                    str11 = str3.substring(0, indexOf2) + str3.substring(indexOf);
                }
            }
        }
        C4071c m1088a = C4071c.m1088a(context);
        C4090e m944a = C4085b.m944a(context, m1088a.m1067h(), m1088a.m1065i(), m1088a.m1061k(), m1088a.m1043z(), str9, str10, str2, str, str6, str11, j, str7, bArr);
        if (m944a == null) {
            return null;
        }
        if (bArr2 != null) {
            m944a.m874b(bArr2);
        }
        if (map != null) {
            m944a.m876b(map);
        }
        if (i > 0) {
            m944a.m884a(m944a.m861e() + "(" + str5 + ")");
            m944a.m833o("kernel");
        } else {
            m944a.m833o(str5);
            if (i2 > 0 && !str.equalsIgnoreCase("SIGABRT")) {
                m944a.m835n(C4068a.m1129a(i2));
            } else {
                m944a.m835n("unknown" + i2);
            }
        }
        C4073e.m1017a("etype:%s,sType:%s,sPN:%s", m944a.m861e(), m944a.m912B(), m944a.m913A());
        m944a.m888a((byte) 2);
        m944a.m850h(str4);
        m944a.m831p(str8);
        return m944a;
    }

    @Override // com.tencent.feedback.eup.jni.NativeExceptionHandler
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7) {
        C4073e.m1017a("Native Crash Happen v1", new Object[0]);
        handleNativeException(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x023a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0264 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.tencent.feedback.eup.jni.NativeExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7, String[] strArr) {
        CrashHandleListener m802r;
        boolean z;
        C4073e.m1017a("Native Crash Happen v2", new Object[0]);
        C4073e.m1015b("rqdp{  na eup p:} %d , t:%d , exT:%d ,exTMS: %d, exTP:%s ,exADD:%s ,parsed exSTA:%s, TMB:%s , si_code:%d , si_CodeType:%s , sPid:%d ,sUid:%d,siErr:%d,siErrMsg:%s,naVersion:%s", Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j), Long.valueOf(j2), str, str2, str3, str4, Integer.valueOf(i3), str5, Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), str6, str7);
        Log.e("eup", "native crash happen:" + str);
        Log.e("eup", str3);
        boolean m1139a = C4061b.m1138a(this.f4603a).m1139a();
        String str8 = m1139a ? "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!" : "";
        if (m1139a) {
            Log.e("eup", "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!");
        }
        byte[] bArr = null;
        String str9 = null;
        long j3 = (1000 * j) + (j2 / 1000);
        C4091f m808l = C4091f.m808l();
        if (m808l == null) {
            C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
            m802r = null;
        } else {
            m802r = m808l.m802r();
        }
        if (m802r != null) {
            try {
                C4073e.m1015b("your crhanlde start", new Object[0]);
                m802r.onCrashHandleStart(true);
            } catch (Throwable th) {
                C4073e.m1012d("on native hanlde start throw %s", th.toString());
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
            try {
                C4073e.m1015b("your crdata", new Object[0]);
                bArr = m802r.getCrashExtraData(true, str, str2, str3, i3, j3);
            } catch (Throwable th2) {
                C4073e.m1012d("get extra data error %s", th2.toString());
                if (!C4073e.m1016a(th2)) {
                    th2.printStackTrace();
                }
            }
            try {
                C4073e.m1015b("your crmsg", new Object[0]);
                str9 = m802r.getCrashExtraMessage(true, str, str2, str3, i3, j3);
            } catch (Throwable th3) {
                C4073e.m1012d("get extra msg error %s", th3.toString());
                if (!C4073e.m1016a(th3)) {
                    th3.printStackTrace();
                }
            }
        }
        String str10 = null;
        String str11 = null;
        if (strArr != null) {
            HashMap hashMap = new HashMap();
            for (String str12 : strArr) {
                String[] split = str12.split("=");
                if (split.length == 2) {
                    hashMap.put(split[0], split[1]);
                } else {
                    C4073e.m1012d("bad extraMsg %s", str12);
                }
            }
            str11 = (String) hashMap.get("ExceptionThreadName");
            str10 = (String) hashMap.get("ExceptionProcessName");
        } else {
            C4073e.m1015b("not found extraMsg", new Object[0]);
        }
        if (str10 == null || str10.length() == 0) {
            str10 = C4071c.m1091a().m1101H();
        } else {
            C4073e.m1015b("crash process name change to %s", str10);
        }
        if (str11 == null || str11.length() == 0) {
            str11 = Thread.currentThread().getName();
        } else {
            C4073e.m1015b("crash thread name change to %s", str11);
        }
        C4090e m787a = m787a(this.f4603a, j3, str, str2, str3, str4, i3, str5, i4, str8, bArr, str9, str7, str10, str11, null, null);
        if (m787a == null) {
            C4073e.m1013c("rqdp{  cr eup msg fail!}", new Object[0]);
            return;
        }
        try {
            C4073e.m1013c("rqdp{  get other stack}", new Object[0]);
            Map<String, String> m737b = C4119a.m737b();
            if (m737b != null) {
                m787a.m910D().putAll(m737b);
            }
        } catch (Throwable th4) {
            C4073e.m1012d("get all threads stack fail", new Object[0]);
            if (!C4073e.m1016a(th4)) {
                th4.printStackTrace();
            }
        }
        if (m802r != null) {
            C4073e.m1015b("your ask2save", new Object[0]);
            try {
                z = m802r.onCrashSaving(true, str, str2, str3, i3, j3, m787a.m843k(), m787a.m909E(), m787a.m820w());
            } catch (Throwable th5) {
                C4073e.m1012d("on Crash Saving error %s", th5.toString());
                if (!C4073e.m1016a(th5)) {
                    th5.printStackTrace();
                }
            }
            BuglyBroadcastRecevier.brocastCrash(this.f4603a, m787a);
            if (!z) {
                try {
                    C4088c m921a = C4088c.m921a(this.f4603a);
                    if (m921a != null) {
                        C4073e.m1015b("rqdp{  eup save} %b", Boolean.valueOf(m921a.m920a(m787a, CrashReport.getCrashRuntimeStrategy())));
                        C4096c.m781a(m785b());
                    }
                } catch (Throwable th6) {
                    C4073e.m1012d("your crash handle happen error %s", th6.toString());
                    if (!C4073e.m1016a(th6)) {
                        th6.printStackTrace();
                    }
                }
            } else {
                C4073e.m1013c("the eup no need to save!", new Object[0]);
            }
            if (m802r == null) {
                try {
                    C4073e.m1015b("your crhanlde end", new Object[0]);
                    m802r.onCrashHandleEnd(true);
                    return;
                } catch (Throwable th7) {
                    C4073e.m1012d("on native hanlde end throw %s", th7.toString());
                    if (!C4073e.m1016a(th7)) {
                        th7.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        z = true;
        BuglyBroadcastRecevier.brocastCrash(this.f4603a, m787a);
        if (!z) {
        }
        if (m802r == null) {
        }
    }
}
