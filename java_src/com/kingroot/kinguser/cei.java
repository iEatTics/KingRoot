package com.kingroot.kinguser;

import android.os.Environment;
import android.p003os.Environmenu;
import com.google.android.mms.ContentType;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class cei {
    private static final String[][] bLF = {new String[]{"3gp", "video/3gpp"}, new String[]{"apk", "application/vnd.android.package-archive"}, new String[]{"asf", "video/x-ms-asf"}, new String[]{"avi", "video/x-msvideo"}, new String[]{"bin", "application/octet-stream"}, new String[]{"bmp", "image/bmp"}, new String[]{"c", ContentType.TEXT_PLAIN}, new String[]{"class", "application/octet-stream"}, new String[]{"conf", ContentType.TEXT_PLAIN}, new String[]{"cpp", ContentType.TEXT_PLAIN}, new String[]{"doc", "application/msword"}, new String[]{"docx", "application/msword"}, new String[]{"exe", "application/octet-stream"}, new String[]{"gif", "image/gif"}, new String[]{"gtar", "application/x-gtar"}, new String[]{"gz", "application/x-gzip"}, new String[]{"h", ContentType.TEXT_PLAIN}, new String[]{"htm", ContentType.TEXT_HTML}, new String[]{"html", ContentType.TEXT_HTML}, new String[]{"jar", "application/java-archive"}, new String[]{"java", ContentType.TEXT_PLAIN}, new String[]{"jpeg", "image/jpeg"}, new String[]{"jpg", "image/jpeg"}, new String[]{"js", "application/x-javascript"}, new String[]{"log", ContentType.TEXT_PLAIN}, new String[]{"m3u", "audio/x-mpegurl"}, new String[]{"m4a", "audio/mp4a-latm"}, new String[]{"m4b", "audio/mp4a-latm"}, new String[]{"m4p", "audio/mp4a-latm"}, new String[]{"m4u", "video/vnd.mpegurl"}, new String[]{"m4v", "video/x-m4v"}, new String[]{"mov", "video/quicktime"}, new String[]{"mp2", "audio/x-mpeg"}, new String[]{"mp3", "audio/x-mpeg"}, new String[]{"mp4", "video/mp4"}, new String[]{"mpc", "application/vnd.mpohn.certificate"}, new String[]{"mpe", "video/mpeg"}, new String[]{"mpeg", "video/mpeg"}, new String[]{"mpg", "video/mpeg"}, new String[]{"mpg4", "video/mp4"}, new String[]{"mpga", "audio/mpeg"}, new String[]{"msg", "application/vnd.ms-outlook"}, new String[]{"ogg", "audio/ogg"}, new String[]{"pdf", "application/pdf"}, new String[]{"png", "image/png"}, new String[]{"pps", "application/vnd.ms-powerpoint"}, new String[]{"ppsx", "application/vnd.ms-powerpoint"}, new String[]{"ppt", "application/vnd.ms-powerpoint"}, new String[]{"pptx", "application/vnd.ms-powerpoint"}, new String[]{"xls", "application/vnd.ms-excel"}, new String[]{"xlsx", "application/vnd.ms-excel"}, new String[]{"prop", ContentType.TEXT_PLAIN}, new String[]{"rar", "application/x-rar-compressed"}, new String[]{"rc", ContentType.TEXT_PLAIN}, new String[]{"rmvb", "audio/x-pn-realaudio"}, new String[]{"rtf", "application/rtf"}, new String[]{"sh", ContentType.TEXT_PLAIN}, new String[]{"tar", "application/x-tar"}, new String[]{"tgz", "application/x-compressed"}, new String[]{"txt", ContentType.TEXT_PLAIN}, new String[]{"wav", "audio/x-wav"}, new String[]{"wma", "audio/x-ms-wma"}, new String[]{"wmv", "audio/x-ms-wmv"}, new String[]{"wps", "application/vnd.ms-works"}, new String[]{"xml", ContentType.TEXT_PLAIN}, new String[]{"z", "application/x-compress"}, new String[]{"zip", "application/zip"}, new String[]{"epub", "application/epub+zip"}, new String[]{"", "*/*"}};

    /* renamed from: iZ */
    public static boolean m4774iZ() {
        try {
            return Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED);
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: cA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m4775cA(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
            } catch (Throwable th) {
                th = th;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    String str2 = new String(byteArrayOutputStream.toByteArray());
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                            return str2;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            return str2;
                        }
                    }
                    return str2;
                } catch (FileNotFoundException e3) {
                    e = e3;
                    bufferedInputStream2 = bufferedInputStream;
                    try {
                        e.printStackTrace();
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        return "";
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream = bufferedInputStream2;
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e8) {
                    e = e8;
                    e.printStackTrace();
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                    return "";
                }
            } catch (FileNotFoundException e11) {
                e = e11;
                byteArrayOutputStream = null;
                bufferedInputStream2 = bufferedInputStream;
            } catch (IOException e12) {
                e = e12;
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
                if (byteArrayOutputStream != null) {
                }
                if (bufferedInputStream != null) {
                }
                throw th;
            }
        } catch (FileNotFoundException e13) {
            e = e13;
            byteArrayOutputStream = null;
        } catch (IOException e14) {
            e = e14;
            byteArrayOutputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            bufferedInputStream = null;
        }
    }
}
