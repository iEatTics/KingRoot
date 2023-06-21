package com.kingroot.kinguser;

import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.p003os.Environmenu;
import android.util.Log;
import com.google.android.mms.ContentType;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public final class bsi {
    private static final String[][] bLF = {new String[]{"3gp", "video/3gpp"}, new String[]{"apk", "application/vnd.android.package-archive"}, new String[]{"asf", "video/x-ms-asf"}, new String[]{"avi", "video/x-msvideo"}, new String[]{"bin", "application/octet-stream"}, new String[]{"bmp", "image/bmp"}, new String[]{"c", ContentType.TEXT_PLAIN}, new String[]{"class", "application/octet-stream"}, new String[]{"conf", ContentType.TEXT_PLAIN}, new String[]{"cpp", ContentType.TEXT_PLAIN}, new String[]{"doc", "application/msword"}, new String[]{"docx", "application/msword"}, new String[]{"exe", "application/octet-stream"}, new String[]{"gif", "image/gif"}, new String[]{"gtar", "application/x-gtar"}, new String[]{"gz", "application/x-gzip"}, new String[]{"h", ContentType.TEXT_PLAIN}, new String[]{"htm", ContentType.TEXT_HTML}, new String[]{"html", ContentType.TEXT_HTML}, new String[]{"jar", "application/java-archive"}, new String[]{"java", ContentType.TEXT_PLAIN}, new String[]{"jpeg", "image/jpeg"}, new String[]{"jpg", "image/jpeg"}, new String[]{"js", "application/x-javascript"}, new String[]{"log", ContentType.TEXT_PLAIN}, new String[]{"m3u", "audio/x-mpegurl"}, new String[]{"m4a", "audio/mp4a-latm"}, new String[]{"m4b", "audio/mp4a-latm"}, new String[]{"m4p", "audio/mp4a-latm"}, new String[]{"m4u", "video/vnd.mpegurl"}, new String[]{"m4v", "video/x-m4v"}, new String[]{"mov", "video/quicktime"}, new String[]{"mp2", "audio/x-mpeg"}, new String[]{"mp3", "audio/x-mpeg"}, new String[]{"mp4", "video/mp4"}, new String[]{"mpc", "application/vnd.mpohn.certificate"}, new String[]{"mpe", "video/mpeg"}, new String[]{"mpeg", "video/mpeg"}, new String[]{"mpg", "video/mpeg"}, new String[]{"mpg4", "video/mp4"}, new String[]{"mpga", "audio/mpeg"}, new String[]{"msg", "application/vnd.ms-outlook"}, new String[]{"ogg", "audio/ogg"}, new String[]{"pdf", "application/pdf"}, new String[]{"png", "image/png"}, new String[]{"pps", "application/vnd.ms-powerpoint"}, new String[]{"ppsx", "application/vnd.ms-powerpoint"}, new String[]{"ppt", "application/vnd.ms-powerpoint"}, new String[]{"pptx", "application/vnd.ms-powerpoint"}, new String[]{"xls", "application/vnd.ms-excel"}, new String[]{"xlsx", "application/vnd.ms-excel"}, new String[]{"prop", ContentType.TEXT_PLAIN}, new String[]{"rar", "application/x-rar-compressed"}, new String[]{"rc", ContentType.TEXT_PLAIN}, new String[]{"rmvb", "audio/x-pn-realaudio"}, new String[]{"rtf", "application/rtf"}, new String[]{"sh", ContentType.TEXT_PLAIN}, new String[]{"tar", "application/x-tar"}, new String[]{"tgz", "application/x-compressed"}, new String[]{"txt", ContentType.TEXT_PLAIN}, new String[]{"wav", "audio/x-wav"}, new String[]{"wma", "audio/x-ms-wma"}, new String[]{"wmv", "audio/x-ms-wmv"}, new String[]{"wps", "application/vnd.ms-works"}, new String[]{"xml", ContentType.TEXT_PLAIN}, new String[]{"z", "application/x-compress"}, new String[]{"zip", "application/zip"}, new String[]{"epub", "application/epub+zip"}, new String[]{"", "*/*"}};

    /* renamed from: iZ */
    public static boolean m5569iZ() {
        try {
            return Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED);
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* renamed from: aW */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String m5571aW(String str, String str2) {
        String str3;
        String decode;
        int lastIndexOf;
        if (0 == 0 && (decode = Uri.decode(str)) != null) {
            int indexOf = decode.indexOf(63);
            if (indexOf > 0) {
                decode = decode.substring(0, indexOf);
            }
            if (!decode.endsWith("/") && (lastIndexOf = decode.lastIndexOf(47) + 1) > 0) {
                str3 = decode.substring(lastIndexOf);
                if (str3 == null) {
                    str3 = str2;
                }
                if (str3 != null) {
                    return "downloadfile";
                }
                return str3;
            }
        }
        str3 = null;
        if (str3 == null) {
        }
        if (str3 != null) {
        }
    }

    public static String getFileMD5(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        String str = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                str = m5572W(messageDigest.digest());
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                    }
                }
            } catch (IOException e2) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                    }
                }
                return str;
            } catch (NoSuchAlgorithmException e4) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e5) {
                    }
                }
                return str;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        } catch (IOException e7) {
            fileInputStream = null;
        } catch (NoSuchAlgorithmException e8) {
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
        }
        return str;
    }

    /* renamed from: nb */
    public static String m5568nb(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return m5572W(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: W */
    private static String m5572W(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr2[i * 2] = cArr[(b >>> 4) & 15];
            cArr2[(i * 2) + 1] = cArr[b & 15];
        }
        return new String(cArr2);
    }

    /* renamed from: cG */
    public static int m5570cG(long j) {
        if (!m5569iZ()) {
            return 1;
        }
        if (!ahS()) {
            return 2;
        }
        if (m5569iZ() && m5573L(bsn.getExternalStorageDirectory()) < j) {
            return 3;
        }
        return 0;
    }

    /* renamed from: L */
    public static long m5573L(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Exception e) {
            Log.e("FileUtil", e.getMessage());
            return 0L;
        }
    }

    public static boolean ahS() {
        String str = String.valueOf(bsn.getExternalStorageDirectory().toString()) + "/DCIM";
        File file = new File(str);
        if (file.isDirectory() || file.mkdirs()) {
            File file2 = new File(str, ".probe");
            try {
                if (file2.exists()) {
                    file2.delete();
                }
                if (file2.createNewFile()) {
                    file2.delete();
                    return true;
                }
                return false;
            } catch (IOException e) {
                return false;
            }
        }
        return false;
    }
}
