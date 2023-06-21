package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public class bio {
    /* renamed from: lO */
    public static boolean m6850lO(String str) {
        return TextUtils.isEmpty(str) || "null".equalsIgnoreCase(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* renamed from: lP */
    public static synchronized byte[] m6849lP(String str) {
        FileInputStream fileInputStream;
        byte[] bArr;
        synchronized (bio.class) {
            File file = new File(C3563rs.m2363c(bzt.m5101ge(), str, null));
            boolean exists = file.exists();
            try {
                if (exists == 0) {
                    bArr = new byte[0];
                } else {
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            bArr = ceg.m4778m(fileInputStream);
                            exists = fileInputStream;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    exists = fileInputStream;
                                } catch (IOException e) {
                                    e.printStackTrace();
                                    exists = e;
                                }
                            }
                        } catch (IOException e2) {
                            bArr = new byte[0];
                            exists = fileInputStream;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    exists = fileInputStream;
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    exists = e3;
                                }
                            }
                            return bArr;
                        }
                    } catch (IOException e4) {
                        fileInputStream = null;
                    } catch (Throwable th) {
                        exists = 0;
                        th = th;
                        if (exists != 0) {
                            try {
                                exists.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return bArr;
    }
}
