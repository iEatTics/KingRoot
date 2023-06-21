package com.tencent.feedback.proguard;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.C4084a;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* renamed from: com.tencent.feedback.proguard.a */
/* loaded from: classes.dex */
public class C4119a {

    /* renamed from: a */
    protected HashMap<String, HashMap<String, byte[]>> f4712a = new HashMap<>();

    /* renamed from: b */
    protected String f4713b;

    /* renamed from: c */
    C4126h f4714c;

    /* renamed from: d */
    private HashMap<String, Object> f4715d;

    /* renamed from: a */
    public static int m754a(Context context, C4136q[] c4136qArr) {
        if (context == null || c4136qArr == null || c4136qArr.length <= 0) {
            return -1;
        }
        ArrayList arrayList = new ArrayList(c4136qArr.length);
        for (C4136q c4136q : c4136qArr) {
            byte[] m748a = m748a(c4136q);
            if (m748a != null) {
                C4132m c4132m = new C4132m(7, 0, 0L, m748a);
                c4132m.m655a(c4136q.m618a());
                arrayList.add(c4132m);
            }
        }
        if (arrayList.size() > 0) {
            if (C4132m.m640b(context, arrayList)) {
                return arrayList.size();
            }
            return -1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C4119a() {
        new HashMap();
        this.f4715d = new HashMap<>();
        this.f4713b = "GBK";
        this.f4714c = new C4126h();
    }

    /* renamed from: a */
    public static byte[] m747a(String str, int i) {
        C4073e.m1017a("rqdp{  LogcatManager.getLogDatas() start + count:}" + i, new Object[0]);
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add("logcat");
        arrayList.add("-d");
        arrayList.add("-v");
        arrayList.add("time");
        if (str != null && str.length() > 0) {
            arrayList.add("-s");
            arrayList.add(str);
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        C4084a c4084a = new C4084a(i);
        m738a(strArr, c4084a);
        if (c4084a.size() <= 0) {
            return null;
        }
        C4073e.m1017a("rqdp{  get log success in list size:}" + c4084a.size(), new Object[0]);
        try {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = c4084a.iterator();
            while (it.hasNext()) {
                stringBuffer.append(((String) it.next()) + "\n");
            }
            c4084a.clear();
            byte[] bytes = stringBuffer.toString().getBytes("utf-8");
            stringBuffer.setLength(0);
            C4073e.m1017a("rqdp{  LogcatManager.getLogDatas() end}", new Object[0]);
            return bytes;
        } catch (Throwable th) {
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  change to byte[] failed}", new Object[0]);
                C4073e.m1017a("rqdp{  LogcatManager.getLogDatas() end}", new Object[0]);
                return null;
            } catch (Throwable th2) {
                C4073e.m1017a("rqdp{  LogcatManager.getLogDatas() end}", new Object[0]);
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static Long[] m742a(LinkedHashMap<Long, Long> linkedHashMap, long j) {
        long j2 = 0;
        if (linkedHashMap == null || linkedHashMap.size() <= 0 || j <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Long> it = linkedHashMap.keySet().iterator();
        while (true) {
            long j3 = j2;
            if (!it.hasNext() || j3 >= j) {
                break;
            }
            long longValue = it.next().longValue();
            long longValue2 = linkedHashMap.get(Long.valueOf(longValue)).longValue();
            if (j3 + longValue2 <= j) {
                arrayList.add(Long.valueOf(longValue));
                j2 = longValue2 + j3;
            } else {
                j2 = j3;
            }
        }
        if (arrayList.size() > 0) {
            return (Long[]) arrayList.toArray(new Long[1]);
        }
        return null;
    }

    /* renamed from: b */
    public static Map<String, String> m737b() {
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        if (allStackTraces != null) {
            HashMap hashMap = new HashMap();
            StringBuilder sb = new StringBuilder();
            try {
                for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                    sb.setLength(0);
                    for (StackTraceElement stackTraceElement : entry.getValue()) {
                        sb.append(stackTraceElement.toString()).append("\n");
                    }
                    hashMap.put(entry.getKey().getName(), sb.toString());
                }
            } catch (Throwable th) {
                C4073e.m1012d("add all thread error", new Object[0]);
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
            return hashMap;
        }
        return null;
    }

    /* renamed from: a */
    public static synchronized int m753a(Context context, C4137r[] c4137rArr) {
        int i = 0;
        synchronized (C4119a.class) {
            if (context != null && c4137rArr != null) {
                if (c4137rArr.length > 0) {
                    ArrayList arrayList = new ArrayList(c4137rArr.length);
                    for (C4137r c4137r : c4137rArr) {
                        byte[] m748a = m748a(c4137r);
                        if (m748a == null) {
                            C4073e.m1013c("rqdp{ getSerData error }", new Object[0]);
                        } else {
                            C4132m c4132m = new C4132m(9, 0, c4137r.m616a(), m748a);
                            c4132m.m643a(c4137r.m608c());
                            arrayList.add(c4132m);
                        }
                    }
                    if (arrayList.size() > 0 && C4132m.m652a(context, arrayList)) {
                        i = arrayList.size();
                    }
                }
            }
            C4073e.m1013c("rqdp{  args error}", new Object[0]);
        }
        return i;
    }

    /* renamed from: a */
    public static List<C4136q> m759a(Context context) {
        List<C4132m> m651a;
        if (context == null || (m651a = C4132m.m651a(context, new int[]{7}, -1, -1, Long.MAX_VALUE, 5, null, -1, -1, -1, -1, -1L, Long.MAX_VALUE)) == null || m651a.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(m651a.size());
        for (C4132m c4132m : m651a) {
            try {
                Object m731b = m731b(c4132m.m642b());
                if (m731b != null) {
                    C4136q c4136q = (C4136q) C4136q.class.cast(m731b);
                    c4136q.m617a(c4132m.m657a());
                    arrayList.add(c4136q);
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  netconsume error }%s", th.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void mo721a(String str) {
        this.f4713b = str;
    }

    /* renamed from: b */
    public static synchronized int m733b(Context context, C4137r[] c4137rArr) {
        int i = 0;
        synchronized (C4119a.class) {
            if (context != null && c4137rArr != null) {
                if (c4137rArr.length > 0) {
                    ArrayList arrayList = new ArrayList(c4137rArr.length);
                    for (C4137r c4137r : c4137rArr) {
                        if (c4137r.m607d() >= 0) {
                            arrayList.add(Long.valueOf(c4137r.m607d()));
                        }
                    }
                    if (arrayList.size() > 0) {
                        i = C4132m.m646a(context, (Long[]) arrayList.toArray(new Long[0]));
                    }
                }
            }
            C4073e.m1013c("rqdp{  args error}", new Object[0]);
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m738a(String[] strArr, C4084a<String> c4084a) {
        if (strArr == null || strArr.length <= 0) {
            return false;
        }
        Process process = null;
        try {
            Process exec = Runtime.getRuntime().exec(strArr);
            if (c4084a != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    c4084a.add(readLine);
                }
                bufferedReader.close();
            } else {
                exec.waitFor();
            }
            if (exec != null) {
                try {
                    exec.getOutputStream().close();
                } catch (IOException e) {
                    if (!C4073e.m1016a(e)) {
                        e.printStackTrace();
                    }
                }
                try {
                    exec.getInputStream().close();
                } catch (IOException e2) {
                    if (!C4073e.m1016a(e2)) {
                        e2.printStackTrace();
                    }
                }
                try {
                    exec.getErrorStream().close();
                } catch (IOException e3) {
                    if (!C4073e.m1016a(e3)) {
                        e3.printStackTrace();
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d(th.getMessage(), new Object[0]);
                if (0 != 0) {
                    try {
                        process.getOutputStream().close();
                    } catch (IOException e4) {
                        if (!C4073e.m1016a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                    try {
                        process.getInputStream().close();
                    } catch (IOException e5) {
                        if (!C4073e.m1016a(e5)) {
                            e5.printStackTrace();
                        }
                    }
                    try {
                        process.getErrorStream().close();
                        return false;
                    } catch (IOException e6) {
                        if (C4073e.m1016a(e6)) {
                            return false;
                        }
                        e6.printStackTrace();
                        return false;
                    }
                }
                return false;
            } catch (Throwable th2) {
                if (0 != 0) {
                    try {
                        process.getOutputStream().close();
                    } catch (IOException e7) {
                        if (!C4073e.m1016a(e7)) {
                            e7.printStackTrace();
                        }
                    }
                    try {
                        process.getInputStream().close();
                    } catch (IOException e8) {
                        if (!C4073e.m1016a(e8)) {
                            e8.printStackTrace();
                        }
                    }
                    try {
                        process.getErrorStream().close();
                    } catch (IOException e9) {
                        if (!C4073e.m1016a(e9)) {
                            e9.printStackTrace();
                        }
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static byte[] m748a(Object obj) {
        ObjectOutputStream objectOutputStream;
        byte[] bArr = null;
        C4073e.m1015b("rqdp{  en obj 2 bytes}", new Object[0]);
        if (obj == null || !Serializable.class.isInstance(obj)) {
            C4073e.m1013c("rqdp{  not serial obj}", new Object[0]);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = null;
            }
            try {
                objectOutputStream.writeObject(obj);
                objectOutputStream.flush();
                bArr = byteArrayOutputStream.toByteArray();
                try {
                    objectOutputStream.close();
                } catch (IOException e) {
                    if (!C4073e.m1016a(e)) {
                        e.printStackTrace();
                    }
                }
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    if (!C4073e.m1016a(e2)) {
                        e2.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    C4073e.m1012d(th.getMessage(), new Object[0]);
                    return bArr;
                } finally {
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e3) {
                            if (!C4073e.m1016a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e4) {
                        if (!C4073e.m1016a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                }
            }
        }
        return bArr;
    }

    /* renamed from: b */
    public static int m734b(Context context, C4136q[] c4136qArr) {
        if (context == null) {
            return -1;
        }
        if (c4136qArr == null) {
            return C4132m.m649a(context, new int[]{7}, -1L, Long.MAX_VALUE);
        }
        ArrayList arrayList = new ArrayList();
        for (C4136q c4136q : c4136qArr) {
            if (c4136q.m618a() >= 0) {
                arrayList.add(Long.valueOf(c4136q.m618a()));
            }
        }
        if (arrayList.size() > 0) {
            return C4132m.m646a(context, (Long[]) arrayList.toArray(new Long[0]));
        }
        return 0;
    }

    /* renamed from: a */
    public static String m744a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = arrayList.get(i);
            if (str.equals("java.lang.Integer") || str.equals(MethodReflectParams.INT)) {
                str = "int32";
            } else if (str.equals("java.lang.Boolean") || str.equals(MethodReflectParams.BOOLEAN)) {
                str = "bool";
            } else if (str.equals("java.lang.Byte") || str.equals(MethodReflectParams.BYTE)) {
                str = MethodReflectParams.CHAR;
            } else if (str.equals("java.lang.Double") || str.equals(MethodReflectParams.DOUBLE)) {
                str = MethodReflectParams.DOUBLE;
            } else if (str.equals("java.lang.Float") || str.equals(MethodReflectParams.FLOAT)) {
                str = MethodReflectParams.FLOAT;
            } else if (str.equals("java.lang.Long") || str.equals(MethodReflectParams.LONG)) {
                str = "int64";
            } else if (str.equals("java.lang.Short") || str.equals(MethodReflectParams.SHORT)) {
                str = MethodReflectParams.SHORT;
            } else if (str.equals("java.lang.Character")) {
                throw new IllegalArgumentException("can not support java.lang.Character");
            } else {
                if (str.equals("java.lang.String")) {
                    str = "string";
                } else if (str.equals("java.util.List")) {
                    str = "list";
                } else if (str.equals("java.util.Map")) {
                    str = "map";
                }
            }
            arrayList.set(i, str);
        }
        Collections.reverse(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str2 = arrayList.get(i2);
            if (str2.equals("list")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, arrayList.get(0) + ">");
            } else if (str2.equals("map")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1) + ",");
                arrayList.set(0, arrayList.get(0) + ">");
            } else if (str2.equals("Array")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, arrayList.get(0) + ">");
            }
        }
        Collections.reverse(arrayList);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public <T> void mo717a(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        C4127i c4127i = new C4127i();
        c4127i.m677a(this.f4713b);
        c4127i.m678a(t, 0);
        byte[] m662a = C4129k.m662a(c4127i.m684a());
        HashMap<String, byte[]> hashMap = new HashMap<>(1);
        ArrayList<String> arrayList = new ArrayList<>(1);
        m743a(arrayList, t);
        hashMap.put(m744a(arrayList), m662a);
        this.f4715d.remove(str);
        this.f4712a.put(str, hashMap);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static boolean m756a(android.content.Context r10, com.tencent.feedback.proguard.C4099A r11) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4119a.m756a(android.content.Context, com.tencent.feedback.proguard.A):boolean");
    }

    /* renamed from: b */
    public static synchronized C4137r[] m735b(Context context, String str) {
        C4137r[] c4137rArr;
        synchronized (C4119a.class) {
            if (context == null || str == null) {
                C4073e.m1013c("rqdp{  args error}", new Object[0]);
                c4137rArr = null;
            } else {
                List<C4132m> m651a = C4132m.m651a(context, new int[]{9}, -1, -1, 10000L, -1, str, -1, -1, -1, -1, -1L, Long.MAX_VALUE);
                if (m651a == null || m651a.size() <= 0) {
                    c4137rArr = null;
                } else {
                    ArrayList arrayList = new ArrayList(m651a.size());
                    for (C4132m c4132m : m651a) {
                        Object m731b = m731b(c4132m.m642b());
                        if (m731b != null && C4137r.class.isInstance(m731b)) {
                            C4137r c4137r = (C4137r) C4137r.class.cast(m731b);
                            c4137r.m610b(c4132m.m657a());
                            arrayList.add(c4137r);
                        }
                    }
                    if (arrayList.size() > 0) {
                        c4137rArr = (C4137r[]) arrayList.toArray(new C4137r[0]);
                    } else {
                        c4137rArr = null;
                    }
                }
            }
        }
        return c4137rArr;
    }

    /* renamed from: b */
    public static Object m731b(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Object obj = null;
        C4073e.m1015b("rqdp{  de byte 2 obj}", new Object[0]);
        if (bArr != null && bArr.length >= 0) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } catch (Throwable th) {
                th = th;
                objectInputStream = null;
            }
            try {
                obj = objectInputStream.readObject();
                try {
                    objectInputStream.close();
                } catch (IOException e) {
                    if (!C4073e.m1016a(e)) {
                        e.printStackTrace();
                    }
                }
                try {
                    byteArrayInputStream.close();
                } catch (IOException e2) {
                    if (!C4073e.m1016a(e2)) {
                        e2.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    C4073e.m1012d(th.getMessage(), new Object[0]);
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e3) {
                            if (!C4073e.m1016a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e4) {
                        if (!C4073e.m1016a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                    return obj;
                } catch (Throwable th3) {
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e5) {
                            if (!C4073e.m1016a(e5)) {
                                e5.printStackTrace();
                            }
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e6) {
                        if (!C4073e.m1016a(e6)) {
                            e6.printStackTrace();
                        }
                    }
                    throw th3;
                }
            }
        }
        return obj;
    }

    /* renamed from: c */
    public static synchronized int m726c(Context context, String str) {
        int i = 0;
        synchronized (C4119a.class) {
            if (context == null || str == null) {
                C4073e.m1013c("rqdp{  args error}", new Object[0]);
            } else {
                i = C4132m.m647a(context, new int[]{9}, -1L, Long.MAX_VALUE, str);
            }
        }
        return i;
    }

    /* renamed from: a */
    public static void m757a(Context context, int i, byte[] bArr) {
        if (bArr != null) {
            C4099A c4099a = new C4099A();
            c4099a.m775a(i);
            c4099a.m773a(bArr);
            c4099a.m771b(new Date().getTime());
            m756a(context, c4099a);
        }
    }

    /* renamed from: a */
    public static byte[] m739a(byte[] bArr, int i, String str) {
        InterfaceC4107I c4105g;
        if (bArr != null && i != -1) {
            C4073e.m1015b("rqdp{  enD:} %d %d", Integer.valueOf(bArr.length), Integer.valueOf(i));
            try {
                if (i == 1) {
                    c4105g = new C4106H();
                } else {
                    c4105g = i == 3 ? new C4105G() : null;
                }
                if (c4105g == null) {
                    return null;
                }
                c4105g.mo763a(str);
                return c4105g.mo761b(bArr);
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  err enD: }%s", th.toString());
                return null;
            }
        }
        return bArr;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static com.tencent.feedback.proguard.C4099A m758a(android.content.Context r11, int r12) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4119a.m758a(android.content.Context, int):com.tencent.feedback.proguard.A");
    }

    /* renamed from: b */
    public static byte[] m728b(byte[] bArr, int i, String str) {
        InterfaceC4107I c4105g;
        if (bArr != null && i != -1) {
            try {
                if (i == 1) {
                    c4105g = new C4106H();
                } else {
                    c4105g = i == 3 ? new C4105G() : null;
                }
                if (c4105g == null) {
                    return null;
                }
                c4105g.mo763a(str);
                return c4105g.mo762a(bArr);
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  err unD:} %s", th.toString());
                return null;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m741a(byte[] bArr, int i) {
        if (bArr != null && i != -1) {
            C4073e.m1015b("rqdp{  zp:} %s rqdp{  len:} %s", Integer.valueOf(i), Integer.valueOf(bArr.length));
            try {
                InterfaceC4102D m766a = C4101C.m766a(i);
                if (m766a == null) {
                    return null;
                }
                return m766a.mo765a(bArr);
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  err zp :} %s", th.toString());
                return null;
            }
        }
        return bArr;
    }

    /* renamed from: b */
    public static byte[] m730b(byte[] bArr, int i) {
        if (bArr != null && i != -1) {
            C4073e.m1015b("rqdp{  unzp:} %s rqdp{  len:} %s", Integer.valueOf(i), Integer.valueOf(bArr.length));
            try {
                InterfaceC4102D m766a = C4101C.m766a(i);
                if (m766a == null) {
                    return null;
                }
                return m766a.mo764b(bArr);
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  err unzp}" + th.toString(), new Object[0]);
                return null;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    private void m743a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                throw new IllegalArgumentException("only byte[] is supported");
            }
            if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                m743a(arrayList, Array.get(obj, 0));
                return;
            }
            arrayList.add("Array");
            arrayList.add("?");
        } else if (obj instanceof Array) {
            throw new IllegalArgumentException("can not support Array, please use List");
        } else {
            if (obj instanceof List) {
                arrayList.add("java.util.List");
                List list = (List) obj;
                if (list.size() > 0) {
                    m743a(arrayList, list.get(0));
                } else {
                    arrayList.add("?");
                }
            } else if (obj instanceof Map) {
                arrayList.add("java.util.Map");
                Map map = (Map) obj;
                if (map.size() > 0) {
                    Object next = map.keySet().iterator().next();
                    Object obj2 = map.get(next);
                    arrayList.add(next.getClass().getName());
                    m743a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static byte[] m749a(java.io.File r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4119a.m749a(java.io.File, java.lang.String):byte[]");
    }

    /* renamed from: b */
    public static int m736b(Context context, int i) {
        C4134o c4134o;
        SQLiteDatabase sQLiteDatabase = null;
        int i2 = 0;
        if (context == null) {
            C4073e.m1013c("rqdp{  context == null ||key < -1}", new Object[0]);
        } else {
            try {
                c4134o = new C4134o(context);
                try {
                    sQLiteDatabase = c4134o.getWritableDatabase();
                    if (sQLiteDatabase == null) {
                        C4073e.m1012d("get db fail!,return ", new Object[0]);
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        c4134o.close();
                    } else {
                        int delete = sQLiteDatabase.delete("strategy", String.format("%s = %d", "_key", 510), null);
                        C4073e.m1015b("rqdp{  delete Strategy key} %d rqdp{  , num} %d", 510, Integer.valueOf(delete));
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        c4134o.close();
                        i2 = delete;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!C4073e.m1016a(th)) {
                            th.printStackTrace();
                        }
                        C4073e.m1012d("rqdp{  Error strategy delete!} %s", th.toString());
                        return i2;
                    } finally {
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        if (c4134o != null) {
                            c4134o.close();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                c4134o = null;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public byte[] mo719a() {
        C4127i c4127i = new C4127i(0);
        c4127i.m677a(this.f4713b);
        c4127i.m674a((Map) this.f4712a, 0);
        return C4129k.m662a(c4127i.m684a());
    }

    /* renamed from: a */
    public void mo716a(byte[] bArr) {
        this.f4714c.m695a(bArr);
        this.f4714c.m699a(this.f4713b);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f4712a = this.f4714c.m698a((Map) hashMap, 0, false);
    }

    /* renamed from: a */
    public static byte[] m751a(AbstractC4128j abstractC4128j) {
        try {
            C4127i c4127i = new C4127i();
            c4127i.m677a("utf-8");
            abstractC4128j.mo666a(c4127i);
            return c4127i.m670b();
        } catch (Throwable th) {
            if (!C4073e.m1014b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public static C4113O m760a(int i, C4071c c4071c, byte[] bArr, byte b, byte b2, String str) {
        C4073e.m1015b("rqdp{  en2Req }", new Object[0]);
        if (c4071c == null) {
            C4073e.m1012d("rqdp{  error no com info!}", new Object[0]);
            return null;
        }
        try {
            C4113O c4113o = new C4113O();
            synchronized (c4071c) {
                c4113o.f4669a = c4071c.m1082b();
                c4113o.f4670b = c4071c.m1054o();
                c4113o.f4671c = c4071c.m1078c();
                c4113o.f4672d = c4071c.m1106C();
                c4113o.f4673e = "";
                c4113o.f4674f = c4071c.m1075d();
                c4113o.f4675g = i;
                c4113o.f4676h = bArr == null ? "".getBytes() : bArr;
                c4113o.f4677i = c4071c.m1071f();
                c4113o.f4678j = c4071c.m1069g();
            }
            if (bArr != null) {
                c4113o.f4676h = m740a(c4113o.f4676h, b, b2, str);
                if (c4113o.f4676h == null) {
                    C4073e.m1012d("reqPkg sbuffer error!", new Object[0]);
                    return null;
                }
            }
            return c4113o;
        } catch (Throwable th) {
            if (C4073e.m1016a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m740a(byte[] bArr, int i, int i2, String str) {
        if (bArr == null) {
            return null;
        }
        try {
            return m739a(m741a(bArr, i), i2, str);
        } catch (Throwable th) {
            if (C4073e.m1016a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m729b(byte[] bArr, int i, int i2, String str) {
        try {
            return m730b(m728b(bArr, 1, str), 2);
        } catch (Exception e) {
            if (!C4073e.m1016a(e)) {
                e.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: c */
    public static long m727c() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            return simpleDateFormat.parse(simpleDateFormat.format(new Date())).getTime();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    /* renamed from: e */
    private static String m722e(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString().toUpperCase();
    }

    /* renamed from: c */
    public static String m725c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "NULL";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr);
            return m722e(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            if (!C4073e.m1016a(e)) {
                e.printStackTrace();
            }
            C4073e.m1012d(e.getMessage(), new Object[0]);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* renamed from: b */
    public static String m732b(String str) {
        FileInputStream fileInputStream;
        String str2 = null;
        if (str != null && str.length() != 0) {
            File file = new File(str);
            if (file.exists()) {
                ?? canRead = file.canRead();
                try {
                    if (canRead != 0) {
                        try {
                            fileInputStream = new FileInputStream(file);
                            try {
                                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = fileInputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    messageDigest.update(bArr, 0, read);
                                }
                                str2 = m722e(messageDigest.digest());
                                try {
                                    fileInputStream.close();
                                } catch (IOException e) {
                                    if (!C4073e.m1016a(e)) {
                                        e.printStackTrace();
                                    }
                                }
                            } catch (IOException e2) {
                                e = e2;
                                if (!C4073e.m1016a(e)) {
                                    e.printStackTrace();
                                }
                                C4073e.m1012d(e.getMessage(), new Object[0]);
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e3) {
                                        if (!C4073e.m1016a(e3)) {
                                            e3.printStackTrace();
                                        }
                                    }
                                }
                                return str2;
                            } catch (NoSuchAlgorithmException e4) {
                                e = e4;
                                if (!C4073e.m1016a(e)) {
                                    e.printStackTrace();
                                }
                                C4073e.m1012d(e.getMessage(), new Object[0]);
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e5) {
                                        if (!C4073e.m1016a(e5)) {
                                            e5.printStackTrace();
                                        }
                                    }
                                }
                                return str2;
                            }
                        } catch (IOException e6) {
                            e = e6;
                            fileInputStream = null;
                        } catch (NoSuchAlgorithmException e7) {
                            e = e7;
                            fileInputStream = null;
                        } catch (Throwable th) {
                            canRead = 0;
                            th = th;
                            if (canRead != 0) {
                                try {
                                    canRead.close();
                                } catch (IOException e8) {
                                    if (!C4073e.m1016a(e8)) {
                                        e8.printStackTrace();
                                    }
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return str2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static boolean m750a(java.io.File r6, java.io.File r7, int r8) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4119a.m750a(java.io.File, java.io.File, int):boolean");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static java.util.ArrayList<java.lang.String> m752a(android.content.Context r6, java.lang.String[] r7) {
        /*
            r1 = 0
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            boolean r2 = com.tencent.feedback.common.C4068a.m1116j(r6)
            if (r2 == 0) goto L1c
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r1 = new java.lang.String
            java.lang.String r2 = "unknown(low memory)"
            r1.<init>(r2)
            r0.add(r1)
        L1b:
            return r0
        L1c:
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> Lc8
            java.lang.Process r4 = r2.exec(r7)     // Catch: java.lang.Throwable -> Lc8
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lc8
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lc8
            java.io.InputStream r5 = r4.getInputStream()     // Catch: java.lang.Throwable -> Lc8
            r2.<init>(r5)     // Catch: java.lang.Throwable -> Lc8
            r3.<init>(r2)     // Catch: java.lang.Throwable -> Lc8
        L32:
            java.lang.String r2 = r3.readLine()     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L53
            r0.add(r2)     // Catch: java.lang.Throwable -> L3c
            goto L32
        L3c:
            r0 = move-exception
            r2 = r1
        L3e:
            boolean r4 = com.tencent.feedback.common.C4073e.m1016a(r0)     // Catch: java.lang.Throwable -> Lc5
            if (r4 != 0) goto L47
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Lc5
        L47:
            if (r3 == 0) goto L4c
            r3.close()     // Catch: java.io.IOException -> L8a
        L4c:
            if (r2 == 0) goto L51
            r2.close()     // Catch: java.io.IOException -> L95
        L51:
            r0 = r1
            goto L1b
        L53:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3c
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3c
            java.io.InputStream r4 = r4.getErrorStream()     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L3c
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L3c
        L61:
            java.lang.String r4 = r2.readLine()     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L6d
            r0.add(r4)     // Catch: java.lang.Throwable -> L6b
            goto L61
        L6b:
            r0 = move-exception
            goto L3e
        L6d:
            r3.close()     // Catch: java.io.IOException -> L7f
        L70:
            r2.close()     // Catch: java.io.IOException -> L74
            goto L1b
        L74:
            r1 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r2 != 0) goto L1b
            r1.printStackTrace()
            goto L1b
        L7f:
            r1 = move-exception
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r3 != 0) goto L70
            r1.printStackTrace()
            goto L70
        L8a:
            r0 = move-exception
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r0)
            if (r3 != 0) goto L4c
            r0.printStackTrace()
            goto L4c
        L95:
            r0 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r0)
            if (r2 != 0) goto L51
            r0.printStackTrace()
            goto L51
        La0:
            r0 = move-exception
            r3 = r1
        La2:
            if (r3 == 0) goto La7
            r3.close()     // Catch: java.io.IOException -> Lad
        La7:
            if (r1 == 0) goto Lac
            r1.close()     // Catch: java.io.IOException -> Lb8
        Lac:
            throw r0
        Lad:
            r2 = move-exception
            boolean r3 = com.tencent.feedback.common.C4073e.m1016a(r2)
            if (r3 != 0) goto La7
            r2.printStackTrace()
            goto La7
        Lb8:
            r1 = move-exception
            boolean r2 = com.tencent.feedback.common.C4073e.m1016a(r1)
            if (r2 != 0) goto Lac
            r1.printStackTrace()
            goto Lac
        Lc3:
            r0 = move-exception
            goto La2
        Lc5:
            r0 = move-exception
            r1 = r2
            goto La2
        Lc8:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4119a.m752a(android.content.Context, java.lang.String[]):java.util.ArrayList");
    }

    /* renamed from: a */
    public static String m755a(Context context, String str) {
        if (str == null || str.trim().equals("")) {
            return "";
        }
        ArrayList<String> m752a = m752a(context, new String[]{"/system/bin/sh", "-c", "getprop " + str});
        if (m752a != null && m752a.size() > 0) {
            return m752a.get(0);
        }
        return "fail";
    }

    /* renamed from: d */
    public static String m724d() {
        try {
            return UUID.randomUUID().toString();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public static void m746a(String str, String str2, int i) {
        FileOutputStream fileOutputStream;
        C4073e.m1015b("rqdp{  sv sd start} %s", str);
        if (str2 != null && str2.trim().length() > 0) {
            File file = new File(str);
            try {
                if (!file.exists()) {
                    if (file.getParentFile() != null) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                if (file.length() >= i) {
                    fileOutputStream = new FileOutputStream(file, false);
                } else {
                    fileOutputStream = new FileOutputStream(file, true);
                }
                fileOutputStream.write(str2.getBytes("UTF-8"));
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
            C4073e.m1015b("rqdp{  sv sd end}", new Object[0]);
        }
    }

    /* renamed from: a */
    public static String m745a(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            return stringWriter.getBuffer().toString();
        } catch (Throwable th2) {
            if (!C4073e.m1016a(th2) && !C4073e.m1016a(th2)) {
                th2.printStackTrace();
            }
            return "fail";
        }
    }

    /* renamed from: d */
    public static C4116R m723d(byte[] bArr) {
        try {
            C4116R c4116r = new C4116R();
            C4126h c4126h = new C4126h(bArr);
            c4126h.m699a("utf-8");
            c4116r.mo667a(c4126h);
            return c4116r;
        } catch (Throwable th) {
            if (!C4073e.m1014b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }
}
