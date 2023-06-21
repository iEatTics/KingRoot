package com.kingroot.kinguser;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Process;
import android.support.p004v4.view.PointerIconCompat;
import android.util.Log;
import android.util.SparseArray;
import cloudsdk.CloudSdk;
import cloudsdk.IActionResult;
import cloudsdk.ICloudSdk;
import cloudsdk.ILoadResult;
import cloudsdk.IModule;
import cloudsdk.SdkConfig;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.kinguser.blt;
import com.kingx.cloudsdk.C4016aq;
import com.kingx.cloudsdk.C4020ba;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
/* loaded from: classes.dex */
public final class bmg implements ICloudSdk {

    /* renamed from: vC */
    public static int f1752vC = 0;
    private Context bBy;
    private SdkConfig bBz;
    private final SparseArray<IModule> bBx = new SparseArray<>();
    private boolean bBA = false;
    private final Object bBB = new Object();

    /* renamed from: a */
    static /* synthetic */ void m6407a(bmg bmgVar, int i) {
        InputStream inputStream;
        Throwable th;
        try {
            try {
                InputStream open = bmgVar.bBy.getAssets().open(RootConst.MODULE_ROOT + ".jar");
                try {
                    byte[] bArr = new byte[4];
                    open.read(new byte[4]);
                    if (-1 != open.read(bArr)) {
                        f1752vC = (bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << 16) | ((bArr[0] & 255) << 24);
                    }
                    bmu.m6336a(open);
                } catch (Throwable th2) {
                    inputStream = open;
                    th = th2;
                    bmu.m6336a(inputStream);
                    throw th;
                }
            } catch (IOException e) {
                bmu.m6336a((Closeable) null);
            }
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
        }
    }

