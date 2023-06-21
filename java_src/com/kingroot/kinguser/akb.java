package com.kingroot.kinguser;

import android.os.Environment;
import com.kingroot.master.app.KUApplication;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public class akb {
    private static final cce<akb> sInstance = new cce<akb>() { // from class: com.kingroot.kinguser.akb.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Ah */
        public akb create() {
            return new akb();
        }
    };
    private String auZ;
    private String ava;
    private final bed avb;
    private bed avc;

    /* renamed from: Ad */
    public static akb m11325Ad() {
        return sInstance.get();
    }

    private akb() {
        this.avb = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.akb.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v11, types: [java.io.Closeable] */
            /* JADX WARN: Type inference failed for: r0v15 */
            /* JADX WARN: Type inference failed for: r0v18, types: [java.io.Closeable, java.io.FileInputStream] */
            /* JADX WARN: Type inference failed for: r0v7 */
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                FileOutputStream fileOutputStream;
                ?? r0;
                Closeable closeable;
                FileOutputStream fileOutputStream2 = null;
                super.run();
                if (!air.m11601yb()) {
                    return;
                }
                if (!akb.this.m11322Ag()) {
                    beg.m7461Zj().m7450c(akb.this.avc);
                    return;
                }
                File file = new File(akb.this.auZ);
                if (akb.this.m11321F(file) || !bgr.m7092iZ()) {
                    return;
                }
                File file2 = new File(akb.this.ava);
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        r0 = new FileInputStream(file2);
                        try {
                            byte[] bArr = new byte[128];
                            while (true) {
                                int read = r0.read(bArr);
                                if (read == -1) {
                                    fileOutputStream.flush();
                                    C3945za.m1340c(fileOutputStream);
                                    C3945za.m1340c((Closeable) r0);
                                    return;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                        } catch (FileNotFoundException e) {
                            fileOutputStream2 = fileOutputStream;
                            closeable = r0;
                            C3945za.m1340c(fileOutputStream2);
                            C3945za.m1340c(closeable);
                        } catch (IOException e2) {
                            C3945za.m1340c(fileOutputStream);
                            C3945za.m1340c((Closeable) r0);
                        } catch (Throwable th) {
                            fileOutputStream2 = r0;
                            th = th;
                            C3945za.m1340c(fileOutputStream);
                            C3945za.m1340c(fileOutputStream2);
                            throw th;
                        }
                    } catch (FileNotFoundException e3) {
                        closeable = null;
                        fileOutputStream2 = fileOutputStream;
                    } catch (IOException e4) {
                        r0 = 0;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (FileNotFoundException e5) {
                    closeable = null;
                } catch (IOException e6) {
                    r0 = 0;
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            }
        });
        this.avc = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.akb.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                FileOutputStream fileOutputStream;
                super.run();
                long currentTimeMillis = System.currentTimeMillis();
                FileOutputStream fileOutputStream2 = null;
                try {
                    fileOutputStream = new FileOutputStream(akb.this.m11323Af(), false);
                    try {
                        fileOutputStream.write(String.valueOf(currentTimeMillis).getBytes());
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        C3945za.m1340c(fileOutputStream);
                    } catch (FileNotFoundException e) {
                        C3945za.m1340c(fileOutputStream);
                    } catch (IOException e2) {
                        C3945za.m1340c(fileOutputStream);
                    } catch (Throwable th) {
                        fileOutputStream2 = fileOutputStream;
                        th = th;
                        C3945za.m1340c(fileOutputStream2);
                        throw th;
                    }
                } catch (FileNotFoundException e3) {
                    fileOutputStream = null;
                } catch (IOException e4) {
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
        this.auZ = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Kingroot/user/xda_config.dat";
        this.ava = KUApplication.m13453ge().getFilesDir() + File.separator + "xda_config.dat";
    }

    /* renamed from: Ae */
    public boolean m11324Ae() {
        if (air.m11601yb()) {
            return true;
        }
        return m11322Ag();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Af */
    public File m11323Af() {
        File file = new File(this.auZ);
        if ((file.getParentFile() == null || !file.getParentFile().exists()) && (file.getParentFile() == null || !file.getParentFile().mkdirs() || !file.getParentFile().exists())) {
            file = new File(this.ava);
            if ((file.getParentFile() == null || !file.getParentFile().exists()) && file.getParentFile() != null && file.getParentFile().mkdirs() && file.getParentFile().exists()) {
            }
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ag */
    public boolean m11322Ag() {
        return m11321F(new File(this.auZ)) || m11321F(new File(this.ava));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public boolean m11321F(File file) {
        return file != null && file.exists();
    }
}
