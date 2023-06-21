package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;
import tmsdk.common.module.software.AppEntity;
/* loaded from: classes.dex */
public class cgo {
    private static String TAG = "EnvUtil";
    private static Integer ces = null;

    /* renamed from: Z */
    public static String[] m4326Z(Context context) {
        String[] strArr = new String[4];
        strArr[0] = Build.MODEL;
        strArr[1] = Build.VERSION.RELEASE;
        String str = "";
        try {
            str = cei.m4775cA("/proc/cpuinfo").split("\\n")[0];
        } catch (Exception e) {
            e.printStackTrace();
        }
        strArr[2] = str;
        strArr[3] = Integer.toString(cgt.m4309cx(context)) + "*" + Integer.toString(cgt.m4308cy(context));
        return strArr;
    }

    /* renamed from: pg */
    public static String m4324pg() {
        StringBuilder sb = new StringBuilder();
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                sb.append(new String(bArr));
            }
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
            sb = new StringBuilder("N/A");
        }
        return sb.toString().trim();
    }

    /* renamed from: ph */
    public static long m4323ph() {
        try {
            File dataDirectory = Environment.getDataDirectory();
            if (!dataDirectory.exists()) {
                dataDirectory = new File("/data");
            }
            StatFs statFs = new StatFs(dataDirectory.getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            return 0L;
        }
    }

    /* renamed from: cv */
    public static boolean m4325cv(Context context) {
        AppEntity mo4352Y = ceb.akU().mo4352Y(context.getPackageName(), 1);
        return mo4352Y != null && mo4352Y.amR();
    }

    public static int amY() {
        if (cgv.ceA) {
            if (cgv.getRootState() == 0) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    public static int amZ() {
        if (ces == null) {
            try {
                File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.kingroot.kinguser.cgo.1
                    @Override // java.io.FileFilter
                    public final boolean accept(File file) {
                        return Pattern.matches("cpu[0-9]", file.getName());
                    }
                });
                if (listFiles == null) {
                    return 1;
                }
                ces = Integer.valueOf(listFiles.length);
            } catch (Throwable th) {
                return 1;
            }
        }
        return ces.intValue();
    }

    public static long ana() {
        try {
            File rootDirectory = Environment.getRootDirectory();
            if (!rootDirectory.exists()) {
                rootDirectory = new File("/system");
            }
            StatFs statFs = new StatFs(rootDirectory.getPath());
            return m4323ph() + (statFs.getBlockCount() * statFs.getBlockSize());
        } catch (Throwable th) {
            return 0L;
        }
    }
}
