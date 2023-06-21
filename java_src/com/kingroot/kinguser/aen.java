package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class aen {
    public int afm;
    public byte[] afn;
    public int mVersion;

    public aen() {
    }

    public aen(int i, int i2, byte[] bArr) {
        this.mVersion = i;
        this.afm = i2;
        this.afn = bArr;
    }

    /* renamed from: uB */
    public String m12179uB() {
        return this.afn != null ? aab.m13021B(this.afn) : "";
    }

    /* renamed from: a */
    public static void m12181a(aen aenVar, OutputStream outputStream) {
        try {
            outputStream.write(aaa.m13022bY(aenVar.mVersion));
            outputStream.write(aaa.m13022bY(aenVar.afm));
            outputStream.write(aenVar.afn);
        } catch (IOException e) {
        }
    }

    /* renamed from: y */
    public static aen m12178y(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        aen aenVar = null;
        if (file != null && file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Exception e) {
                fileInputStream = null;
            } catch (Throwable th2) {
                fileInputStream = null;
                th = th2;
            }
            try {
                aenVar = m12180i(fileInputStream);
                fileInputStream.close();
                C3945za.m1340c(fileInputStream);
            } catch (Exception e2) {
                C3945za.m1340c(fileInputStream);
                return aenVar;
            } catch (Throwable th3) {
                th = th3;
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        }
        return aenVar;
    }

    /* renamed from: i */
    public static aen m12180i(InputStream inputStream) {
        aen aenVar = new aen();
        try {
            byte[] bArr = new byte[4];
            inputStream.read(bArr);
            aenVar.mVersion = aaa.m13023A(bArr);
            inputStream.read(bArr);
            aenVar.afm = aaa.m13023A(bArr);
            byte[] bArr2 = new byte[16];
            inputStream.read(bArr2);
            aenVar.afn = bArr2;
        } catch (IOException e) {
        }
        return aenVar;
    }
}
