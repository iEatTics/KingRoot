package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.net.clcmd.CloudGuideEntity;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class avc implements ave {
    private static final cce<avc> sInstance = new cce<avc>() { // from class: com.kingroot.kinguser.avc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Rp */
        public avc create() {
            return new avc();
        }
    };
    private List<CloudGuideEntity> aTm;
    private boolean azs;

    @InterfaceC3726ut
    /* renamed from: Ri */
    public static avc m8867Ri() {
        return sInstance.get();
    }

    private avc() {
        this.azs = false;
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.avc.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                synchronized (avc.this) {
                    avc.this.m8865Rm();
                }
            }
        }));
    }

    /* renamed from: c */
    public boolean m8859c(CloudGuideEntity cloudGuideEntity) {
        boolean z = true;
        CloudGuideEntity cloudGuideEntity2 = null;
        for (CloudGuideEntity cloudGuideEntity3 : m8866Rj()) {
            if (cloudGuideEntity3.taskID != cloudGuideEntity.taskID || cloudGuideEntity3.seqNo != cloudGuideEntity.seqNo) {
                cloudGuideEntity3 = cloudGuideEntity2;
            }
            cloudGuideEntity2 = cloudGuideEntity3;
        }
        if (cloudGuideEntity2 != null) {
            return (m8857d(cloudGuideEntity2) && apv.m9735LO().m9720ia(cloudGuideEntity2.picDownloadUrl) && (cloudGuideEntity2.showTime < cloudGuideEntity2.maxShowTime) && adk.m12539b(cloudGuideEntity2.lastShowTime, System.currentTimeMillis(), cloudGuideEntity2.timeInterval * 3600000)) ? false : false;
        }
        return false;
    }

    /* renamed from: d */
    private static boolean m8857d(CloudGuideEntity cloudGuideEntity) {
        Locale locale = C3953zi.m1311pr().getConfiguration().locale;
        String language = locale.getLanguage();
        if (language.equals("zh")) {
            String country = locale.getCountry();
            if (country.equals("CN") && cloudGuideEntity.language == 1) {
                return true;
            }
            if ((country.equals("TW") || country.equals("HK")) && cloudGuideEntity.language == 2) {
                return true;
            }
        } else if (language.equals("es") && cloudGuideEntity.language == 3) {
            return true;
        } else {
            if (language.equals("pt") && cloudGuideEntity.language == 4) {
                return true;
            }
            if (language.equals("in") && cloudGuideEntity.language == 5) {
                return true;
            }
            if (language.equals("hi") && cloudGuideEntity.language == 6) {
                return true;
            }
            if (language.equals("ru") && cloudGuideEntity.language == 7) {
                return true;
            }
            if (language.equals("en") && cloudGuideEntity.language == 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Rj */
    public List<CloudGuideEntity> m8866Rj() {
        List<CloudGuideEntity> list;
        synchronized (this) {
            m8869HS();
            list = this.aTm;
        }
        return list;
    }

    @Override // com.kingroot.kinguser.ave
    @NonNull
    /* renamed from: Rk */
    public List<CloudGuideEntity> mo8851Rk() {
        ArrayList arrayList = new ArrayList();
        for (CloudGuideEntity cloudGuideEntity : m8866Rj()) {
            if (m8859c(cloudGuideEntity)) {
                arrayList.add(cloudGuideEntity);
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.ave
    /* renamed from: Rl */
    public void mo8850Rl() {
        if (C3748vb.m1917S(KApplication.m13453ge())) {
            for (CloudGuideEntity cloudGuideEntity : m8866Rj()) {
                m8856e(cloudGuideEntity);
            }
        }
    }

    /* renamed from: e */
    private void m8856e(CloudGuideEntity cloudGuideEntity) {
        if (cloudGuideEntity != null && cloudGuideEntity.downloadTime < 3 && !apv.m9735LO().m9720ia(cloudGuideEntity.picDownloadUrl) && adk.m12539b(cloudGuideEntity.lastDownloadTime, System.currentTimeMillis(), 14400000L)) {
            apv.m9735LO().m9730a(cloudGuideEntity.picDownloadUrl, (apv.InterfaceC1441b) null);
            cloudGuideEntity.downloadTime++;
            cloudGuideEntity.lastDownloadTime = System.currentTimeMillis();
            m8868HT();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Rm */
    public void m8865Rm() {
        if (!this.azs) {
            File m8864Rn = m8864Rn();
            if (m8864Rn.exists()) {
                Object m2244u = C3604sq.m2244u(m8864Rn);
                if (m2244u instanceof List) {
                    this.aTm = (List) m2244u;
                }
            }
            if (this.aTm == null) {
                this.aTm = new CopyOnWriteArrayList();
            }
            synchronized (this) {
                this.azs = true;
                notifyAll();
            }
        }
    }

    /* renamed from: HS */
    private void m8869HS() {
        while (!this.azs) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.ave
    /* renamed from: f */
    public void mo8849f(CloudGuideEntity cloudGuideEntity) {
        if (!m8855h(cloudGuideEntity)) {
            m8866Rj().add(cloudGuideEntity);
            m8856e(cloudGuideEntity);
            m8868HT();
        }
    }

    @Override // com.kingroot.kinguser.ave
    /* renamed from: g */
    public void mo8848g(CloudGuideEntity cloudGuideEntity) {
        synchronized (this) {
            for (CloudGuideEntity cloudGuideEntity2 : m8866Rj()) {
                if (cloudGuideEntity2.taskID == cloudGuideEntity.taskID && cloudGuideEntity2.seqNo == cloudGuideEntity.seqNo) {
                    cloudGuideEntity2.showTime++;
                    cloudGuideEntity2.lastShowTime = System.currentTimeMillis();
                }
            }
        }
        m8868HT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Rn */
    public File m8864Rn() {
        return new File(KApplication.m13453ge().getFilesDir(), "cloud_guide.data");
    }

    /* renamed from: HT */
    private void m8868HT() {
        C3849wp.m1526e(new Runnable() { // from class: com.kingroot.kinguser.avc.3
            @Override // java.lang.Runnable
            public void run() {
                avc.this.m8863Ro();
                C3604sq.m2250a(avc.this.m8866Rj(), avc.this.m8864Rn());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ro */
    public void m8863Ro() {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (CloudGuideEntity cloudGuideEntity : m8866Rj()) {
                if (m8855h(cloudGuideEntity)) {
                    arrayList.add(cloudGuideEntity);
                }
            }
            m8866Rj().removeAll(arrayList);
        }
    }

    /* renamed from: h */
    private boolean m8855h(CloudGuideEntity cloudGuideEntity) {
        return cloudGuideEntity == null || cloudGuideEntity.maxShowTime <= 0 || TextUtils.isEmpty(cloudGuideEntity.picDownloadUrl);
    }
}
