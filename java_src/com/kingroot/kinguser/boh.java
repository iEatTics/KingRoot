package com.kingroot.kinguser;

import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URLDecoder;
/* loaded from: classes.dex */
public class boh {

    /* renamed from: a */
    public int f1834a = 0;

    /* renamed from: b */
    public String f1835b = "";

    public boh() {
    }

    public boh(int i, String str) {
        m6084a(i, str);
    }

    /* renamed from: a */
    public static long m6085a() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            th.printStackTrace();
            return -1L;
        }
    }

    /* renamed from: b */
    public static long m6083b() {
        try {
            String absolutePath = boi.agA().getFilesDir().getAbsolutePath();
            StatFs statFs = new StatFs(absolutePath);
            statFs.restat(absolutePath);
            return statFs.getBlockSize() * statFs.getAvailableBlocks();
        } catch (Throwable th) {
            th.printStackTrace();
            return -1L;
        }
    }

    /* renamed from: c */
    public static String m6082c(String str, String str2, String str3, String str4) {
        String m6079f = m6079f(str3, str4);
        if (m6079f == null && (m6079f = m6077h(str, str4)) == null) {
            m6079f = "downloadfile" + str4;
            if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase("application/vnd.android.package-archive")) {
                m6079f = m6079f + KlConst.PLUGIN_FILE_NAME_SUFFIX;
            }
        }
        return !TextUtils.isEmpty(m6079f) ? m6079f.replace("?", "").replace("*", "").replace(":", "").replace("\\", "").replace("/", "").replace("\"", "").replace("<", "").replace(">", "").replace("|", "") : m6079f;
    }

    /* renamed from: e */
    public static boolean m6081e(Exception exc) {
        String message;
        return exc != null && (exc instanceof IOException) && (message = exc.getMessage()) != null && (message.contains("ENOSPC") || message.contains("No space left on device"));
    }

    /* renamed from: f */
    private static String m6079f(String str, String str2) {
        int indexOf;
        String str3;
        try {
            if (!TextUtils.isEmpty(str) && -1 != (indexOf = str.indexOf("filename="))) {
                int i = indexOf + 9;
                int indexOf2 = str.indexOf(";", i);
                if (indexOf2 == -1) {
                    indexOf2 = str.length();
                }
                try {
                    str3 = URLDecoder.decode(str.substring(i, indexOf2), "utf-8");
                } catch (UnsupportedEncodingException e) {
                    try {
                        str3 = URLDecoder.decode(str3, "gbk");
                    } catch (UnsupportedEncodingException e2) {
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    int lastIndexOf = str3.lastIndexOf("/") + 1;
                    String substring = lastIndexOf > 0 ? str3.substring(lastIndexOf) : str3;
                    return !TextUtils.isEmpty(substring) ? m6076k(str3, str2) : substring;
                }
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public static boolean m6080f(Exception exc) {
        String message;
        return exc != null && (exc instanceof IOException) && (message = exc.getMessage()) != null && message.contains("Read-only file system");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030 A[Catch: Exception -> 0x0035, TRY_LEAVE, TryCatch #0 {Exception -> 0x0035, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000f, B:8:0x0014, B:10:0x001c, B:12:0x0026, B:13:0x002a, B:15:0x0030), top: B:20:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m6077h(String str, String str2) {
        String str3;
        int lastIndexOf;
        try {
            String decode = Uri.decode(str);
            if (decode != null) {
                int indexOf = decode.indexOf(63);
                if (indexOf > 0) {
                    decode = decode.substring(0, indexOf);
                }
                if (!decode.endsWith("/") && (lastIndexOf = decode.lastIndexOf(47) + 1) > 0) {
                    str3 = decode.substring(lastIndexOf);
                    if (TextUtils.isEmpty(str3)) {
                        return m6076k(str3, str2);
                    }
                    return null;
                }
            }
            str3 = null;
            if (TextUtils.isEmpty(str3)) {
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public static boolean m6078h(String str, int i, int i2) {
        Socket socket;
        try {
            socket = new Socket();
        } catch (Throwable th) {
            th = th;
            socket = null;
        }
        try {
            socket.connect(new InetSocketAddress(str, 80), 5000);
            r0 = socket.isConnected();
            try {
                socket.close();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
            try {
                th.printStackTrace();
                return r0;
            } finally {
                if (socket != null) {
                    try {
                        socket.close();
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
            }
        }
        return r0;
    }

    /* renamed from: k */
    private static String m6076k(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(".");
        String str3 = "";
        if (lastIndexOf > 0 && str.length() > lastIndexOf + 1) {
            String substring = str.substring(0, lastIndexOf);
            str3 = str.substring(lastIndexOf);
            str = substring;
        }
        return str + str2 + str3;
    }

    /* renamed from: a */
    public void m6084a(int i, String str) {
        this.f1834a = i;
        if (TextUtils.isEmpty(str)) {
            this.f1835b = "";
        } else {
            this.f1835b = str;
        }
    }
}
