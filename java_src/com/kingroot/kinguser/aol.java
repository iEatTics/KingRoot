package com.kingroot.kinguser;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.aol;
import com.kingroot.kinguser.aot;
import com.kingroot.kinguser.distribution.base.RecommendAppDetailInfo;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.distribution.examination.net.ReqAppCallback;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class aol extends aok<ExamRecommendAppInfo, RecommendAppDetailInfo> implements aor {
    private static final String TAG = aiq.arY + "_BaseAppDistCloudEngine";
    private final Map<String, ExamRecommendAppInfo> aGg = Collections.synchronizedMap(new HashMap());
    private final Object aGh = new Object();
    private String aGj = mo9752Ke();
    private String aGk = getFileName();
    private boolean aGl = false;
    private bed aGm = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aol.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            for (ExamRecommendAppInfo examRecommendAppInfo : aol.this.mo9843JY()) {
                if (examRecommendAppInfo != null) {
                    if (aks.m11143BP().m10727hj(examRecommendAppInfo.pkgName) < 1) {
                        aol.this.m9918a(examRecommendAppInfo);
                    }
                    apv.m9735LO().m9721e(examRecommendAppInfo);
                }
            }
        }
    });
    private aot aGi = aot.m9886Kw();

    /* renamed from: Ke */
    protected abstract String mo9752Ke();

    /* renamed from: Kf */
    protected abstract String mo9751Kf();

    protected abstract String getFileName();

    /* renamed from: a */
    public void m9917a(@NonNull final ReqAppCallback reqAppCallback) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aol.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<ExamRecommendAppInfo> mo9844JX = aol.this.mo9844JX();
                if (reqAppCallback != null) {
                    try {
                        reqAppCallback.onResult(mo9844JX);
                    } catch (RemoteException e) {
                    }
                }
            }
        }));
    }

    @Override // com.kingroot.kinguser.aor
    @WorkerThread
    @NonNull
    /* renamed from: JX */
    public List<ExamRecommendAppInfo> mo9844JX() {
        ArrayList arrayList;
        RecommendAppDetailInfo recommendAppDetailInfo;
        synchronized (this.aGh) {
            HashMap hashMap = new HashMap();
            List<ExamRecommendAppInfo> a = m9927a(ExamRecommendAppInfo.aGp, 0, 20, this.aGj);
            if (a != null) {
                HashMap hashMap2 = new HashMap();
                for (ExamRecommendAppInfo examRecommendAppInfo : a) {
                    hashMap2.put(examRecommendAppInfo.pkgName, Integer.valueOf(examRecommendAppInfo.partnerId));
                }
                Map<String, RecommendAppDetailInfo> a2 = m9926a(RecommendAppDetailInfo.aGp, hashMap2);
                for (ExamRecommendAppInfo examRecommendAppInfo2 : a) {
                    hashMap.put(examRecommendAppInfo2.pkgName, examRecommendAppInfo2);
                    if (a2 != null && !a2.isEmpty() && (recommendAppDetailInfo = a2.get(examRecommendAppInfo2.pkgName)) != null) {
                        examRecommendAppInfo2.picUrls = recommendAppDetailInfo.picUrls;
                        examRecommendAppInfo2.detailDescribe = recommendAppDetailInfo.describe;
                        examRecommendAppInfo2.bigIconUrl = recommendAppDetailInfo.logoUrl;
                        examRecommendAppInfo2.functionDesc = recommendAppDetailInfo.functionDesc;
                    }
                }
                Map<String, ExamRecommendAppInfo> m9924JZ = m9924JZ();
                ArrayList<ExamRecommendAppInfo> arrayList2 = new ArrayList(m9924JZ.values());
                for (ExamRecommendAppInfo examRecommendAppInfo3 : a) {
                    ExamRecommendAppInfo examRecommendAppInfo4 = m9924JZ.get(examRecommendAppInfo3.pkgName);
                    if (examRecommendAppInfo4 != null) {
                        examRecommendAppInfo3.m4103b(examRecommendAppInfo4);
                        arrayList2.remove(examRecommendAppInfo4);
                    }
                }
                for (ExamRecommendAppInfo examRecommendAppInfo5 : arrayList2) {
                    examRecommendAppInfo5.m4106Kl();
                }
                m9924JZ.clear();
                m9924JZ.putAll(hashMap);
                m9923Ka();
            }
            arrayList = new ArrayList(hashMap.values());
        }
        return arrayList;
    }

    /* renamed from: b */
    public void m9915b(@NonNull final ReqAppCallback reqAppCallback) {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aol.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<ExamRecommendAppInfo> mo9843JY = aol.this.mo9843JY();
                if (reqAppCallback != null) {
                    try {
                        reqAppCallback.onResult(mo9843JY);
                    } catch (RemoteException e) {
                    }
                }
            }
        }));
    }

    @Override // com.kingroot.kinguser.aor
    @WorkerThread
    @NonNull
    /* renamed from: JY */
    public synchronized List<ExamRecommendAppInfo> mo9843JY() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Map<String, ExamRecommendAppInfo> m9924JZ = m9924JZ();
        Collections.addAll(arrayList, m9924JZ.values().toArray(new ExamRecommendAppInfo[m9924JZ.size()]));
        return arrayList;
    }

    @WorkerThread
    @NonNull
    /* renamed from: JZ */
    protected synchronized Map<String, ExamRecommendAppInfo> m9924JZ() {
        if (C3942yy.m1349e(this.aGg) && !this.aGl) {
            this.aGg.putAll(m9922Kb());
            this.aGl = true;
        }
        return this.aGg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9918a(final ExamRecommendAppInfo examRecommendAppInfo) {
        if (!C3952zh.m1312pq().m1314du(examRecommendAppInfo.pkgName) && examRecommendAppInfo.ignoreCount < 2 && !apu.m9745b(examRecommendAppInfo)) {
            this.aGi.mo4092a(AppDownloadRequest.m4063a(examRecommendAppInfo), 0, (IAppDownloadListener) null);
            this.aGi.m4087a(new NetworkChangedRemoteListener.Stub() { // from class: com.kingroot.kinguser.distribution.base.AbsKAppDistCloudEngine$4
                @Override // com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener
                public void onTurnIntoMobileNetwork() {
                    aot aotVar;
                    if (examRecommendAppInfo != null) {
                        aotVar = aol.this.aGi;
                        aotVar.m4081hK(examRecommendAppInfo.pkgName);
                    }
                }
            });
        }
    }

    /* renamed from: Ka */
    protected void m9923Ka() {
        synchronized (this.aGg) {
            C3566rv.m2315cE(m9914hG(this.aGk)).mo2255b(this.aGg);
        }
    }

    /* renamed from: Kb */
    private synchronized HashMap<String, ExamRecommendAppInfo> m9922Kb() {
        HashMap<String, ExamRecommendAppInfo> hashMap;
        Object mo2254jp = C3566rv.m2315cE(m9914hG(this.aGk)).mo2254jp();
        hashMap = new HashMap<>();
        try {
            if (mo2254jp instanceof Map) {
                hashMap.putAll((Map) mo2254jp);
            }
        } catch (Throwable th) {
        }
        return hashMap;
    }

    /* renamed from: hG */
    private String m9914hG(String str) {
        String str2 = C3636tj.m2169ge().getFilesDir().getAbsolutePath() + File.separator + mo9751Kf();
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str2 + File.separator + str;
    }

    @Override // com.kingroot.kinguser.aor
    /* renamed from: Kc */
    public void mo9841Kc() {
        beg.m7461Zj().m7450c(this.aGm);
    }

    /* renamed from: Kd */
    protected synchronized void m9921Kd() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aol.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (aol.this.aGg != null) {
                    aol.this.m9923Ka();
                }
            }
        }));
    }

    @WorkerThread
    /* renamed from: hH */
    public void m9913hH(@NonNull String str) {
        ExamRecommendAppInfo examRecommendAppInfo = m9924JZ().get(str);
        if (examRecommendAppInfo != null) {
            examRecommendAppInfo.ignoreCount++;
            examRecommendAppInfo.lastIgnoreTime = System.currentTimeMillis();
            m9921Kd();
        }
    }

    /* renamed from: hI */
    public int m9912hI(@NonNull String str) {
        ExamRecommendAppInfo examRecommendAppInfo = m9924JZ().get(str);
        if (examRecommendAppInfo != null) {
            return examRecommendAppInfo.ignoreCount;
        }
        return 0;
    }
}
