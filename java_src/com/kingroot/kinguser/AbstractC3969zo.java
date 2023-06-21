package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.kingroot.kinguser.zo */
/* loaded from: classes.dex */
public abstract class AbstractC3969zo {
    /* renamed from: a */
    public static boolean m1271a(File file, File file2, boolean z) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    m1270f(fileInputStream2, fileOutputStream);
                    fileOutputStream.flush();
                    if (!z) {
                        C3945za.m1340c(fileInputStream2);
                        C3945za.m1340c(fileOutputStream);
                        return true;
                    }
                    boolean delete = file.delete();
                    C3945za.m1340c(fileInputStream2);
                    C3945za.m1340c(fileOutputStream);
                    return delete;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    C3945za.m1340c(fileInputStream);
                    C3945za.m1340c(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                fileInputStream = fileInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: f */
    public static void m1270f(InputStream inputStream, OutputStream outputStream) {
        GZIPOutputStream gZIPOutputStream;
        try {
            gZIPOutputStream = new GZIPOutputStream(outputStream);
        } catch (Throwable th) {
            th = th;
            gZIPOutputStream = null;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    gZIPOutputStream.write(bArr, 0, read);
                } else {
                    gZIPOutputStream.flush();
                    gZIPOutputStream.finish();
                    C3945za.m1340c(gZIPOutputStream);
                    return;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            C3945za.m1340c(gZIPOutputStream);
            throw th;
        }
    }
}
