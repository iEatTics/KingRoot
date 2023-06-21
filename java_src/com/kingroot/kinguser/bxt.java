package com.kingroot.kinguser;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class bxt {
    /* renamed from: c */
    public static void m5222c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: d */
    public static long m5221d(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }
}
