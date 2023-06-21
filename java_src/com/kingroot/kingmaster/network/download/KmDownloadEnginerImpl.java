package com.kingroot.kingmaster.network.download;

import android.text.TextUtils;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.C3565ru;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3945za;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3958zl;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abi;
import com.kingroot.kinguser.adk;
import com.kingroot.kinguser.adx;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aii;
import com.kingroot.kinguser.ais;
import com.kingroot.kinguser.alq;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgr;
import com.kingroot.kinguser.cce;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class KmDownloadEnginerImpl extends adx {
    private static final Object adF = new Object();
    private static final Object adG = new Object();
    private static final cce<KmDownloadEnginerImpl> adK = new cce<KmDownloadEnginerImpl>() { // from class: com.kingroot.kingmaster.network.download.KmDownloadEnginerImpl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: tB */
        public KmDownloadEnginerImpl create() {
            return new KmDownloadEnginerImpl();
        }
    };
    private KuDownloadInfo adH;
    private int adI;
    private int adJ;
    private bed adL;
    private final KmLoadAppsListener adM;
    private bed adN;

    /* renamed from: tp */
    public static KmDownloadEnginerImpl m13081tp() {
        return adK.get();
    }

    private KmDownloadEnginerImpl() {
        this.adH = new KuDownloadInfo();
        this.adI = -1;
        this.adJ = -1;
        this.adL = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kingmaster.network.download.KmDownloadEnginerImpl.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
            }
        });
        this.adM = new KmLoadAppsListener();
        this.adN = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kingmaster.network.download.KmDownloadEnginerImpl.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                KmDownloadEnginerImpl.this.m13072ty();
            }
        });
        beg.m7461Zj().m7450c(this.adL);
    }

    /* renamed from: a */
    public int m13095a(String str, String str2, String str3, int i) {
        if (this.adH.adX != 0) {
            return -2;
        }
        return m12375a(this.mContext, str, str2, str3, i);
    }

    /* renamed from: b */
    public void m13094b(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        m12364d(iNetworkLoadTaskCallback);
    }

    /* renamed from: c */
    public void m13093c(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        m12362e(iNetworkLoadTaskCallback);
    }

    /* renamed from: tq */
    public NetworkLoadTaskInfo m13080tq() {
        return m12360tC();
    }

    /* renamed from: tr */
    public boolean m13079tr() {
        return m12359tD();
    }

    /* renamed from: ts */
    public void m13078ts() {
        m12358tE();
    }

    /* renamed from: tt */
    public void m13077tt() {
        m12357tF();
    }

    /* renamed from: tu */
    public void m13076tu() {
        m12356tG();
    }

    /* renamed from: tc */
    public boolean m13088tc() {
        return m12355tH();
    }

    /* renamed from: cC */
    public void m13092cC(int i) {
        m12366cF(i);
    }

    /* renamed from: te */
    public int m13086te() {
        return m12354tI();
    }

    /* renamed from: td */
    public int m13087td() {
        return m12353tJ();
    }

    /* renamed from: eF */
    public boolean m13091eF(String str) {
        return mo12361eG(str);
    }

    /* renamed from: tf */
    public KuDownloadInfo m13085tf() {
        return m13075tv();
    }

    @Override // com.kingroot.kinguser.adx
    /* renamed from: cD */
    public void mo12368cD(int i) {
        super.mo12368cD(i);
    }

    @Override // com.kingroot.kinguser.adx
    /* renamed from: tg */
    public int mo12352tg() {
        return super.mo12352tg();
    }

    @Override // com.kingroot.kinguser.adx
    /* renamed from: cE */
    public void mo12367cE(int i) {
        super.mo12367cE(i);
    }

    @Override // com.kingroot.kinguser.adx
    /* renamed from: th */
    public int mo12351th() {
        return super.mo12351th();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
        if (r0.equalsIgnoreCase(r9.adH.aea) == false) goto L29;
     */
    @Override // com.kingroot.kinguser.adx
    /* renamed from: eG */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo12361eG(String str) {
        try {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                if (ais.m11585ye().m11589ge(str)) {
                    if (m13074tw()) {
                        return true;
                    }
                    if (adk.m12539b(file.lastModified(), System.currentTimeMillis(), 259200000L)) {
                        return false;
                    }
                    if (this.adH != null && !TextUtils.isEmpty(this.adH.aea)) {
                        String m13090eH = m13090eH(file.getAbsolutePath());
                        if (!TextUtils.isEmpty(m13090eH)) {
                        }
                        return false;
                    }
                    return true;
                }
                return false;
            }
        } catch (Exception e) {
        }
        return false;
    }

    /* renamed from: tv */
    private KuDownloadInfo m13075tv() {
        if (TextUtils.isEmpty(this.adH.adY)) {
            m13071tz();
        }
        return this.adH;
    }

    /* renamed from: ti */
    public int m13084ti() {
        if (this.adI == -1) {
            this.adI = aii.m11642xL().m11641xM() ? 0 : 1;
        }
        return this.adI;
    }

    /* renamed from: tj */
    public String m13083tj() {
        return m13073tx();
    }

    /* renamed from: tw */
    public boolean m13074tw() {
        synchronized (adF) {
            if (this.adJ == -1) {
                this.adJ = 0;
                InputStream inputStream = null;
                try {
                    File file = new File(m13089tA() + File.separator + "kmPlugins.apk");
                    if (file.exists() && file.isFile()) {
                        this.adJ = 1;
                    } else {
                        inputStream = C3953zi.m1311pr().getAssets().open("km", 1);
                        if (inputStream != null && inputStream.available() > 0) {
                            this.adJ = 1;
                        }
                    }
                    if (inputStream != null) {
                        C3945za.m1340c(inputStream);
                    }
                } catch (Exception e) {
                    if (0 != 0) {
                        C3945za.m1340c((Closeable) null);
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        C3945za.m1340c((Closeable) null);
                    }
                    throw th;
                }
            }
        }
        return this.adJ == 1;
    }

    /* renamed from: tl */
    public String m13082tl() {
        if (!TextUtils.isEmpty(this.adH.adY) || !m13072ty()) {
        }
        return this.adH.adY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009d, code lost:
        if (com.kingroot.kinguser.C3563rs.m2370A(r0, "km") == false) goto L5;
     */
    /* renamed from: tx */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized String m13073tx() {
        File file;
        File file2;
        String absolutePath;
        if (m13074tw()) {
            try {
                file = new File(m13089tA());
                file2 = new File(file.getAbsolutePath() + File.separator + "kmPlugins.apk");
            } catch (Exception e) {
            }
            if (file2.exists() && file2.isFile()) {
                absolutePath = file2.getAbsolutePath();
                if (!C3563rs.m2370A(absolutePath, "km")) {
                    abi.m12831em(aas.f1260XV + absolutePath);
                }
            }
            C3563rs.m2365b("km", file, "kmPlugins.apk");
            File file3 = new File(file + File.separator + "kmPlugins.apk");
            if (file3.exists() && file3.isFile()) {
                absolutePath = file3.getAbsolutePath();
            }
        }
        absolutePath = "";
        return absolutePath;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class KmLoadAppsListener extends ILoadAppsListener.Stub {
        private final AtomicBoolean mRunning;

        private KmLoadAppsListener() {
            this.mRunning = new AtomicBoolean(false);
        }

        synchronized boolean isRunning() {
            return this.mRunning.get();
        }

        synchronized void prepareRunning() {
            this.mRunning.set(true);
        }

        synchronized void stop() {
            this.mRunning.set(false);
        }

        private AppBaseModel getFirstModel(List<AppBaseModel> list) {
            if (C3942yy.m1351d(list)) {
                return null;
            }
            AppBaseModel appBaseModel = list.get(0);
            if (appBaseModel == null) {
            }
            return appBaseModel;
        }

        @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
        public synchronized void onReceive(int i, List<AppBaseModel> list) {
            AppBaseModel firstModel;
            if (this.mRunning.get()) {
                if (i != 0 || (firstModel = getFirstModel(list)) == null) {
                    ady.m12308tK().mo1746bi(100328);
                    this.mRunning.set(false);
                    notifyAll();
                } else if ("com.kingroot.master".equals(firstModel.pkgName) || "com.kingstudio.purify".equals(firstModel.pkgName)) {
                    KmDownloadEnginerImpl.m13081tp().m13096a(firstModel);
                    this.mRunning.set(false);
                    notifyAll();
                } else {
                    ady.m12308tK().mo1746bi(100328);
                    this.mRunning.set(false);
                    notifyAll();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ty */
    public boolean m13072ty() {
        if (TextUtils.isEmpty(this.adH.adY)) {
            if (C3748vb.m1917S(this.mContext)) {
                synchronized (adG) {
                    if (TextUtils.isEmpty(this.adH.adY)) {
                        this.adM.prepareRunning();
                        alq.m10547GY().mo10433a(5010015, 1, 0, this.adM);
                        synchronized (this.adM) {
                            if (this.adM.isRunning()) {
                                try {
                                    this.adM.wait(BuglyBroadcastRecevier.UPLOADLIMITED);
                                } catch (InterruptedException e) {
                                }
                            }
                            this.adM.stop();
                        }
                        return TextUtils.isEmpty(this.adH.adY) ? false : true;
                    }
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m13096a(AppBaseModel appBaseModel) {
        this.adI = 0;
        this.adH.adX = appBaseModel.jumptype;
        this.adH.adW = appBaseModel.fileSize;
        this.adH.adY = appBaseModel.apkUrl;
        this.adH.adZ = appBaseModel.pkgName;
        this.adH.mAppName = appBaseModel.appName;
        this.adH.aea = appBaseModel.apkMd5;
        this.adH.mVersionName = appBaseModel.version;
        this.adH.ads = appBaseModel.versioncode;
        if (TextUtils.isEmpty(this.adH.adY)) {
            ady.m12308tK().mo1746bi(100328);
            return;
        }
        ady.m12308tK().mo1746bi(100327);
        if (this.adH.adX == 1) {
            ady.m12308tK().mo1746bi(100326);
        }
    }

    /* renamed from: tz */
    public void m13071tz() {
        beg.m7461Zj().m7450c(this.adN);
    }

    /* renamed from: eH */
    private String m13090eH(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return C3563rs.getFileMD5(new File(str));
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: tA */
    private String m13089tA() {
        if (bgr.m7092iZ()) {
            String str = C3565ru.m2320iY() + "/kinguserdown";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
                return str;
            }
            return str;
        }
        return C3958zl.m1298dx("download").getAbsolutePath();
    }
}
