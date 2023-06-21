package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.kingroot.kinguser.bmn;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class bmk {
    private static long bBU = -1;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.Closeable] */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long m6388P() {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2;
        DataInputStream dataInputStream3 = null;
        if (bBU == -1) {
            File file = new File("/proc/meminfo");
            ?? exists = file.exists();
            try {
                if (exists != 0) {
                    try {
                        exists = new FileInputStream(file);
                        try {
                            dataInputStream2 = new DataInputStream(exists);
                            try {
                                String readLine = dataInputStream2.readLine();
                                if (readLine == null) {
                                    throw new IOException("/proc/meminfo is empty!");
                                }
                                bBU = Long.parseLong(readLine.trim().split("[\\s]+")[1]);
                                bmu.m6336a(dataInputStream2);
                                bmu.m6336a((Closeable) exists);
                            } catch (FileNotFoundException e) {
                                e = e;
                                dataInputStream3 = dataInputStream2;
                                try {
                                    e.printStackTrace();
                                    bmu.m6336a(dataInputStream3);
                                    bmu.m6336a((Closeable) exists);
                                    if (bBU <= 0) {
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    dataInputStream = dataInputStream3;
                                    bmu.m6336a(dataInputStream);
                                    bmu.m6336a((Closeable) exists);
                                    throw th;
                                }
                            } catch (IOException e2) {
                                e = e2;
                                e.printStackTrace();
                                bmu.m6336a(dataInputStream2);
                                bmu.m6336a((Closeable) exists);
                                if (bBU <= 0) {
                                }
                            } catch (NumberFormatException e3) {
                                e = e3;
                                e.printStackTrace();
                                bmu.m6336a(dataInputStream2);
                                bmu.m6336a((Closeable) exists);
                                if (bBU <= 0) {
                                }
                            }
                        } catch (FileNotFoundException e4) {
                            e = e4;
                        } catch (IOException e5) {
                            e = e5;
                            dataInputStream2 = null;
                        } catch (NumberFormatException e6) {
                            e = e6;
                            dataInputStream2 = null;
                        } catch (Throwable th2) {
                            th = th2;
                            dataInputStream = null;
                            bmu.m6336a(dataInputStream);
                            bmu.m6336a((Closeable) exists);
                            throw th;
                        }
                    } catch (FileNotFoundException e7) {
                        e = e7;
                        exists = 0;
                    } catch (IOException e8) {
                        e = e8;
                        exists = 0;
                        dataInputStream2 = null;
                    } catch (NumberFormatException e9) {
                        e = e9;
                        exists = 0;
                        dataInputStream2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        exists = 0;
                        dataInputStream = null;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        if (bBU <= 0) {
            return bBU;
        }
        return 1L;
    }

    /* renamed from: bC */
    public static String[] m6386bC(Context context) {
        String[] strArr = new String[4];
        strArr[0] = Build.MODEL;
        strArr[1] = Build.VERSION.RELEASE;
        String str = "";
        try {
            str = bmu.m6312ml("/proc/cpuinfo").split("\\n")[0];
        } catch (Exception e) {
            e.printStackTrace();
        }
        strArr[2] = str;
        strArr[3] = Integer.toString(bmn.m6373bF(context)) + "*" + Integer.toString(bmn.m6372bG(context));
        return strArr;
    }

    /* renamed from: Q */
    public static String m6387Q() {
        StringBuilder sb = new StringBuilder();
        InputStream inputStream = null;
        try {
            inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                sb.append(new String(bArr));
            }
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
            sb = new StringBuilder("N/A");
        } finally {
            bmu.m6336a(inputStream);
        }
        return sb.toString().trim();
    }

    public static long afJ() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    /* renamed from: f */
    public static String m6385f(Context context) {
        bmn.C2511a c2511a;
        String str = new String();
        String[] m6386bC = m6386bC(context);
        String str2 = (((((((str + "MODEL " + m6386bC[0] + ";") + "ANDROID " + m6386bC[1] + ";") + "CPU " + m6386bC[2] + ";") + "CPUFreq " + m6387Q() + ";") + "CPUNum " + Runtime.getRuntime().availableProcessors() + ";") + "resolution " + m6386bC[3] + ";") + "ram " + m6388P() + ";") + "rom " + afJ() + ";";
        bmn.m6377a(new bmn.C2511a());
        return (((str2 + "sdcard " + c2511a.bCc + ";") + "simNum 1;") + "baseband " + blq.get("gsm.version.baseband") + ";") + "inversion " + Build.DISPLAY + ";";
    }
}
