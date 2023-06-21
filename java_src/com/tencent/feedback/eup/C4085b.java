package com.tencent.feedback.eup;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.os.Environment;
import android.p003os.Environmenu;
import com.kingroot.loader.common.KlConst;
import com.tencent.feedback.common.C4068a;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4072d;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4075f;
import com.tencent.feedback.common.PlugInInfo;
import com.tencent.feedback.proguard.AbstractC4128j;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4120b;
import com.tencent.feedback.proguard.C4132m;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.tencent.feedback.eup.b */
/* loaded from: classes.dex */
public class C4085b {

    /* renamed from: a */
    private StringBuilder f4534a;

    /* renamed from: b */
    private int f4535b;

    /* renamed from: a */
    private void m939a(String str) {
        for (int i = 0; i < this.f4535b; i++) {
            this.f4534a.append('\t');
        }
        if (str != null) {
            this.f4534a.append(str).append(": ");
        }
    }

    public C4085b(StringBuilder sb, int i) {
        this.f4535b = 0;
        this.f4534a = sb;
        this.f4535b = i;
    }

    /* renamed from: a */
    public static boolean m946a(Context context, C4090e c4090e) {
        boolean z;
        C4073e.m1015b("rqdp{  EUPDAO.insertEUP() start}", new Object[0]);
        if (context == null || c4090e == null) {
            C4073e.m1013c("rqdp{  EUPDAO.insertEUP() have null args}", new Object[0]);
            return false;
        }
        try {
            C4132m m942a = m942a(c4090e);
            if (context == null || m942a == null) {
                C4073e.m1017a("rqdp{  AnalyticsDAO.insert() have null args}", new Object[0]);
                z = false;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(m942a);
                z = C4132m.m652a(context, arrayList);
            }
            if (z) {
                c4090e.m885a(m942a.m657a());
                C4073e.m1015b("rqdp{  EUPDAO.insertEUP() end}", new Object[0]);
                return true;
            }
            C4073e.m1015b("rqdp{  EUPDAO.insertEUP() end}", new Object[0]);
            return false;
        } catch (Throwable th) {
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  insert fail!}", new Object[0]);
                C4073e.m1015b("rqdp{  EUPDAO.insertEUP() end}", new Object[0]);
                return false;
            } catch (Throwable th2) {
                C4073e.m1015b("rqdp{  EUPDAO.insertEUP() end}", new Object[0]);
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public C4085b m932a(boolean z, String str) {
        m939a(str);
        this.f4534a.append(z ? 'T' : 'F').append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m954a(byte b, String str) {
        m939a(str);
        this.f4534a.append((int) b).append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m953a(char c, String str) {
        m939a(str);
        this.f4534a.append(c).append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m933a(short s, String str) {
        m939a(str);
        this.f4534a.append((int) s).append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m950a(int i, String str) {
        m939a(str);
        this.f4534a.append(i).append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m949a(long j, String str) {
        m939a(str);
        this.f4534a.append(j).append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m951a(float f, String str) {
        m939a(str);
        this.f4534a.append(f).append('\n');
        return this;
    }

    /* renamed from: a */
    public C4085b m952a(double d, String str) {
        m939a(str);
        this.f4534a.append(d).append('\n');
        return this;
    }

    /* renamed from: a */
    public static int m943a(Context context, List<C4090e> list) {
        int i = 0;
        C4073e.m1015b("rqdp{  EUPDAO.deleteEupList() start}", new Object[0]);
        if (context == null) {
            C4073e.m1013c("rqdp{  deleteEupList() have null args!}", new Object[0]);
            return -1;
        } else if (list.size() <= 0) {
            return 0;
        } else {
            Long[] lArr = new Long[list.size()];
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    lArr[i2] = Long.valueOf(list.get(i2).m889a());
                    i = i2 + 1;
                } else {
                    return C4132m.m646a(context, lArr);
                }
            }
        }
    }

    /* renamed from: a */
    public C4085b m938a(String str, String str2) {
        m939a(str2);
        if (str == null) {
            this.f4534a.append("null\n");
        } else {
            this.f4534a.append(str).append('\n');
        }
        return this;
    }

    /* renamed from: a */
    public C4085b m931a(byte[] bArr, String str) {
        m939a(str);
        if (bArr == null) {
            this.f4534a.append("null\n");
        } else if (bArr.length == 0) {
            this.f4534a.append(bArr.length).append(", []\n");
        } else {
            this.f4534a.append(bArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (byte b : bArr) {
                c4085b.m954a(b, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* renamed from: b */
    public static int m924b(Context context) {
        C4073e.m1015b("rqdp{  EUPDAO.querySum() start}", new Object[0]);
        if (context == null) {
            C4073e.m1013c("rqdp{  querySum() context is null arg}", new Object[0]);
            return -1;
        }
        return C4132m.m647a(context, new int[]{2, 1}, -1L, Long.MAX_VALUE, null);
    }

    /* renamed from: a */
    public C4085b m925a(short[] sArr, String str) {
        m939a(str);
        if (sArr == null) {
            this.f4534a.append("null\n");
        } else if (sArr.length == 0) {
            this.f4534a.append(sArr.length).append(", []\n");
        } else {
            this.f4534a.append(sArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (short s : sArr) {
                c4085b.m933a(s, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* renamed from: a */
    public C4085b m928a(int[] iArr, String str) {
        m939a(str);
        if (iArr == null) {
            this.f4534a.append("null\n");
        } else if (iArr.length == 0) {
            this.f4534a.append(iArr.length).append(", []\n");
        } else {
            this.f4534a.append(iArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (int i : iArr) {
                c4085b.m950a(i, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m945a(Context context, C4090e c4090e, CrashStrategyBean crashStrategyBean) {
        if (crashStrategyBean == null || !crashStrategyBean.isStoreCrashSdcard()) {
            return false;
        }
        try {
            C4073e.m1015b("save eup logs", new Object[0]);
            C4071c m1088a = C4071c.m1088a(context);
            String m1078c = m1088a.m1078c();
            String m1106C = m1088a.m1106C();
            String m828r = c4090e.m828r();
            Locale locale = Locale.US;
            Object[] objArr = new Object[9];
            objArr[0] = m1078c;
            objArr[1] = m1106C;
            objArr[2] = m1088a.m1075d();
            objArr[3] = m828r;
            Date date = new Date(c4090e.m849i());
            objArr[4] = date == null ? null : new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(date);
            objArr[5] = c4090e.m861e();
            objArr[6] = c4090e.m858f();
            objArr[7] = c4090e.m852h();
            objArr[8] = c4090e.m820w();
            String format = String.format(locale, "#--------\npackage:%s\nversion:%s\nsdk:%s\nprocess:%s\ndate:%s\ntype:%s\nmessage:%s\nstack:\n%s\neupID:%s\n", objArr);
            if (crashStrategyBean.getStoreDirectoryPath() == null) {
                if (C4068a.m1120f(context)) {
                    int crashSdcardMaxSize = crashStrategyBean.getCrashSdcardMaxSize();
                    C4073e.m1015b("rqdp{  sv sd start}", new Object[0]);
                    if (format != null && format.trim().length() > 0) {
                        if (Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED)) {
                            C4119a.m746a(new File(Environment.getExternalStorageDirectory(), "/Tencent/" + C4068a.m1126b(context) + "/euplog.txt").getAbsolutePath(), format, crashSdcardMaxSize);
                        }
                        C4073e.m1015b("rqdp{  sv sd end}", new Object[0]);
                    }
                    return true;
                }
                return false;
            }
            File file = new File(crashStrategyBean.getStoreDirectoryPath());
            if (!file.isFile()) {
                file = file.getParentFile();
            }
            C4119a.m746a(new File(file, "euplog.txt").getAbsolutePath(), format, crashStrategyBean.getCrashSdcardMaxSize());
            return true;
        } catch (Throwable th) {
            C4073e.m1013c("rqdp{  save error} %s", th.toString());
            if (C4073e.m1016a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public C4085b m927a(long[] jArr, String str) {
        m939a(str);
        if (jArr == null) {
            this.f4534a.append("null\n");
        } else if (jArr.length == 0) {
            this.f4534a.append(jArr.length).append(", []\n");
        } else {
            this.f4534a.append(jArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (long j : jArr) {
                c4085b.m949a(j, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* renamed from: b */
    public static boolean m923b(Context context, List<C4090e> list) {
        C4073e.m1015b("rqdp{  EUPDAO.insertOrUpdateEupList() start}", new Object[0]);
        if (context == null || list == null || list.size() <= 0) {
            C4073e.m1013c("rqdp{  context == null ||| list == null || list.size() <= 0,pls check}", new Object[0]);
            return false;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (C4090e c4090e : list) {
                C4132m m942a = m942a(c4090e);
                if (m942a != null) {
                    arrayList.add(m942a);
                }
            }
            boolean m640b = C4132m.m640b(context, arrayList);
            C4073e.m1015b("rqdp{  EUPDAO.insertOrUpdateEupList() end}", new Object[0]);
            return m640b;
        } catch (Throwable th) {
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  insert fail!}", new Object[0]);
                C4073e.m1015b("rqdp{  EUPDAO.insertOrUpdateEupList() end}", new Object[0]);
                return false;
            } catch (Throwable th2) {
                C4073e.m1015b("rqdp{  EUPDAO.insertOrUpdateEupList() end}", new Object[0]);
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public C4085b m929a(float[] fArr, String str) {
        m939a(str);
        if (fArr == null) {
            this.f4534a.append("null\n");
        } else if (fArr.length == 0) {
            this.f4534a.append(fArr.length).append(", []\n");
        } else {
            this.f4534a.append(fArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (float f : fArr) {
                c4085b.m951a(f, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* renamed from: a */
    public C4085b m930a(double[] dArr, String str) {
        m939a(str);
        if (dArr == null) {
            this.f4534a.append("null\n");
        } else if (dArr.length == 0) {
            this.f4534a.append(dArr.length).append(", []\n");
        } else {
            this.f4534a.append(dArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (double d : dArr) {
                c4085b.m952a(d, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* renamed from: a */
    protected static C4132m m942a(C4090e c4090e) {
        if (c4090e == null) {
            return null;
        }
        try {
            C4132m c4132m = new C4132m(c4090e.m895S() != 1 ? 1 : 2, 0, c4090e.m849i(), C4119a.m748a(c4090e));
            c4132m.m641b(c4090e.m846j());
            c4132m.m656a(c4090e.m838m());
            c4132m.m643a(c4090e.m832p());
            c4132m.m655a(c4090e.m889a());
            c4132m.m637c(c4090e.m819x() ? 1 : 0);
            return c4132m;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static void m936a(ArrayList<String> arrayList, Throwable th, int i, int i2, int i3) {
        while (arrayList != null && th != null && i <= i2 && arrayList.size() <= i3) {
            i++;
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    arrayList.add(stackTraceElement.toString());
                }
            }
            if (th.getCause() != null) {
                arrayList.add("cause by:");
                arrayList.add(th.getCause().getClass().getName() + ": " + th.getCause().getMessage());
                th = th.getCause();
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public <K, V> C4085b m934a(Map<K, V> map, String str) {
        m939a(str);
        if (map == null) {
            this.f4534a.append("null\n");
        } else if (map.isEmpty()) {
            this.f4534a.append(map.size()).append(", {}\n");
        } else {
            this.f4534a.append(map.size()).append(", {\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            C4085b c4085b2 = new C4085b(this.f4534a, this.f4535b + 2);
            for (Map.Entry<K, V> entry : map.entrySet()) {
                c4085b.m953a('(', (String) null);
                c4085b2.m940a((C4085b) entry.getKey(), (String) null);
                c4085b2.m940a((C4085b) entry.getValue(), (String) null);
                c4085b.m953a(')', (String) null);
            }
            m953a('}', (String) null);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m937a(Throwable th, CrashStrategyBean crashStrategyBean) {
        int i = 100;
        int i2 = 3;
        if (crashStrategyBean != null) {
            i2 = Math.max(3, crashStrategyBean.getMaxStackFrame());
            i = Math.max(100, crashStrategyBean.getMaxStackLine());
            C4073e.m1015b("change frame:%d  line:%d", Integer.valueOf(i2), Integer.valueOf(i));
        }
        ArrayList arrayList = new ArrayList();
        m936a(arrayList, th, 0, i2, i);
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next()).append("\n");
            }
            return sb.toString();
        }
        return "";
    }

    /* renamed from: a */
    public <T> C4085b m926a(T[] tArr, String str) {
        m939a(str);
        if (tArr == null) {
            this.f4534a.append("null\n");
        } else if (tArr.length == 0) {
            this.f4534a.append(tArr.length).append(", []\n");
        } else {
            this.f4534a.append(tArr.length).append(", [\n");
            C4085b c4085b = new C4085b(this.f4534a, this.f4535b + 1);
            for (T t : tArr) {
                c4085b.m940a((C4085b) t, (String) null);
            }
            m953a(']', (String) null);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> C4085b m935a(Collection<T> collection, String str) {
        if (collection == null) {
            m939a(str);
            this.f4534a.append("null\t");
            return this;
        }
        return m926a(collection.toArray(), str);
    }

    /* renamed from: a */
    public static boolean m948a(Context context) {
        if (C4119a.m727c() < 0) {
            C4073e.m1012d("rqdp{  today fail?}", new Object[0]);
            new Date().getTime();
        }
        List<C4090e> m797a = C4092g.m798a(context).m797a(context, 1);
        return m797a != null && m797a.size() > 0;
    }

    /* renamed from: a */
    public static List<C4090e> m947a(Context context, int i, String str, int i2, String str2, int i3, int i4, int i5, int i6, long j, long j2, Boolean bool) {
        int i7;
        C4073e.m1015b("rqdp{  EUPDAO.queryEupRecent() start}", new Object[0]);
        if (context == null || i == 0 || ((j2 > 0 && j > j2) || (i4 > 0 && i3 > i4))) {
            C4073e.m1013c("rqdp{  context == null || limitNum == 0 || (timeEnd > 0 && timeStart > timeEnd) || (maxCount > 0 && miniCount > maxCount ,pls check}", new Object[0]);
            return null;
        }
        int i8 = "asc".equals(str) ? 1 : 2;
        int[] iArr = null;
        if (i2 == 2) {
            iArr = new int[]{2};
        } else if (i2 == 1) {
            iArr = new int[]{1};
        } else if (i2 < 0) {
            iArr = new int[]{1, 2};
        } else {
            C4073e.m1013c("rqdp{  queryEupRecent() seletedRecordType unaccepted}", new Object[0]);
        }
        if (bool == null) {
            i7 = -1;
        } else {
            i7 = bool.booleanValue() ? 1 : 0;
        }
        List<C4132m> m650a = C4132m.m650a(context, iArr, -1, i8, -1L, i, str2, i3, i4, i5, i6, j, j2, i7);
        if (m650a == null || m650a.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<C4132m> it = m650a.iterator();
        while (it.hasNext()) {
            C4132m next = it.next();
            try {
                Object m731b = C4119a.m731b(next.m642b());
                if (m731b != null && C4090e.class.isInstance(m731b)) {
                    C4090e c4090e = (C4090e) C4090e.class.cast(m731b);
                    c4090e.m885a(next.m657a());
                    arrayList.add(c4090e);
                    it.remove();
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  query have error!}", new Object[0]);
            }
        }
        if (m650a.size() > 0) {
            C4073e.m1015b("rqdp{  there are error datas ,should be remove }" + m650a.size(), new Object[0]);
            Long[] lArr = new Long[m650a.size()];
            int i9 = 0;
            while (true) {
                int i10 = i9;
                if (i10 >= m650a.size()) {
                    break;
                }
                lArr[i10] = Long.valueOf(m650a.get(i10).m657a());
                i9 = i10 + 1;
            }
            C4132m.m646a(context, lArr);
        }
        C4073e.m1015b("rqdp{  EUPDAO.queryEupRecent() end}", new Object[0]);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> C4085b m940a(T t, String str) {
        if (t == null) {
            this.f4534a.append("null\n");
        } else if (t instanceof Byte) {
            m954a(((Byte) t).byteValue(), str);
        } else if (t instanceof Boolean) {
            m932a(((Boolean) t).booleanValue(), str);
        } else if (t instanceof Short) {
            m933a(((Short) t).shortValue(), str);
        } else if (t instanceof Integer) {
            m950a(((Integer) t).intValue(), str);
        } else if (t instanceof Long) {
            m949a(((Long) t).longValue(), str);
        } else if (t instanceof Float) {
            m951a(((Float) t).floatValue(), str);
        } else if (t instanceof Double) {
            m952a(((Double) t).doubleValue(), str);
        } else if (t instanceof String) {
            m938a((String) t, str);
        } else if (t instanceof Map) {
            m934a((Map) t, str);
        } else if (t instanceof List) {
            m935a((Collection) ((List) t), str);
        } else if (t instanceof AbstractC4128j) {
            m941a((AbstractC4128j) t, str);
        } else if (t instanceof byte[]) {
            m931a((byte[]) t, str);
        } else if (t instanceof boolean[]) {
            m940a((C4085b) ((boolean[]) t), str);
        } else if (t instanceof short[]) {
            m925a((short[]) t, str);
        } else if (t instanceof int[]) {
            m928a((int[]) t, str);
        } else if (t instanceof long[]) {
            m927a((long[]) t, str);
        } else if (t instanceof float[]) {
            m929a((float[]) t, str);
        } else if (t instanceof double[]) {
            m930a((double[]) t, str);
        } else if (t.getClass().isArray()) {
            m926a((Object[]) t, str);
        } else {
            throw new C4120b("write object error: unsupport type.");
        }
        return this;
    }

    /* renamed from: a */
    public static C4090e m944a(Context context, String str, String str2, long j, Map<String, PlugInInfo> map, String str3, String str4, String str5, String str6, String str7, String str8, long j2, String str9, byte[] bArr) {
        String m755a;
        C4090e c4090e = new C4090e();
        c4090e.m847i(str3);
        c4090e.m844j(str4);
        c4090e.m878b(j2 + j);
        if (str9 != null && str9.length() > 10000) {
            try {
                str9 = str9.substring(str9.length() + XCallback.PRIORITY_LOWEST, str9.length());
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
        }
        if (bArr != null && bArr.length > 10000) {
            try {
                byte[] bArr2 = new byte[XCallback.PRIORITY_HIGHEST];
                int length = bArr2.length - 1;
                for (int length2 = bArr.length - 1; length >= 0 && length2 >= 0; length2--) {
                    bArr2[length] = bArr[length2];
                    length--;
                }
                bArr = bArr2;
            } catch (Throwable th2) {
                if (!C4073e.m1016a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        c4090e.m841k(str9);
        c4090e.m867c(bArr);
        c4090e.m870c(str5);
        if (str7 == null || str7.trim().length() == 0) {
            str7 = "empty message";
        } else if (str7.length() > 1000) {
            str7 = str7.substring(0, 1000);
        }
        c4090e.m877b(str7);
        c4090e.m884a(str6);
        c4090e.m863d((str8 == null || str8.trim().length() == 0) ? "empty stack" : "empty stack");
        c4090e.m887a(-1.0f);
        C4072d m1041a = C4072d.m1041a(context);
        c4090e.m871c(C4072d.m1029h());
        c4090e.m860e(m1041a.m1027j());
        c4090e.m864d(C4072d.m1032f());
        c4090e.m848i(C4072d.m1023n());
        c4090e.m845j(C4072d.m1022o());
        C4073e.m1015b("avram:%d,avsd:%d,avrom:%d,avstack:%d,avheap:%d", Long.valueOf(c4090e.m905I()), Long.valueOf(c4090e.m903K()), Long.valueOf(c4090e.m904J()), Long.valueOf(c4090e.m899O()), Long.valueOf(c4090e.m898P()));
        C4071c m1088a = C4071c.m1088a(context);
        c4090e.m857f(m1088a.m1048u());
        c4090e.m854g(m1088a.m1049t());
        c4090e.m851h(m1088a.m1047v());
        c4090e.m825s(m1088a.m1106C());
        c4090e.m823t(m1088a.m1108A());
        C4073e.m1015b("tram:%d,trom:%d,tsd:%d,v:%s,cn:%s", Long.valueOf(c4090e.m902L()), Long.valueOf(c4090e.m901M()), Long.valueOf(c4090e.m900N()), c4090e.m897Q(), c4090e.m896R());
        c4090e.m859e(str);
        c4090e.m829q(str2);
        c4090e.m883a(map);
        c4090e.m839l(C4119a.m724d());
        StringBuilder sb = new StringBuilder();
        String m755a2 = C4119a.m755a(context, "ro.miui.ui.version.name");
        if ((m755a2 == null || m755a2.trim().length() <= 0) || m755a2.equals("fail")) {
            String m755a3 = C4119a.m755a(context, "ro.build.version.emui");
            if ((m755a3 == null || m755a3.trim().length() <= 0) || m755a3.equals("fail")) {
                String m755a4 = C4119a.m755a(context, "ro.lenovo.series");
                if ((m755a4 == null || m755a4.trim().length() <= 0) || m755a4.equals("fail")) {
                    String m755a5 = C4119a.m755a(context, "ro.build.nubia.rom.name");
                    if ((m755a5 == null || m755a5.trim().length() <= 0) || m755a5.equals("fail")) {
                        String m755a6 = C4119a.m755a(context, "ro.meizu.product.model");
                        if ((m755a6 == null || m755a6.trim().length() <= 0) || m755a6.equals("fail")) {
                            String m755a7 = C4119a.m755a(context, "ro.build.version.opporom");
                            m755a = ((m755a7 == null || m755a7.trim().length() <= 0) || m755a7.equals("fail")) ? C4119a.m755a(context, "ro.build.fingerprint") : "Oppo/COLOROS/" + m755a7;
                        } else {
                            m755a = "Meizu/FLYME/" + C4119a.m755a(context, "ro.build.display.id");
                        }
                    } else {
                        m755a = "Zte/NUBIA/" + m755a5 + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + C4119a.m755a(context, "ro.build.nubia.rom.code");
                    }
                } else {
                    m755a = "Lenovo/VIBE/" + C4119a.m755a(context, "ro.build.version.incremental");
                }
            } else {
                m755a = "HuaWei/EMUI/" + m755a3;
            }
        } else {
            m755a = "XiaoMi/MIUI/" + m755a2;
        }
        c4090e.m837m(sb.append(m755a).toString());
        c4090e.m868c(m1088a.m1103F());
        c4090e.m827r(m1088a.m1102G());
        C4073e.m1015b("is forground:%s", Boolean.valueOf(c4090e.m908F()));
        c4090e.m842k(c4090e.m849i() - m1088a.m1104E());
        C4073e.m1015b("record id:%s", c4090e.m820w());
        C4073e.m1015b("rom id %s", c4090e.m817z());
        c4090e.m872c(m1088a.m1100I());
        c4090e.m865d(m1088a.m1099J());
        c4090e.m876b(m1088a.m1098K());
        c4090e.m869c(m1088a.m1095N());
        C4073e.m1015b("record user scene:%d", Integer.valueOf(c4090e.m893U()));
        c4090e.m874b(C4075f.m1001a(true));
        return c4090e;
    }

    /* renamed from: a */
    public C4085b m941a(AbstractC4128j abstractC4128j, String str) {
        m953a('{', str);
        if (abstractC4128j == null) {
            this.f4534a.append('\t').append("null");
        } else {
            abstractC4128j.mo665a(this.f4534a, this.f4535b + 1);
        }
        m953a('}', (String) null);
        return this;
    }
}
