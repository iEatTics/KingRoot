package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.host.stub.KlActivity;
import com.kingroot.loader.sdk.KlInfo;
import com.p019qq.jce.wup.UniAttribute;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class bkr {
    private static final String TAG = bkr.class.getName();

    /* JADX WARN: Removed duplicated region for block: B:84:0x00d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m6541b(File file, String str, String str2) {
        ZipFile zipFile;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        ZipFile zipFile2 = null;
        File file2 = new File(str);
        if (file2.exists() || file2.mkdirs()) {
            try {
                zipFile = new ZipFile(file);
            } catch (Exception e) {
                e = e;
            } catch (Throwable th) {
                th = th;
                zipFile = null;
            }
            try {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    String name = nextElement.getName();
                    if (name.startsWith(str2) && !name.contains("../")) {
                        String replaceAll = (str + File.separator + name).replaceAll("\\*", "/");
                        File file3 = new File(replaceAll.substring(0, replaceAll.lastIndexOf(47)));
                        if (!file3.exists()) {
                            file3.mkdirs();
                        }
                        File file4 = new File(replaceAll);
                        if (file4.isDirectory()) {
                            continue;
                        } else {
                            if (file4.exists()) {
                                file4.delete();
                            }
                            try {
                                inputStream = zipFile.getInputStream(nextElement);
                                try {
                                    fileOutputStream = new FileOutputStream(replaceAll);
                                } catch (IOException e2) {
                                    e = e2;
                                    fileOutputStream = null;
                                    zipFile2 = inputStream;
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileOutputStream = null;
                                }
                            } catch (IOException e3) {
                                e = e3;
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                fileOutputStream = null;
                                inputStream = null;
                            }
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = inputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                }
                                bkp.m6557c(inputStream);
                                bkp.m6557c(fileOutputStream);
                            } catch (IOException e4) {
                                e = e4;
                                zipFile2 = inputStream;
                                try {
                                    e.printStackTrace();
                                    bkp.m6557c(zipFile2);
                                    bkp.m6557c(fileOutputStream);
                                    if (zipFile != null) {
                                        try {
                                            zipFile.close();
                                        } catch (IOException e5) {
                                        }
                                    }
                                    return false;
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream = zipFile2;
                                    bkp.m6557c(inputStream);
                                    bkp.m6557c(fileOutputStream);
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                bkp.m6557c(inputStream);
                                bkp.m6557c(fileOutputStream);
                                throw th;
                            }
                        }
                    }
                }
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e6) {
                    }
                }
                return true;
            } catch (Exception e7) {
                e = e7;
                zipFile2 = zipFile;
                try {
                    bkq.m6550d(e);
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                        } catch (IOException e8) {
                        }
                    }
                    return false;
                } catch (Throwable th6) {
                    th = th6;
                    zipFile = zipFile2;
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (IOException e9) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
                if (zipFile != null) {
                }
                throw th;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static int m6539c(KlInfo klInfo) {
        byte[] m6538mb = m6538mb(klInfo.rawPluginPath);
        if (m6538mb == null || m6538mb.length <= 0) {
            return -2;
        }
        return m6543a(klInfo, m6538mb);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: mb */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] m6538mb(String str) {
        ZipFile zipFile;
        InputStream inputStream;
        byte[] bArr;
        InputStream inputStream2 = null;
        File file = new File(str);
        if (file.exists()) {
            try {
                zipFile = new ZipFile(file);
            } catch (Exception e) {
                e = e;
                inputStream = null;
                zipFile = null;
            } catch (Throwable th) {
                th = th;
                zipFile = null;
            }
            try {
                ZipEntry entry = zipFile.getEntry(KlConst.PLUGIN_CONFIG_ENTRY);
                inputStream = zipFile.getInputStream(entry);
                try {
                    try {
                        int size = (int) entry.getSize();
                        bArr = new byte[size];
                        int i = 0;
                        while (i < size) {
                            int read = inputStream.read(bArr, i, size - i);
                            if (read < 0) {
                                if (zipFile != null) {
                                    try {
                                        zipFile.close();
                                    } catch (IOException e2) {
                                    }
                                }
                                bkp.m6557c(inputStream);
                                return null;
                            }
                            i += read;
                        }
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e3) {
                            }
                        }
                        bkp.m6557c(inputStream);
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e5) {
                            }
                        }
                        bkp.m6557c(inputStream);
                        bArr = null;
                        return bArr;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = inputStream;
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (IOException e6) {
                        }
                    }
                    bkp.m6557c(inputStream2);
                    throw th;
                }
            } catch (Exception e7) {
                e = e7;
                inputStream = null;
            } catch (Throwable th3) {
                th = th3;
                if (zipFile != null) {
                }
                bkp.m6557c(inputStream2);
                throw th;
            }
            return bArr;
        }
        return null;
    }

    /* renamed from: a */
    public static int m6543a(KlInfo klInfo, byte[] bArr) {
        try {
            C2820cn c2820cn = new C2820cn();
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName("UTF-8");
            uniAttribute.decode(bArr);
            if (!m6542b((C2820cn) uniAttribute.getByClass(KlConst.MERIPI_LABEL, c2820cn), klInfo)) {
                return -18;
            }
            if (TextUtils.isEmpty(klInfo.foreEntryClass)) {
                if (TextUtils.isEmpty(klInfo.backEntryClass)) {
                    return -21;
                }
            }
            return 0;
        } catch (Exception e) {
            bkq.m6547e(TAG, "readWupObjectFromFile, err: " + e.getMessage(), e);
            return -7;
        }
    }

    /* renamed from: b */
    public static boolean m6540b(String str, String str2, String str3, String str4) {
        try {
            DexClassLoader dexClassLoader = new DexClassLoader(str, str4, null, KlActivity.class.getClassLoader());
            if (TextUtils.isEmpty(str2) || dexClassLoader.loadClass(str2) != null) {
                if (TextUtils.isEmpty(str3) || dexClassLoader.loadClass(str3) != null) {
                    bkq.m6545i(TAG, "verifyPluginClassEntry | " + str + " | success");
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            bkq.m6547e(TAG, "Err when test plugin class entry : " + str, th);
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m6542b(C2820cn c2820cn, KlInfo klInfo) {
        if (c2820cn == null || klInfo == null) {
            return false;
        }
        klInfo.pluginId = c2820cn.f2349id;
        klInfo.packageName = c2820cn.f2360me;
        klInfo.versionCode = c2820cn.f2350kd;
        klInfo.buildHostId = c2820cn.f2364mi;
        klInfo.buildHostVersion = c2820cn.f2365mj;
        klInfo.backEntryClass = c2820cn.f2353lX;
        klInfo.foreEntryClass = c2820cn.f2352lW;
        klInfo.versionName = c2820cn.f2354lY;
        klInfo.packageMd5 = c2820cn.f2361mf;
        return true;
    }
}
