package com.tencent.feedback.eup;

import android.content.Context;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import com.tencent.feedback.common.AbstractC4069b;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4072d;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4075f;
import com.tencent.feedback.common.C4078g;
import com.tencent.feedback.eup.jni.C4095b;
import com.tencent.feedback.eup.jni.C4097d;
import com.tencent.feedback.eup.jni.NativeExceptionUpload;
import com.tencent.feedback.eup.jni.RunnableC4093a;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4135p;
import com.tencent.feedback.proguard.C4136q;
import com.tencent.feedback.proguard.C4140u;
import com.tencent.feedback.proguard.C4145x;
import com.tencent.feedback.proguard.RunnableC4143v;
import com.tencent.feedback.proguard.RunnableC4148z;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.UploadHandleListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes.dex */
public class CrashReport {

    /* renamed from: a */
    private static boolean f4512a = true;

    public static void initCrashReport(Context context) {
        initCrashReport(context, null, null, true, null);
    }

    public static void initCrashReport(Context context, boolean z) {
        if (f4512a) {
            C4075f.m1005a(context);
        }
        C4091f.m816a(context, "10000", false, C4091f.m815a(context, z), null, null, null);
    }

    public static void initCrashReport(Context context, CrashHandleListener crashHandleListener, UploadHandleListener uploadHandleListener, boolean z, CrashStrategyBean crashStrategyBean) {
        if (f4512a) {
            C4075f.m1005a(context);
        }
        C4091f.m816a(context, "10000", false, C4091f.m815a(context, z), uploadHandleListener, crashHandleListener, crashStrategyBean);
    }

    public static void initCrashReport(Context context, CrashHandleListener crashHandleListener, UploadHandleListener uploadHandleListener, boolean z, CrashStrategyBean crashStrategyBean, long j) {
        if (f4512a) {
            C4075f.m1005a(context);
        }
        if (j > 0) {
            if (j > 10000) {
                j = 10000;
            }
            RunnableC4143v.m584a(j);
        }
        C4091f.m816a(context, null, false, C4091f.m815a(context, z), uploadHandleListener, crashHandleListener, crashStrategyBean);
    }

    public static void initNativeCrashReport(Context context, String str, boolean z) {
        initNativeCrashReport(context, str, z, null, null);
    }

    public static void initNativeCrashReport(Context context, String str, boolean z, List<File> list) {
        initNativeCrashReport(context, str, z, list, null);
    }

    public static void initNativeCrashReport(Context context, String str, boolean z, List<File> list, File file) {
        CrashStrategyBean m801s;
        if (C4095b.m789a() != null) {
            C4073e.m1017a("already inited Native", new Object[0]);
            return;
        }
        if (file != null) {
            if (!NativeExceptionUpload.loadRQDNativeLib(file)) {
                C4073e.m1012d("load lib fail %s close native return!", file.getAbsoluteFile());
                return;
            }
            C4073e.m1017a("load lib sucess from specify!", new Object[0]);
        } else if (!NativeExceptionUpload.loadRQDNativeLib()) {
            C4073e.m1012d("load lib fail default close native return!", new Object[0]);
            return;
        } else {
            C4073e.m1017a("load lib sucess default!", new Object[0]);
        }
        C4095b m788a = C4095b.m788a(context);
        m788a.m786a(str);
        NativeExceptionUpload.setmHandler(m788a);
        if (file != null) {
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(file);
        }
        if (context == null || str == null) {
            C4073e.m1013c("rqdp{  nreg param!}", new Object[0]);
        } else {
            C4140u.m598a(context).m597a(new C4097d(context, str, C4119a.m727c() - (((m801s.getRecordOverDays() * 24) * 3600) * 1000), C4091f.m808l().m801s().getMaxStoredNum(), "tomb_", ".txt"));
            C4073e.m1017a("add clean task to query listener", new Object[0]);
            String str2 = "/data/data/" + context.getPackageName() + "/lib/";
            if (C4071c.m1088a(context).m1107B() == null) {
                C4073e.m1015b("no setted SO , query so!", new Object[0]);
                AbstractC4069b.m1113b().mo1111a(new RunnableC4093a(context, str2, list));
            }
        }
        C4072d.m1041a(context);
        String m1036d = C4072d.m1036d();
        C4072d.m1041a(context);
        NativeExceptionUpload.registEUP(str, m1036d, Integer.parseInt(C4072d.m1038c()));
        NativeExceptionUpload.enableNativeEUP(true);
        if (z) {
            NativeExceptionUpload.setNativeLogMode(3);
        } else {
            NativeExceptionUpload.setNativeLogMode(5);
        }
    }

