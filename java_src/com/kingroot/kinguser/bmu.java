package com.kingroot.kinguser;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Environment;
import android.p003os.Environmenu;
import android.text.TextUtils;
import cloudsdk.CloudSdk;
import cloudsdk.shell.VTCmdResult;
import cloudsdk.shell.VTCommand;
import com.kingroot.kinguser.blt;
import com.kingroot.loader.common.KlConst;
import com.kingx.cloudsdk.C4016aq;
import com.kingx.cloudsdk.C4019b;
import com.kingx.cloudsdk.C4030cg;
import com.kingx.cloudsdk.C4031ch;
import com.kingx.cloudsdk.C4040l;
import com.kingx.cloudsdk.C4045q;
import com.kingx.cloudsdk.C4047s;
import com.kingx.cloudsdk.C4048t;
import com.kingx.cloudsdk.C4049u;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class bmu {
    private static C4031ch bCx;

    /* renamed from: uL */
    public static String f1754uL;

    /* renamed from: a */
    public static boolean m6333a(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: jP */
    public static String m6315jP(int i) {
        int i2 = 0;
        try {
            byte[] m6335a = m6335a(String.format(Locale.ENGLISH, "/proc/%d/cmdline", Integer.valueOf(i)), 100);
            if (m6335a == null) {
                return "";
            }
            int i3 = -1;
            while (true) {
                int i4 = i3;
                i3 = i4 + 1;
                if (i4 >= m6335a.length) {
                    break;
                } else if (i3 == m6335a.length || m6335a[i3] == 0) {
                    break;
                }
            }
            i2 = i3;
            return new String(m6335a, 0, i2);
        } catch (Throwable th) {
            return "";
        }
    }

    @Deprecated
    /* renamed from: mn */
    public static String m6310mn(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: l */
    public static byte[] m6314l(byte[] bArr) {
        bmw.agb();
        return bmw.m6301a("DFG#$%^#%$RGHR(&*M<><".getBytes(), bArr);
    }

    /* renamed from: mo */
    public static String m6309mo(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: H */
    public static Resources m6348H(Context context, String str) {
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            assetManager.getClass().getMethod("addAssetPath", String.class).invoke(assetManager, str);
            Resources resources = context.getResources();
            return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m6336a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: F */
    public static void m6350F(Context context, String str) {
        f1754uL = str;
        C4031ch c4031ch = new C4031ch();
        c4031ch.f4210cu = "F7E418FB9C74DF11";
        c4031ch.f4212cw = f1754uL;
        c4031ch.f4211cv = 801;
        c4031ch.f4203cB = bmn.afL();
        c4031ch.f4209ct = 14;
        c4031ch.f4223hx = bmn.m6378V();
        String[] split = blo.afq().trim().split("[\\.]");
        c4031ch.f4216hL = new C4030cg();
        c4031ch.f4216hL.f4200hG = split.length > 0 ? Integer.parseInt(split[0]) : 1;
        c4031ch.f4216hL.f4201hH = split.length >= 2 ? Integer.parseInt(split[1]) : 0;
        c4031ch.f4216hL.f4202hI = split.length >= 3 ? Integer.parseInt(split[2]) : 0;
        bCx = c4031ch;
    }

    /* renamed from: S */
    public static byte[] m6346S(byte[] bArr) {
        bmw.agb();
        return bmw.m6298b("DFG#$%^#%$RGHR(&*M<><".getBytes(), bArr);
    }

    /* renamed from: ep */
    public static int m6320ep(boolean z) {
        blv blvVar = null;
        int i = 0;
        try {
            if (new File("/system/bin/su").exists()) {
                i = 8;
            } else if (new File("/system/xbin/su").exists()) {
                i = 8;
            }
            blv blvVar2 = new blv("sh");
            try {
                VTCmdResult m6440o = blvVar2.m6440o("su -v", 8000L);
                if (m6440o.success() && m6440o.mStdOut != null && m6440o.mStdOut.contains("kinguser")) {
                    i |= 4;
                }
                m6317jN(i);
                blvVar2.shutdown();
            } catch (IOException e) {
                blvVar = blvVar2;
                if (blvVar != null) {
                    blvVar.shutdown();
                }
                return i;
            } catch (Exception e2) {
                blvVar = blvVar2;
                if (blvVar != null) {
                    blvVar.shutdown();
                }
                return i;
            } catch (Throwable th) {
                th = th;
                blvVar = blvVar2;
                if (blvVar != null) {
                    blvVar.shutdown();
                }
                throw th;
            }
        } catch (IOException e3) {
        } catch (Exception e4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return i;
    }

    /* renamed from: d */
    public static void m6324d(long j) {
        CloudSdk.getInstance().getContext().getSharedPreferences("common_setting", 0).edit().putLong("S02", j).commit();
    }

    /* renamed from: a */
    public static PackageInfo m6343a(Context context, String str, int i) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: bI */
    public static void m6327bI(Context context) {
        try {
            bll m6489b = bll.m6489b(context.getAssets(), "krsdk.cert");
            if (m6489b == null) {
                m6349G(context, "krsdk.cert");
                throw new RuntimeException("generate license failed");
            }
            if (context instanceof ContextWrapper) {
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (!m6489b.m6491a(context)) {
                throw new RuntimeException("invalid license");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    /* renamed from: jO */
    private static String m6316jO(int i) {
        return new StringBuilder().append(i).toString();
    }

    /* renamed from: b */
    private static C4047s m6330b(int i, int i2, String str, String str2, long j) {
        C4047s c4047s = new C4047s();
        c4047s.f4302id = i;
        c4047s.f4298cd = i2;
        c4047s.f4299ce = str;
        c4047s.f4300cf = str2;
        if (j != 0) {
            ArrayList<Long> arrayList = new ArrayList<>();
            arrayList.add(Long.valueOf(j));
            c4047s.f4301cg = arrayList;
        }
        c4047s.count = 1;
        c4047s.time = System.currentTimeMillis();
        return c4047s;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static VTCmdResult m6334a(String str, VTCommand vTCommand) {
        blv blvVar;
        VTCmdResult vTCmdResult;
        blv blvVar2 = null;
        try {
            blvVar = new blv(str);
            try {
                blw.add(blvVar);
                if (bmp.m6361V() >= 14 && bmp.m6361V() < 21) {
                    blvVar.m6440o("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
                }
                VTCmdResult m6447a = blvVar.m6447a(vTCommand);
                blvVar.shutdown();
                vTCmdResult = m6447a;
            } catch (Exception e) {
                if (blvVar != null) {
                    blvVar.shutdown();
                    vTCmdResult = null;
                } else {
                    vTCmdResult = null;
                }
                if (vTCmdResult != null) {
                }
            } catch (Throwable th) {
                blvVar2 = blvVar;
                th = th;
                if (blvVar2 != null) {
                    blvVar2.shutdown();
                }
                throw th;
            }
        } catch (Exception e2) {
            blvVar = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return vTCmdResult != null ? new VTCmdResult(vTCommand.mCmdFlag, 2, "", "Run Cmd Exception") : vTCmdResult;
    }

    /* renamed from: G */
    public static boolean m6349G(Context context, String str) {
        try {
            String[] list = context.getAssets().list("");
            if (list == null || list.length <= 0) {
                return false;
            }
            for (String str2 : list) {
                if (str.equals(str2)) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: bJ */
    public static byte m6326bJ(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
        }
        if (activeNetworkInfo == null || !(activeNetworkInfo.getState() == NetworkInfo.State.CONNECTING || activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED)) {
            return (byte) -1;
        }
        if (activeNetworkInfo.getType() == 1) {
            return (byte) 0;
        }
        if (activeNetworkInfo.getType() == 0) {
            return (Proxy.getDefaultHost() == null && Proxy.getHost(context) == null) ? (byte) 1 : (byte) 2;
        }
        if (bmp.m6361V() >= 13 && activeNetworkInfo.getType() == 9) {
            return (byte) 0;
        }
        return (byte) -1;
    }

    /* renamed from: mk */
    public static Properties m6313mk(String str) {
        ByteArrayInputStream byteArrayInputStream;
        Properties properties = new Properties();
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byte[] m6456D = blt.C2506a.m6456D(CloudSdk.getInstance().getContext(), str);
            CloudSdk.getInstance().getContext();
            byteArrayInputStream = new ByteArrayInputStream(m6346S(m6456D));
            try {
                properties.load(byteArrayInputStream);
                byteArrayInputStream.close();
                try {
                    byteArrayInputStream.close();
                } catch (IOException e) {
                }
            } catch (Exception e2) {
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e3) {
                    }
                }
                return properties;
            } catch (Throwable th) {
                byteArrayInputStream2 = byteArrayInputStream;
                th = th;
                if (byteArrayInputStream2 != null) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            byteArrayInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return properties;
    }

    /* renamed from: d */
    public static boolean m6323d(long j, long j2, long j3) {
        return Math.abs(j2 - j) > j3;
    }

    /* renamed from: jN */
    public static synchronized void m6317jN(int i) {
        synchronized (bmu.class) {
            bCx.f4218hN = i;
        }
    }

    /* renamed from: a */
    private static C4045q m6344a(int i, int i2, C4047s... c4047sArr) {
        C4045q c4045q = new C4045q();
        c4045q.f4294aC = blo.afs();
        c4045q.f4295aD = blo.aft();
        c4045q.f4296ca = bma.afE();
        if (m6333a(c4045q.f4296ca)) {
            c4045q.f4296ca = new ArrayList<>();
        }
        Iterator<C4048t> it = c4045q.f4296ca.iterator();
        while (it.hasNext()) {
            C4048t next = it.next();
            if (next.f4305id == i && next.version == i2) {
                next.f4303ci.addAll(Arrays.asList(c4047sArr));
                return c4045q;
            }
        }
        C4048t c4048t = new C4048t();
        c4048t.f4305id = i;
        c4048t.version = i2;
        c4048t.f4303ci = new ArrayList<>();
        c4048t.f4303ci.addAll(Arrays.asList(c4047sArr));
        c4045q.f4296ca.add(c4048t);
        return c4045q;
    }

    /* renamed from: D */
    public static String m6351D(Context context) {
        bll bllVar;
        try {
            bllVar = bll.m6489b(context.getAssets(), "krsdk.cert");
        } catch (Exception e) {
            e.printStackTrace();
            bllVar = null;
        }
        if (bllVar == null) {
            return "";
        }
        return bllVar.m6487e();
    }

    /* renamed from: mp */
    public static byte[] m6308mp(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    /* renamed from: z */
    public static String m6305z(ArrayList<String> arrayList) {
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

    /* renamed from: g */
    public static int m6318g(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                break;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
        if (j > 2147483647L) {
            return -1;
        }
        return (int) j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ int[] m6328b(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        if (length > 1) {
            if (iArr2.length < 4) {
                int[] iArr3 = new int[4];
                System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                iArr2 = iArr3;
            }
            int i = (52 / length) + 6;
            int i2 = iArr[length - 1];
            int length2 = 909933759 + i + iArr2.length + ((1744502010 - i) - iArr2.length);
            int i3 = i2;
            int i4 = 0;
            do {
                i4 += length2;
                int i5 = (i4 >>> 2) & 3;
                int i6 = i3;
                int i7 = 0;
                while (i7 < length - 1) {
                    int i8 = iArr[i7 + 1];
                    i6 = (((i6 ^ iArr2[(i7 & 3) ^ i5]) + (i8 ^ i4)) ^ (((i6 >>> 5) ^ (i8 << 2)) + ((i8 >>> 3) ^ (i6 << 4)))) + iArr[i7];
                    iArr[i7] = i6;
                    i7++;
                }
                int i9 = iArr[0];
                int i10 = length - 1;
                i3 = (((iArr2[(i7 & 3) ^ i5] ^ i6) + (i9 ^ i4)) ^ (((i6 >>> 5) ^ (i9 << 2)) + ((i9 >>> 3) ^ (i6 << 4)))) + iArr[i10];
                iArr[i10] = i3;
                i--;
            } while (i > 0);
            return iArr;
        }
        return iArr;
    }

    /* renamed from: a */
    public static synchronized void m6337a(C4040l c4040l, int i, String str, boolean z) {
        synchronized (bmu.class) {
            C4047s m6330b = m6330b(50200, i, str, null, c4040l != null ? c4040l.f4268bq : 0L);
            blo.afs();
            blo.aft();
            C4045q m6344a = m6344a(8000, 1, m6330b);
            if (bls.m6462a(CloudSdk.getInstance().getContext(), m6344a, (AtomicReference<C4049u>) null) == 0) {
                bma.m6417a(m6344a.f4296ca);
            } else {
                bma.m6418a(8000, 1, m6330b);
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m6338a(C4016aq c4016aq, boolean z, int i, boolean z2, String str) {
        synchronized (bmu.class) {
            C4047s m6330b = m6330b(z ? 50128 : 50006, 0, str, m6316jO(1), c4016aq.bAL);
            C4047s m6330b2 = z ? m6330b(50004, 0, str, m6316jO(1), c4016aq.bAL) : null;
            C4045q m6344a = m6330b2 == null ? m6344a(c4016aq.f4138aH, c4016aq.versionCode, m6330b) : m6344a(c4016aq.f4138aH, c4016aq.versionCode, m6330b, m6330b2);
            if (bls.m6462a(CloudSdk.getInstance().getContext(), m6344a, (AtomicReference<C4049u>) null) == 0) {
                bma.m6417a(m6344a.f4296ca);
            } else {
                bma.m6418a(c4016aq.f4138aH, c4016aq.versionCode, m6330b);
                if (m6330b2 != null) {
                    bma.m6418a(c4016aq.f4138aH, c4016aq.versionCode, m6330b2);
                }
            }
        }
    }

    /* renamed from: f */
    public static int m6319f(bme bmeVar) {
        byte[] m6331aQ = m6331aQ(bmeVar.bBu, KlConst.PLUGIN_CONFIG_ENTRY);
        if (m6331aQ == null || m6331aQ.length <= 0) {
            return -2;
        }
        return m6340a(bmeVar, m6331aQ);
    }

    /* renamed from: mq */
    public static String m6307mq(String str) {
        return m6322d("\t", "%09", m6322d("\n", "%0A", m6322d("|", "%7C", m6322d(";", "%3B", str))));
    }

    /* renamed from: d */
    private static String m6322d(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str3)) {
            return str3.replace(str, str2);
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ int[] m6332a(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        if (length > 1) {
            if (iArr2.length < 4) {
                int[] iArr3 = new int[4];
                System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                iArr2 = iArr3;
            }
            int i = (52 / length) + 6;
            int length2 = 909933759 + i + iArr2.length + ((1744502010 - i) - iArr2.length);
            int i2 = i * length2;
            int i3 = iArr[0];
            do {
                int i4 = (i2 >>> 2) & 3;
                int i5 = i3;
                int i6 = length - 1;
                while (i6 > 0) {
                    int i7 = iArr[i6 - 1];
                    i5 = iArr[i6] - (((i5 ^ i2) + (i7 ^ iArr2[(i6 & 3) ^ i4])) ^ (((i7 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i7 << 4))));
                    iArr[i6] = i5;
                    i6--;
                }
                int i8 = iArr[length - 1];
                i3 = iArr[0] - (((iArr2[(i6 & 3) ^ i4] ^ i8) + (i5 ^ i2)) ^ (((i8 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i8 << 4))));
                iArr[0] = i3;
                i2 -= length2;
            } while (i2 != 0);
            return iArr;
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: aQ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] m6331aQ(String str, String str2) {
        InputStream inputStream;
        ZipFile zipFile;
        byte[] bArr;
        File file = new File(str);
        if (file.exists()) {
            try {
                zipFile = new ZipFile(file);
                try {
                    ZipEntry entry = zipFile.getEntry(str2);
                    inputStream = zipFile.getInputStream(entry);
                    try {
                        try {
                            int size = (int) entry.getSize();
                            bArr = new byte[size];
                            int i = 0;
                            while (i < size) {
                                int read = inputStream.read(bArr, i, size - i);
                                if (read < 0 && i != size) {
                                    try {
                                        zipFile.close();
                                    } catch (IOException e) {
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            return null;
                                        } catch (IOException e2) {
                                            return null;
                                        }
                                    }
                                    return null;
                                }
                                i += read;
                            }
                            try {
                                zipFile.close();
                            } catch (IOException e3) {
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e4) {
                                }
                            }
                        } catch (Exception e5) {
                            e = e5;
                            e.printStackTrace();
                            if (zipFile != null) {
                                try {
                                    zipFile.close();
                                } catch (IOException e6) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    bArr = null;
                                } catch (IOException e7) {
                                    bArr = null;
                                }
                            } else {
                                bArr = null;
                            }
                            return bArr;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e8) {
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e9) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e10) {
                    e = e10;
                    inputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                    if (zipFile != null) {
                    }
                    if (inputStream != null) {
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                inputStream = null;
                zipFile = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
                zipFile = null;
            }
            return bArr;
        }
        return null;
    }

    /* renamed from: a */
    public static synchronized void m6339a(C4016aq c4016aq, int i, boolean z) {
        synchronized (bmu.class) {
            C4047s m6330b = m6330b(50124, 0, null, m6316jO(1), c4016aq.bAL);
            C4045q m6344a = m6344a(c4016aq.f4138aH, c4016aq.versionCode, m6330b);
            if (bls.m6462a(CloudSdk.getInstance().getContext(), m6344a, (AtomicReference<C4049u>) null) == 0) {
                bma.m6417a(m6344a.f4296ca);
            } else {
                bma.m6418a(c4016aq.f4138aH, c4016aq.versionCode, m6330b);
            }
        }
    }

    /* renamed from: o */
    public static void m6306o(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                file.delete();
                file.mkdirs();
                file.setExecutable(true, false);
                return;
            }
            return;
        }
        file.mkdirs();
        file.setExecutable(true, false);
    }

    /* renamed from: a */
    public static synchronized void m6342a(bme bmeVar, int i, boolean z) {
        synchronized (bmu.class) {
            bma.m6418a(bmeVar.bBq, bmeVar.versionCode, m6330b(50125, 0, null, m6316jO(1), bmeVar.bAL));
        }
    }

    /* renamed from: c */
    public static String m6325c(File file) {
        return (file.exists() && file.isFile()) ? blt.C2506a.m6453c(file) : "";
    }

    /* renamed from: a */
    public static synchronized void m6341a(bme bmeVar, boolean z, int i, int i2, boolean z2, String str) {
        synchronized (bmu.class) {
            C4047s m6330b = m6330b(z ? 50122 : 50123, z ? 0 : i, str, m6316jO(1), bmeVar.bAL);
            C4045q m6344a = m6344a(bmeVar.bBq, bmeVar.versionCode, m6330b);
            if (bls.m6462a(CloudSdk.getInstance().getContext(), m6344a, (AtomicReference<C4049u>) null) == 0) {
                bma.m6417a(m6344a.f4296ca);
            } else {
                bma.m6418a(bmeVar.bBq, bmeVar.versionCode, m6330b);
            }
        }
    }

    /* renamed from: a */
    private static int m6340a(bme bmeVar, byte[] bArr) {
        try {
            C4019b c4019b = new C4019b();
            bmy bmyVar = new bmy();
            bmyVar.mo6294mr("UTF-8");
            bmyVar.mo6290s(bArr);
            C4019b c4019b2 = (C4019b) bmyVar.m6296e(KlConst.MERIPI_LABEL, c4019b);
            bmeVar.bBq = c4019b2.f4177id;
            bmeVar.packageName = c4019b2.f4165am;
            bmeVar.versionCode = c4019b2.f4155ac;
            bmeVar.bBr = c4019b2.f4169aq;
            bmeVar.bBs = c4019b2.f4170ar;
            bmeVar.bBt = c4019b2.f4158af;
            bmeVar.f1751xu = c4019b2.f4166an;
            return 0;
        } catch (Exception e) {
            return -7;
        }
    }

    /* renamed from: b */
    public static void m6329b(byte[] bArr, String str) {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(str, false);
        } catch (Throwable th) {
            th = th;
            fileOutputStream = null;
        }
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            m6336a(fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            m6336a(fileOutputStream);
            throw th;
        }
    }

    /* renamed from: ml */
    public static String m6312ml(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        BufferedInputStream bufferedInputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    bufferedInputStream = new BufferedInputStream(fileInputStream);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = bufferedInputStream.read(bArr);
                                if (read == -1) {
                                    String str2 = new String(byteArrayOutputStream.toByteArray());
                                    m6336a(byteArrayOutputStream);
                                    m6336a(bufferedInputStream);
                                    m6336a(fileInputStream);
                                    return str2;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        } catch (FileNotFoundException e) {
                            e = e;
                            bufferedInputStream2 = bufferedInputStream;
                            fileInputStream2 = fileInputStream;
                            try {
                                e.printStackTrace();
                                m6336a(byteArrayOutputStream);
                                m6336a(bufferedInputStream2);
                                m6336a(fileInputStream2);
                                return "";
                            } catch (Throwable th) {
                                th = th;
                                fileInputStream = fileInputStream2;
                                bufferedInputStream = bufferedInputStream2;
                                m6336a(byteArrayOutputStream);
                                m6336a(bufferedInputStream);
                                m6336a(fileInputStream);
                                throw th;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            m6336a(byteArrayOutputStream);
                            m6336a(bufferedInputStream);
                            m6336a(fileInputStream);
                            return "";
                        }
                    } catch (FileNotFoundException e3) {
                        e = e3;
                        byteArrayOutputStream = null;
                        bufferedInputStream2 = bufferedInputStream;
                        fileInputStream2 = fileInputStream;
                    } catch (IOException e4) {
                        e = e4;
                        byteArrayOutputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = null;
                        m6336a(byteArrayOutputStream);
                        m6336a(bufferedInputStream);
                        m6336a(fileInputStream);
                        throw th;
                    }
                } catch (FileNotFoundException e5) {
                    e = e5;
                    byteArrayOutputStream = null;
                    fileInputStream2 = fileInputStream;
                } catch (IOException e6) {
                    e = e6;
                    byteArrayOutputStream = null;
                    bufferedInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = null;
                    bufferedInputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            byteArrayOutputStream = null;
            fileInputStream2 = null;
        } catch (IOException e8) {
            e = e8;
            byteArrayOutputStream = null;
            bufferedInputStream = null;
            fileInputStream = null;
        } catch (Throwable th5) {
            th = th5;
            byteArrayOutputStream = null;
            bufferedInputStream = null;
            fileInputStream = null;
        }
    }

    /* renamed from: J */
    public static String m6347J(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return m6321e(fileInputStream);
        } finally {
            m6336a(fileInputStream);
        }
    }

    /* renamed from: e */
    public static String m6321e(InputStream inputStream) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            byte[] digest = messageDigest.digest();
            if (digest == null) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer(digest.length * 2);
            for (byte b : digest) {
                stringBuffer.append("0123456789ABCDEF".charAt((b >> 4) & 15)).append("0123456789ABCDEF".charAt(b & 15));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean aga() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == null) {
            return false;
        }
        return externalStorageState.equals(Environmenu.MEDIA_MOUNTED);
    }

    /* renamed from: mm */
    public static boolean m6311mm(String str) {
        boolean z;
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                z = true;
                for (File file2 : listFiles) {
                    if (file2.isFile()) {
                        z = deleteFile(file2.getAbsolutePath());
                        if (!z) {
                            break;
                        }
                    } else {
                        z = m6311mm(file2.getAbsolutePath());
                        if (!z) {
                            break;
                        }
                    }
                }
            } else {
                z = true;
            }
            if (z && file.delete()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean deleteFile(String str) {
        try {
            return new File(str).delete();
        } catch (Exception e) {
            return false;
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
    public static byte[] m6335a(java.lang.String r7, int r8) {
        /*
            r6 = 100
            r0 = 0
            r2 = 0
            java.io.File r1 = new java.io.File
            r1.<init>(r7)
            boolean r3 = r1.exists()
            if (r3 != 0) goto L11
            r0 = r2
        L10:
            return r0
        L11:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3b
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L3b
            r1 = 100
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L4a
        L1a:
            int r4 = 100 - r0
            int r4 = r3.read(r1, r0, r4)     // Catch: java.lang.Throwable -> L4a
            r5 = -1
            if (r4 == r5) goto L26
            int r0 = r0 + r4
            if (r0 < r6) goto L1a
        L26:
            r4 = r0
            if (r4 != 0) goto L2e
            m6336a(r3)
            r0 = r2
            goto L10
        L2e:
            if (r4 >= r6) goto L4d
            byte[] r0 = new byte[r4]     // Catch: java.lang.Throwable -> L4a
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r1, r5, r0, r6, r4)     // Catch: java.lang.Throwable -> L4a
        L37:
            m6336a(r3)
            goto L10
        L3b:
            r0 = move-exception
            r0 = r2
        L3d:
            m6336a(r0)
            r0 = r2
            goto L10
        L42:
            r0 = move-exception
            r3 = r2
        L44:
            m6336a(r3)
            throw r0
        L48:
            r0 = move-exception
            goto L44
        L4a:
            r0 = move-exception
            r0 = r3
            goto L3d
        L4d:
            r0 = r1
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bmu.m6335a(java.lang.String, int):byte[]");
    }
}