    @Override // cloudsdk.ICloudSdk
    public final IActionResult initialize(final Context context, final SdkConfig sdkConfig) {
        new bmq() { // from class: com.kingroot.kinguser.bmg.1
            @Override // com.kingroot.kinguser.bmq, java.lang.Runnable
            public final void run() {
                synchronized (bmg.this.bBB) {
                    bmg.this.bBy = context.getApplicationContext();
                    bmg.this.bBz = sdkConfig;
                    bml.m6384c(sdkConfig.isLogSwitchOn(), bmu.m6315jP(Process.myPid()));
                    bmg.m6407a(bmg.this, (int) RootConst.MODULE_ROOT);
                    bmg.this.bBy.registerReceiver(new C4020ba(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    blm.m6484c(context);
                    blo.m6473b(sdkConfig.isUseTestServer());
                    bmu.m6350F(bmg.this.bBy, bmu.m6351D(bmg.this.bBy));
                    bmg.this.bBA = true;
                    bmg.this.bBB.notifyAll();
                }
            }
        }.m6355co();
        return new bmc(0, 0, "Initialze OK", null);
    }

    @Override // cloudsdk.ICloudSdk
    public final ILoadResult loadModule(int i) {
        return loadModule(i, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0197, code lost:
        if (r6.getResultCode() != 0) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x011b A[Catch: all -> 0x01c9, TryCatch #1 {Throwable -> 0x01cc, blocks: (B:8:0x0013, B:9:0x001a, B:10:0x001b, B:12:0x0025, B:14:0x00a1, B:16:0x00d9, B:18:0x00e1, B:20:0x00f0, B:22:0x0109, B:24:0x0111, B:25:0x0115, B:27:0x011b, B:28:0x012e, B:55:0x01f6, B:57:0x0203, B:58:0x021e, B:60:0x0222, B:39:0x0165, B:41:0x018f, B:43:0x0199, B:45:0x01b6, B:47:0x01c0, B:61:0x022f, B:62:0x0238), top: B:64:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01f4  */
    @Override // cloudsdk.ICloudSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ILoadResult loadModule(int i, boolean z) {
        synchronized (this.bBB) {
            if (!this.bBA) {
                try {
                    this.bBB.wait();
                } catch (InterruptedException e) {
                    bme bmeVar = new bme();
                    bmeVar.bBq = i;
                    bmeVar.versionCode = 0;
                    bmeVar.bAL = 0L;
                    bmu.m6342a(bmeVar, 1, true);
                    bmh bmhVar = new bmh(1, PointerIconCompat.TYPE_COPY, e.getMessage(), null);
                    bmu.m6341a(bmeVar, false, PointerIconCompat.TYPE_COPY, 1, false, bmhVar.getErrorMessage());
                    return bmhVar;
                }
            }
        }
        try {
            bmu.m6327bI(this.bBy);
            synchronized (this.bBx) {
                IModule iModule = this.bBx.get(i);
                if (iModule == null) {
                    bme bmeVar2 = new bme();
                    bmeVar2.bBu = this.bBz.getWorkingDir() + "/modules/app" + File.separator + i + ".jar";
                    bmeVar2.f1749vv = this.bBz.getWorkingDir() + "/modules/dalvik-cache";
                    bmeVar2.f1750vw = this.bBz.getWorkingDir() + "/modules/data" + File.separator + i;
                    bmeVar2.bBq = i;
                    ILoadResult m6403b = m6403b(bmeVar2);
                    if (m6403b.getResultCode() == 0) {
                        String str = CloudSdk.getInstance().getWorkingDir() + "/modules/appconf" + File.separator + bmeVar2.bBq + ".json";
                        File file = new File(str);
                        if (file.exists() && file.length() > 0) {
                            blz.afA();
                            C4016aq m6429b = blz.m6429b(str, this.bBy);
                            if (m6429b.versionCode <= bmeVar2.versionCode) {
                                String lowerCase = bmu.m6325c(new File(bmeVar2.bBu)).toLowerCase(Locale.US);
                                if (lowerCase.equals(m6429b.f4144xu) && !lowerCase.equals("")) {
                                    bmeVar2.bAL = m6429b.bAL;
                                    if (m6403b.getResultCode() == 0) {
                                        bmu.m6342a(bmeVar2, 1, true);
                                        bmu.m6341a(bmeVar2, false, m6403b.getErrorCode(), 1, false, m6403b.getErrorMessage());
                                        return m6403b;
                                    }
                                    bmu.m6342a(bmeVar2, 1, true);
                                    ILoadResult m6400d = m6400d(bmeVar2);
                                    if (m6400d.getResultCode() == 0) {
                                        bmu.m6341a(bmeVar2, true, 0, 1, false, "");
                                        this.bBx.put(new Integer(i).intValue(), m6400d.getModule());
                                    } else {
                                        bmu.m6341a(bmeVar2, false, PointerIconCompat.TYPE_ALIAS, 1, false, m6400d.getErrorMessage());
                                    }
                                    return m6400d;
                                }
                            }
                        }
                    }
                    bmu.m6306o(this.bBz.getWorkingDir() + "/modules/app");
                    m6403b = blz.afA().m6434a(bmeVar2, z);
                    if (m6403b.getResultCode() == 0) {
                        m6403b = m6403b(bmeVar2);
                    }
                    if (bmu.m6349G(this.bBy, bmeVar2.bBq + ".jar")) {
                        m6403b = m6401c(bmeVar2);
                        if (m6403b.getResultCode() == 0) {
                            m6403b = m6403b(bmeVar2);
                            m6403b.getResultCode();
                        }
                    }
                    if (m6403b.getResultCode() == 0) {
                    }
                } else {
                    return new bmh(0, 0, "", iModule);
                }
            }
        } catch (Throwable th) {
            bme bmeVar3 = new bme();
            bmeVar3.bBq = i;
            bmeVar3.versionCode = 0;
            bmeVar3.bAL = 0L;
            bmu.m6342a(bmeVar3, 1, true);
            bmh bmhVar2 = new bmh(1, PointerIconCompat.TYPE_VERTICAL_TEXT, th.getMessage(), null);
            bmu.m6341a(bmeVar3, false, PointerIconCompat.TYPE_VERTICAL_TEXT, 1, false, bmhVar2.getErrorMessage());
            return bmhVar2;
        }
    }

    /* renamed from: b */
    private static ILoadResult m6403b(bme bmeVar) {
        File file = new File(bmeVar.bBu);
        if (file.exists() && file.length() > 0) {
            if (bmu.m6319f(bmeVar) < 0) {
                return new bmh(1, 1, "", null);
            }
            try {
                bmeVar.f1751xu = bmu.m6347J(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
            return new bmh(0, 0, "", null);
        }
        return new bmh(1, 1, "", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00bf A[Catch: Exception -> 0x0146, TRY_LEAVE, TryCatch #5 {Exception -> 0x0146, blocks: (B:11:0x0050, B:13:0x00ac, B:15:0x00b6, B:17:0x00bf, B:39:0x013a), top: B:58:0x0050, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013a A[Catch: Exception -> 0x0146, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x0146, blocks: (B:11:0x0050, B:13:0x00ac, B:15:0x00b6, B:17:0x00bf, B:39:0x013a), top: B:58:0x0050, outer: #3 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ILoadResult m6401c(bme bmeVar) {
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        byte[] m6451mg;
        File file;
        boolean z;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream3;
        FileInputStream fileInputStream2;
        String str = bmeVar.bBq + ".jar";
        File file2 = new File(bmeVar.bBu);
        try {
            File file3 = new File("/data/local/tmp/8101.jar");
            if (bml.afK() && file3.exists()) {
                try {
                    fileInputStream2 = new FileInputStream(file3);
                    try {
                        fileOutputStream3 = new FileOutputStream(file2);
                    } catch (IOException e) {
                        fileOutputStream3 = null;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        fileOutputStream2 = null;
                    }
                } catch (IOException e2) {
                    fileOutputStream3 = null;
                    fileInputStream2 = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = null;
                    fileInputStream = null;
                }
                try {
                    bmu.m6318g(fileInputStream2, fileOutputStream3);
                    fileOutputStream3.getChannel().force(true);
                    fileOutputStream3.flush();
                    bmu.m6336a(fileInputStream2);
                    bmu.m6336a(fileOutputStream3);
                } catch (IOException e3) {
                    bmu.m6336a(fileInputStream2);
                    bmu.m6336a(fileOutputStream3);
                    Context context = this.bBy;
                    String str2 = bmeVar.bBu;
                    byte[] bArr = new byte[m6451mg.length - 20];
                    System.arraycopy(blt.C2506a.m6451mg(str2), 20, bArr, 0, m6451mg.length - 20);
                    byte[] m6346S = bmu.m6346S(bArr);
                    String str3 = str2 + ".encrypt";
                    m6399m(this.bBz.getWorkingDir() + "/modules/app");
                    bmu.m6329b(m6346S, str3);
                    File file4 = new File(str2);
                    file = new File(str3);
                    if (file.exists()) {
                    }
                    z = false;
                    if (!z) {
                    }
                } catch (Throwable th3) {
                    fileInputStream = fileInputStream2;
                    fileOutputStream2 = fileOutputStream3;
                    th = th3;
                    bmu.m6336a(fileInputStream);
                    bmu.m6336a(fileOutputStream2);
                    throw th;
                }
            } else {
                m6399m(this.bBz.getWorkingDir() + "/modules/app");
                try {
                    inputStream = this.bBy.getAssets().open(str);
                    try {
                        fileOutputStream = new FileOutputStream(file2);
                    } catch (Throwable th4) {
                        th = th4;
                        fileOutputStream = null;
                    }
                    try {
                        bmu.m6318g(inputStream, fileOutputStream);
                        fileOutputStream.getChannel().force(true);
                        fileOutputStream.flush();
                        bmu.m6336a(inputStream);
                        bmu.m6336a(fileOutputStream);
                    } catch (Throwable th5) {
                        th = th5;
                        bmu.m6336a(inputStream);
                        bmu.m6336a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    fileOutputStream = null;
                    inputStream = null;
                }
            }
            try {
                Context context2 = this.bBy;
                String str22 = bmeVar.bBu;
                byte[] bArr2 = new byte[m6451mg.length - 20];
                System.arraycopy(blt.C2506a.m6451mg(str22), 20, bArr2, 0, m6451mg.length - 20);
                byte[] m6346S2 = bmu.m6346S(bArr2);
                String str32 = str22 + ".encrypt";
                m6399m(this.bBz.getWorkingDir() + "/modules/app");
                bmu.m6329b(m6346S2, str32);
                File file42 = new File(str22);
                file = new File(str32);
                if (file.exists() || file.length() <= 0) {
                    z = false;
                } else {
                    file42.delete();
                    file.renameTo(file42);
                    z = true;
                }
                return !z ? new bmh(0, 0, "", null) : new bmh(1, PointerIconCompat.TYPE_ALL_SCROLL, "(en/de)file not exist!", null);
            } catch (Exception e4) {
                Log.e("", "decrypt buildin plugin fail. e = " + e4);
                return new bmh(1, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, e4.getMessage(), null);
            }
        } catch (IOException e5) {
            return new bmh(1, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, e5.getMessage(), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m6399m(String str) {
        File file;
        blv blvVar;
        blv exists = new File(str).exists();
        if (exists) {
            try {
                try {
                    blvVar = new blv("sh");
                    try {
                        blvVar.m6441mh("chmod 0700 " + file.getAbsolutePath());
                        blvVar.shutdown();
                        exists = blvVar;
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        exists = blvVar;
                        if (blvVar != null) {
                            blvVar.shutdown();
                            exists = blvVar;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (exists != 0) {
                        exists.shutdown();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                blvVar = null;
            } catch (Throwable th2) {
                th = th2;
                exists = 0;
                if (exists != 0) {
                }
                throw th;
            }
        }
    }

    /* renamed from: d */
    private ILoadResult m6400d(bme bmeVar) {
        bmu.m6306o(bmeVar.f1749vv);
        bmu.m6306o(bmeVar.f1750vw);
        try {
            return new bmh(0, 0, "", new bmd(this.bBy, bmeVar));
        } catch (Exception e) {
            return new bmh(1, PointerIconCompat.TYPE_VERTICAL_TEXT, e.getMessage(), null);
        }
    }

    @Override // cloudsdk.ICloudSdk
    public final boolean destoryModule(int i) {
        IModule iModule;
        synchronized (this.bBx) {
            iModule = this.bBx.get(i);
            if (iModule != null) {
                this.bBx.remove(i);
            }
        }
        if (iModule != null) {
            bme moduleInfo = iModule.getModuleInfo();
            iModule.destory();
            bmu.m6311mm(moduleInfo.f1750vw);
            return false;
        }
        return false;
    }

    @Override // cloudsdk.ICloudSdk
    public final boolean destoryAllModules() {
        IModule[] iModuleArr;
        synchronized (this.bBx) {
            iModuleArr = new IModule[this.bBx.size()];
            for (int i = 0; i < iModuleArr.length; i++) {
                iModuleArr[i] = this.bBx.valueAt(i);
            }
            this.bBx.clear();
        }
        for (IModule iModule : iModuleArr) {
            bme moduleInfo = iModule.getModuleInfo();
            iModule.destory();
            bmu.m6311mm(moduleInfo.f1750vw);
        }
        return false;
    }

    @Override // cloudsdk.ICloudSdk
    public final Context getContext() {
        return this.bBy;
    }

    @Override // cloudsdk.ICloudSdk
    public final String getWorkingDir() {
        return this.bBz.getWorkingDir();
    }

    @Override // cloudsdk.ICloudSdk
    public final SdkConfig getConfig() {
        return this.bBz;
    }
}