    public static CrashStrategyBean getCrashRuntimeStrategy() {
        try {
            return C4091f.m808l().m801s();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static void setUserId(Context context, String str) {
        C4071c.m1088a(context).m1087a(str);
        RunnableC4148z m561a = RunnableC4148z.m561a();
        if (m561a != null) {
            C4073e.m1015b("record uidstate async", new Object[0]);
            m561a.m550c();
        }
    }

    public static boolean addPlugin(Context context, String str, String str2, String str3) {
        if (str == null || str2 == null) {
            return false;
        }
        C4071c m1088a = C4071c.m1088a(context);
        if (str3 == null) {
            str3 = "";
        }
        return m1088a.m1085a(str, str2, str3);
    }

    public static void removePlugin(Context context, String str) {
        if (str != null) {
            C4071c.m1088a(context).m1070f(str);
        }
    }

    public static int countExceptionDatas(Context context) {
        if (C4091f.m805o()) {
            C4091f m808l = C4091f.m808l();
            if (m808l == null) {
                C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
                return -1;
            }
            return m808l.mo811g();
        }
        return -1;
    }

    public static byte[] getExceptionDatas(Context context) {
        AbstractUploadDatas m807m = C4091f.m807m();
        if (m807m != null) {
            byte[] m541a = m807m.m541a(true);
            if (m541a != null) {
                m807m.done(true);
                return m541a;
            }
            return m541a;
        }
        return null;
    }

    public static boolean doUploadExceptionDatas() {
        return C4091f.m806n();
    }

    public static int countStoredRecord(Context context) {
        return C4085b.m924b(context);
    }

    public static boolean handleCatchException(Thread thread, Throwable th, String str, byte[] bArr) {
        return C4091f.m813a(thread, th, str, bArr);
    }

    public static void setCrashReportAble(boolean z) {
        C4091f m808l = C4091f.m808l();
        if (m808l != null) {
            m808l.m967a(z);
        }
    }

    public static void setNativeCrashReportAble(boolean z) {
        NativeExceptionUpload.enableNativeEUP(z);
    }

    public static long getSDKTotalConsume(Context context, boolean z) {
        C4136q m983b = C4078g.m983b(context);
        if (m983b != null) {
            if (z) {
                return m983b.f4769e;
            }
            return m983b.f4769e + m983b.f4768d;
        }
        return -1L;
    }

    public static void clearSDKTotalConsume(Context context) {
        C4078g.m980c(context);
    }

    public static void setLogAble(boolean z, boolean z2) {
        C4073e.m1018a(z ? new C4073e.InterfaceC4074a() : null);
        if (z) {
            C4073e.m1013c("'setLogAble(boolean)' is true , so running in debug model , close it when you release!", new Object[0]);
        }
    }

    public static void setCustomLogEnable(boolean z) {
        f4512a = z;
    }

    public static void setThreadPoolService(ScheduledExecutorService scheduledExecutorService) {
        AbstractC4069b.m1115a(AbstractC4069b.m1114a(scheduledExecutorService));
    }

    public static void setDeviceId(Context context, String str) {
        C4071c.m1088a(context).m1081b(str);
    }

    public static void setCountryName(Context context, String str) {
        C4071c.m1088a(context).m1068g(str);
    }

    public static void setAPKSHa1(Context context, String str) {
        C4071c.m1088a(context).m1074d(str);
        C4073e.m1015b("set sha1 %s", str);
    }

    public static void setSOFile(Context context, List<SOFile> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            C4071c m1088a = C4071c.m1088a(context);
            for (SOFile sOFile : list) {
                C4135p c4135p = new C4135p();
                c4135p.m628a(sOFile.fileName);
                c4135p.m622c(sOFile.arch);
                c4135p.m625b(sOFile.sha1);
                C4073e.m1015b("setsofile %s %s %s", c4135p.m631a(), c4135p.m619f(), c4135p.m621d());
                arrayList.add(c4135p);
            }
            if (arrayList.size() > 0) {
                m1088a.m1084a(arrayList);
                C4073e.m1015b("setted so count %d", Integer.valueOf(arrayList.size()));
            }
        }
    }

    public static void setProductVersion(Context context, String str) {
        C4071c.m1088a(context).m1066h(str);
        C4073e.m1015b("setted version %s", str);
    }

    public static void setDeviceRooted(Context context, boolean z) {
        C4071c.m1088a(context).m1083a(z);
        C4073e.m1015b("setted isRT %s", new StringBuilder().append(z).toString());
    }

    public static void setDengta_AppKey(Context context, String str) {
        C4071c.m1088a(context).m1072e(str);
        C4073e.m1015b("setted beacon appkey %s", str);
    }

    public static void setProductID(Context context, String str) {
        C4071c.m1088a(context).m1062j(str);
        C4073e.m1015b("setted ProductID %s", str);
    }

    public static void setUserSceneTag(Context context, int i) {
        if (context == null) {
            C4073e.m1013c("setTag args context should not be null", new Object[0]);
        } else if (i <= 0) {
            C4073e.m1013c("setTag args tagId should > 0", new Object[0]);
        } else {
            C4071c.m1088a(context).m1090a(i);
        }
    }

    public static void setServerUrl(String str) {
        if (C4091f.m808l() != null) {
            C4073e.m1012d("Please set server URL before initiating CrashReport.", new Object[0]);
        } else if (str != null) {
            C4145x.f4795b = str;
            C4073e.m1015b("Server URL has changed to: %s", str);
        }
    }

    public static void setIsAppForeground(Context context, boolean z) {
        C4071c.m1088a(context).m1079b(z);
        if (z) {
            C4073e.m1015b("App is in foreground.", new Object[0]);
        } else {
            C4073e.m1015b("App is in background.", new Object[0]);
        }
    }

    public static int getUserSceneTagId(Context context) {
        if (context == null) {
            C4073e.m1013c("get user scene tag context is null", new Object[0]);
            return -1;
        }
        return C4071c.m1088a(context).m1100I();
    }

    public static String getUserData(Context context, String str) {
        if (context == null) {
            return null;
        }
        if (str == null || str.trim().length() <= 0) {
            return null;
        }
        return C4071c.m1088a(context).m1058l(str);
    }

    public static void putUserData(Context context, String str, String str2) {
        if (context == null) {
            C4073e.m1013c("putUserData args context should not be null", new Object[0]);
            return;
        }
        if (str == null || str.trim().length() <= 0) {
            C4073e.m1013c("putUserData args key should not be null", new Object[0]);
        } else if (!str.matches("[a-zA-Z[0-9]]+")) {
            C4073e.m1013c("putUserData args key should match [a-zA-Z[0-9]]+  {" + str + "}", new Object[0]);
        } else {
            String str3 = str2;
            if (str3.length() > 200) {
                C4073e.m1013c("user data value length over limit %d , has been cutted!", Integer.valueOf((int) ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION));
                str3 = str3.substring(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
            }
            C4071c m1088a = C4071c.m1088a(context);
            if (m1088a.m1096M().contains(str)) {
                C4071c.m1088a(context).m1086a(str, str3);
                C4073e.m1015b("replace KV %s %s", str, str3);
            } else if (m1088a.m1097L() >= 10) {
                C4073e.m1013c("user data size is over limit %d , will drop this new key %s", 10, str);
            } else if (str.length() > 50) {
                C4073e.m1013c("user data key length over limit %d , will drop this new key %s", 50, str);
            } else {
                C4071c.m1088a(context).m1086a(str, str3);
                C4073e.m1015b("added KV %s %s", str, str3);
            }
        }
    }

    public static String removeUserData(Context context, String str) {
        boolean z = false;
        if (context == null) {
            C4073e.m1013c("removeUserData args context should not be null", new Object[0]);
        }
        if ((str == null || str.trim().length() <= 0) ? true : true) {
            return null;
        }
        return C4071c.m1088a(context).m1060k(str);
    }

    public static Set<String> getAllUserDataKeys(Context context) {
        if (context == null) {
            C4073e.m1013c("getAllUserDataKeys args context should not be null", new Object[0]);
        }
        return C4071c.m1088a(context).m1096M();
    }

    public static int getUserDatasSize(Context context) {
        if (context == null) {
            C4073e.m1013c("getUserDatasSize args context should not be null", new Object[0]);
        }
        return C4071c.m1088a(context).m1097L();
    }
}
