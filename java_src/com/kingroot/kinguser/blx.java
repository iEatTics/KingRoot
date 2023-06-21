package com.kingroot.kinguser;

import android.content.Context;
import cloudsdk.CloudSdk;
import cloudsdk.KError;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class blx {
    private String bAE;
    private bly bAF;
    private Context mContext;

    public blx(bly blyVar, Context context) {
        this.bAF = blyVar;
        this.mContext = context;
        this.bAE = blyVar.bAE;
        File file = new File(CloudSdk.getInstance().getWorkingDir() + "/modules/app");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(this.bAE);
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
        } catch (IOException e) {
        }
    }

    public final boolean afy() {
        bmi m6398E;
        FileOutputStream fileOutputStream;
        bmi bmiVar = null;
        File file = new File(this.bAE);
        try {
            m6398E = bmi.m6398E(this.mContext, this.bAF.bAG);
        } catch (Throwable th) {
            th = th;
        }
        try {
            m6398E.setRequestMethod("GET");
            m6398E.m6393cS();
            InputStream inputStream = m6398E.getInputStream();
            byte[] bArr = new byte[1024];
            try {
                fileOutputStream = new FileOutputStream(file);
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                        if (this.bAF.bAH > 0) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bmu.m6336a(fileOutputStream);
                        bmu.m6336a(inputStream);
                        throw th;
                    }
                }
                fileOutputStream.getChannel().force(true);
                fileOutputStream.flush();
                bmu.m6336a(fileOutputStream);
                bmu.m6336a(inputStream);
                if (m6398E != null) {
                    m6398E.close();
                }
                return true;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bmiVar = m6398E;
            if (bmiVar != null) {
                bmiVar.close();
            }
            throw th;
        }
    }

    /* renamed from: mi */
    public final boolean m6438mi(String str) {
        File file = new File(str);
        if (!file.exists()) {
            KError.set(1001, "errorCode = 1003校验失败，插件不存在");
            return false;
        } else if (file.length() == this.bAF.bAH) {
            if (bmu.m6325c(file).equals(this.bAF.f1737an)) {
                File file2 = new File(str.substring(0, str.lastIndexOf(".")));
                if (file2.exists()) {
                    file2.delete();
                }
                file.renameTo(file2);
                return true;
            }
            file.delete();
            KError.set(1001, "errorCode = 1001校验失败，插件MD5与生效单不一致");
            return false;
        } else {
            file.delete();
            KError.set(1001, "errorCode = 1002校验失败，插件大小与生效单不一致");
            return false;
        }
    }
}
