package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class bqr {
    /* renamed from: a */
    public static String m5762a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: aV */
    public static int m5760aV(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str == null || str2 != null) {
            if (str != null || str2 == null) {
                String[] split = str.split("\\.");
                String[] split2 = str2.split("\\.");
                int i = 0;
                while (i < split.length && i < split2.length) {
                    try {
                        int parseInt = Integer.parseInt(split[i]);
                        int parseInt2 = Integer.parseInt(split2[i]);
                        if (parseInt < parseInt2) {
                            return -1;
                        }
                        if (parseInt > parseInt2) {
                            return 1;
                        }
                        i++;
                    } catch (NumberFormatException e) {
                        return str.compareTo(str2);
                    }
                }
                if (split.length > i) {
                    return 1;
                }
                return split2.length > i ? -1 : 0;
            }
            return -1;
        }
        return 1;
    }

    /* renamed from: M */
    public static String m5765M(Context context, String str) {
        String str2;
        Exception e;
        MessageDigest messageDigest;
        bpy.m5848a("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString");
        try {
            String packageName = context.getPackageName();
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures;
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(signatureArr[0].toByteArray());
            String m5745a = bqt.m5745a(messageDigest.digest());
            messageDigest.reset();
            bpy.m5848a("openSDK_LOG.SystemUtils", "-->sign: " + m5745a);
            messageDigest.update(bqt.m5734mV(packageName + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m5745a + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + str + ""));
            str2 = bqt.m5745a(messageDigest.digest());
        } catch (Exception e2) {
            str2 = "";
            e = e2;
        }
        try {
            messageDigest.reset();
            bpy.m5848a("openSDK_LOG.SystemUtils", "-->signEncryped: " + str2);
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            bpy.m5843b("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString error", e);
            return str2;
        }
        return str2;
    }

    /* renamed from: e */
    public static boolean m5758e(Context context, Intent intent) {
        return (context == null || intent == null || context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    /* renamed from: a */
    public static String m5763a(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    /* renamed from: c */
    public static int m5759c(Context context, String str) {
        return m5760aV(m5762a(context, "com.tencent.mobileqq"), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @SuppressLint({"SdCardPath"})
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m5757i(String str, String str2, int i) {
        IOException iOException;
        FileOutputStream fileOutputStream = null;
        boolean z = false;
        bpy.m5845aT("openSDK_LOG.SystemUtils", "-->extractSecureLib, libName: " + str);
        Context agA = bqo.agA();
        if (agA == null) {
            bpy.m5845aT("openSDK_LOG.SystemUtils", "-->extractSecureLib, global context is null. ");
            return false;
        }
        SharedPreferences sharedPreferences = agA.getSharedPreferences("secure_lib", 0);
        ?? file = new File(agA.getFilesDir(), str2);
        if (file.exists()) {
            int i2 = sharedPreferences.getInt("version", 0);
            bpy.m5845aT("openSDK_LOG.SystemUtils", "-->extractSecureLib, libVersion: " + i + " | oldVersion: " + i2);
            iOException = i2;
            if (i == i2) {
                return true;
            }
        } else {
            File parentFile = file.getParentFile();
            iOException = file;
            if (parentFile != null) {
                iOException = file;
                if (parentFile.mkdirs()) {
                    try {
                        file.createNewFile();
                        iOException = file;
                    } catch (IOException e) {
                        e.printStackTrace();
                        iOException = e;
                    }
                }
            }
        }
        try {
            try {
                iOException = agA.getAssets().open(str);
                try {
                    fileOutputStream = agA.openFileOutput(str2, 0);
                    m5761a(iOException, fileOutputStream);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putInt("version", i);
                    edit.commit();
                    if (iOException != 0) {
                        try {
                            iOException.close();
                        } catch (IOException e2) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    z = true;
                } catch (Exception e4) {
                    e = e4;
                    bpy.m5843b("openSDK_LOG.SystemUtils", "-->extractSecureLib, when copy lib execption.", e);
                    if (iOException != null) {
                        try {
                            iOException.close();
                        } catch (IOException e5) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    return z;
                }
            } catch (Throwable th) {
                th = th;
                if (iOException != 0) {
                    try {
                        iOException.close();
                    } catch (IOException e7) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e8) {
                    }
                }
                throw th;
            }
        } catch (Exception e9) {
            e = e9;
            iOException = null;
        } catch (Throwable th2) {
            th = th2;
            iOException = 0;
            if (iOException != 0) {
            }
            if (fileOutputStream != null) {
            }
            throw th;
        }
        return z;
    }

    /* renamed from: a */
    private static long m5761a(InputStream inputStream, OutputStream outputStream) {
        long j = 0;
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                bpy.m5845aT("openSDK_LOG.SystemUtils", "-->copy, copyed size is: " + j);
                return j;
            }
        }
    }

    /* renamed from: a */
    public static String m5764a(int i) {
        if (i == 10103) {
            return "shareToQQ";
        }
        if (i == 10104) {
            return "shareToQzone";
        }
        if (i == 10105) {
            return "addToQQFavorites";
        }
        if (i == 10106) {
            return "sendToMyComputer";
        }
        if (i == 10107) {
            return "shareToTroopBar";
        }
        if (i == 11101) {
            return "action_login";
        }
        if (i == 10100) {
            return "action_request";
        }
        return null;
    }
}
