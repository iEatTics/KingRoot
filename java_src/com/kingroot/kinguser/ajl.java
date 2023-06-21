package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.C3959zm;
import com.kingroot.kinguser.aae;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* loaded from: classes.dex */
public class ajl {
    /* renamed from: gn */
    private static String m11465gn(String str) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream2;
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        String str2 = KUApplication.m13453ge().getFilesDir().getAbsolutePath() + File.separator + "tmp_" + file.getName();
        File file2 = new File(str2);
        if (file2.exists() && !file2.delete()) {
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition(true)) {
                m12845qK.m12846el("rm -r " + file2.getAbsolutePath());
            }
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[4];
                    if (fileInputStream.read(bArr) != 4) {
                        C3945za.m1340c(fileInputStream);
                        C3945za.m1340c(fileOutputStream);
                        return null;
                    }
                    int m13023A = aaa.m13023A(bArr);
                    byte[] bArr2 = new byte[m13023A];
                    if (fileInputStream.read(bArr2) != m13023A) {
                        C3945za.m1340c(fileInputStream);
                        C3945za.m1340c(fileOutputStream);
                        return null;
                    }
                    byte[] mo12988D = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr2);
                    if (mo12988D == null) {
                        C3945za.m1340c(fileInputStream);
                        C3945za.m1340c(fileOutputStream);
                        return null;
                    }
                    fileOutputStream.write(mo12988D);
                    byte[] bArr3 = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr3);
                        if (read <= 0) {
                            abi.m12831em("chmod 500 " + file2.getAbsolutePath());
                            C3945za.m1340c(fileInputStream);
                            C3945za.m1340c(fileOutputStream);
                            return str2;
                        }
                        fileOutputStream.write(bArr3, 0, read);
                    }
                } catch (Exception e) {
                    fileOutputStream2 = fileOutputStream;
                    fileInputStream2 = fileInputStream;
                    C3945za.m1340c(fileInputStream2);
                    C3945za.m1340c(fileOutputStream2);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    C3945za.m1340c(fileInputStream);
                    C3945za.m1340c(fileOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                fileOutputStream2 = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
            }
        } catch (Exception e3) {
            fileOutputStream2 = null;
            fileInputStream2 = null;
        } catch (Throwable th4) {
            fileOutputStream = null;
            fileInputStream = null;
            th = th4;
        }
    }

    /* renamed from: gs */
    public static String m11464gs(String str) {
        String str2 = C3958zl.m1295pw().getAbsolutePath() + File.separator + str;
        C3959zm.m1293a(new C3959zm.C3962a(str2, (int) R.raw.intellectron, 1));
        return m11465gn(str2);
    }

    /* renamed from: gt */
    public static synchronized boolean m11463gt(String str) {
        boolean success;
        synchronized (ajl.class) {
            String m11464gs = m11464gs("intellectron");
            if (TextUtils.isEmpty(m11464gs)) {
                success = false;
            } else {
                success = abc.m12845qK().m12846el(!TextUtils.isEmpty(str) ? m11464gs + " " + str : m11464gs).success();
                new File(m11464gs).delete();
            }
        }
        return success;
    }
}
