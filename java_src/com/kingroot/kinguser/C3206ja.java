package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.kingroot.kinguser.ja */
/* loaded from: classes.dex */
public class C3206ja {
    public int mVersion;

    /* renamed from: sP */
    public int f2880sP;

    /* renamed from: sQ */
    public byte[] f2881sQ;

    /* renamed from: a */
    public static C3206ja m3444a(Context context, File file) {
        FileInputStream fileInputStream;
        Throwable th;
        C3206ja c3206ja = null;
        if (file != null && file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    c3206ja = m3443c(fileInputStream);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Exception e2) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    return c3206ja;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                fileInputStream = null;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
            }
        }
        return c3206ja;
    }

    /* renamed from: c */
    public static C3206ja m3443c(InputStream inputStream) {
        C3206ja c3206ja = new C3206ja();
        try {
            byte[] bArr = new byte[4];
            inputStream.read(bArr);
            c3206ja.mVersion = C3204iz.m3445j(bArr);
            inputStream.read(bArr);
            c3206ja.f2880sP = C3204iz.m3445j(bArr);
            byte[] bArr2 = new byte[16];
            inputStream.read(bArr2);
            c3206ja.f2881sQ = bArr2;
        } catch (IOException e) {
        }
        return c3206ja;
    }
}
