package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.download.AppDownloadTaskInfo;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.kingmaster.network.updata.ICheckIPCListener;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aeh;
import com.kingroot.kinguser.aei;
import com.kingroot.kinguser.aek;
import com.kingroot.kinguser.aiv;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bed;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes.dex */
public class aek implements aee {
    private static final ReadWriteLock aeT = new ReentrantReadWriteLock();
    private static final Object aeU = new Object();
    private static final cce<aek> sInstance = new cce<aek>() { // from class: com.kingroot.kinguser.aek.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: ut */
        public aek create() {
            return new aek();
        }
    };

    /* renamed from: Ky */
    private C3759vh<C3753ve> f1402Ky;
    private final RemoteCallbackList<INetworkLoadTaskCallback> adQ;
    private volatile int adS;
    NetworkLoadTaskAdapter adV;
    private volatile CheckResult aeV;
    private volatile boolean aeW;
    ICheckIPCListener aeX;
    private bed aeY;
    private bed aeZ;
    private C3753ve afa;
    private Context mContext;

    private aek() {
        this.adS = 0;
        this.aeW = false;
        this.aeX = new ICheckIPCListener.Stub() { // from class: com.kingroot.kingmaster.network.updata.impl.KuUpdateEngineViaConch$2
            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckStarted() {
            }

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckEvent(int i) {
            }

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckFinished(CheckResult checkResult) {
                aek.this.m12208k(checkResult);
            }
        };
        this.aeY = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aek.2
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                aek.this.m12215c(((Boolean) interfaceC2117a.mo7445nF().get(0)).booleanValue(), (ICheckIPCListener) interfaceC2117a.mo7445nF().get(1));
            }
        });
        this.aeZ = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aek.4
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                if (interfaceC2117a != null && !C3942yy.m1351d(interfaceC2117a.mo7445nF())) {
                    long longValue = ((Long) interfaceC2117a.mo7445nF().get(1)).longValue();
                    aek.this.m12222a(true, (C3683u) interfaceC2117a.mo7445nF().get(0), longValue, aek.this.aeX);
                }
            }
        });
        this.adV = new NetworkLoadTaskAdapter() { // from class: com.kingroot.kingmaster.network.updata.impl.KuUpdateEngineViaConch$6
            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onWaiting(NetworkLoadTaskInfo networkLoadTaskInfo) {
                RemoteCallbackList remoteCallbackList;
                RemoteCallbackList remoteCallbackList2;
                RemoteCallbackList remoteCallbackList3;
                RemoteCallbackList remoteCallbackList4;
                remoteCallbackList = aek.this.adQ;
                synchronized (remoteCallbackList) {
                    remoteCallbackList2 = aek.this.adQ;
                    int beginBroadcast = remoteCallbackList2.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i = beginBroadcast - 1;
                        try {
                            remoteCallbackList4 = aek.this.adQ;
                            ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i)).onWaiting(networkLoadTaskInfo);
                            beginBroadcast = i;
                        } catch (RemoteException e) {
                            beginBroadcast = i;
                        }
                    }
                    remoteCallbackList3 = aek.this.adQ;
                    remoteCallbackList3.finishBroadcast();
                }
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onPaused(NetworkLoadTaskInfo networkLoadTaskInfo) {
                RemoteCallbackList remoteCallbackList;
                RemoteCallbackList remoteCallbackList2;
                RemoteCallbackList remoteCallbackList3;
                RemoteCallbackList remoteCallbackList4;
                super.onPaused(networkLoadTaskInfo);
                remoteCallbackList = aek.this.adQ;
                synchronized (remoteCallbackList) {
                    remoteCallbackList2 = aek.this.adQ;
                    int beginBroadcast = remoteCallbackList2.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i = beginBroadcast - 1;
                        try {
                            remoteCallbackList4 = aek.this.adQ;
                            ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i)).onPaused(networkLoadTaskInfo);
                            beginBroadcast = i;
                        } catch (RemoteException e) {
                            beginBroadcast = i;
                        }
                    }
                    remoteCallbackList3 = aek.this.adQ;
                    remoteCallbackList3.finishBroadcast();
                }
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
                RemoteCallbackList remoteCallbackList;
                RemoteCallbackList remoteCallbackList2;
                RemoteCallbackList remoteCallbackList3;
                int i;
                boolean m12213cM;
                RemoteCallbackList remoteCallbackList4;
                remoteCallbackList = aek.this.adQ;
                synchronized (remoteCallbackList) {
                    remoteCallbackList2 = aek.this.adQ;
                    int beginBroadcast = remoteCallbackList2.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i2 = beginBroadcast - 1;
                        try {
                            remoteCallbackList4 = aek.this.adQ;
                            ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i2)).onProgressChanged(networkLoadTaskInfo);
                            beginBroadcast = i2;
                        } catch (RemoteException e) {
                            beginBroadcast = i2;
                        }
                    }
                    remoteCallbackList3 = aek.this.adQ;
                    remoteCallbackList3.finishBroadcast();
                }
                aek aekVar = aek.this;
                i = aek.this.adS;
                m12213cM = aekVar.m12213cM(i);
                if (m12213cM) {
                    int i3 = (int) (networkLoadTaskInfo.f820BH * 100.0f);
                    if (i3 % 5 == 0) {
                        adm.m12480st().m12503cw(i3);
                    }
                }
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Object obj;
                RemoteCallbackList remoteCallbackList;
                RemoteCallbackList remoteCallbackList2;
                RemoteCallbackList remoteCallbackList3;
                int i;
                boolean m12213cM;
                int i2;
                int i3;
                int i4;
                RemoteCallbackList remoteCallbackList4;
                obj = aek.aeU;
                synchronized (obj) {
                    aek.this.f1402Ky = null;
                }
                aek.this.afa = null;
                remoteCallbackList = aek.this.adQ;
                synchronized (remoteCallbackList) {
                    remoteCallbackList2 = aek.this.adQ;
                    int beginBroadcast = remoteCallbackList2.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i5 = beginBroadcast - 1;
                        try {
                            remoteCallbackList4 = aek.this.adQ;
                            ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i5)).onFailed(networkLoadTaskInfo);
                            beginBroadcast = i5;
                        } catch (RemoteException e) {
                            beginBroadcast = i5;
                        }
                    }
                    remoteCallbackList3 = aek.this.adQ;
                    remoteCallbackList3.finishBroadcast();
                }
                aek aekVar = aek.this;
                i = aek.this.adS;
                m12213cM = aekVar.m12213cM(i);
                if (m12213cM) {
                    aek.this.aeW = false;
                    adm.m12480st().m12477sw();
                }
                if (networkLoadTaskInfo.mErrorCode != -7007) {
                    aks.m11143BP().m10755el(aks.m11143BP().m11125CH() + 1);
                    ady m12308tK = ady.m12308tK();
                    i2 = aek.this.adS;
                    m12308tK.m12327b(i2, 0, 0, 2, 0);
                    i3 = aek.this.adS;
                    if (i3 == 3) {
                        ady.m12308tK().mo1746bi(100177);
                    }
                    ady.m12308tK().mo1746bi(100186);
                }
                int m12256un = aeh.m12256un();
                CheckResult mo12201ue = aek.this.mo12201ue();
                i4 = aek.this.adS;
                aeh.m12260a(mo12201ue, 2, i4, m12256un);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                RemoteCallbackList remoteCallbackList;
                RemoteCallbackList remoteCallbackList2;
                RemoteCallbackList remoteCallbackList3;
                int i;
                int i2;
                boolean m12213cM;
                UpdateInfo updateInfo;
                int i3;
                int i4;
                RemoteCallbackList remoteCallbackList4;
                aek.this.f1402Ky = null;
                aek.this.afa = null;
                remoteCallbackList = aek.this.adQ;
                synchronized (remoteCallbackList) {
                    remoteCallbackList2 = aek.this.adQ;
                    int beginBroadcast = remoteCallbackList2.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i5 = beginBroadcast - 1;
                        try {
                            remoteCallbackList4 = aek.this.adQ;
                            ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i5)).onFinished(networkLoadTaskInfo);
                            beginBroadcast = i5;
                        } catch (RemoteException e) {
                            beginBroadcast = i5;
                        }
                    }
                    remoteCallbackList3 = aek.this.adQ;
                    remoteCallbackList3.finishBroadcast();
                }
                aks.m11143BP().m10755el(0);
                ady m12308tK = ady.m12308tK();
                i = aek.this.adS;
                m12308tK.m12327b(i, 0, 0, 1, 0);
                ady.m12308tK().mo1746bi(100175);
                File file = new File(networkLoadTaskInfo.getAbsolutePath());
                aek aekVar = aek.this;
                i2 = aek.this.adS;
                m12213cM = aekVar.m12213cM(i2);
                if (m12213cM) {
                    aek.this.aeW = false;
                    adm.m12480st().m12477sw();
                    if (file.exists()) {
                        aiv m11525yw = aiv.m11525yw();
                        String absolutePath = file.getAbsolutePath();
                        i4 = aek.this.adS;
                        m11525yw.m11530s(absolutePath, i4);
                    }
                } else {
                    CheckResult mo12201ue = aek.this.mo12201ue();
                    if (file.exists() && mo12201ue != null && (updateInfo = mo12201ue.mUpdateInfoList.get(0)) != null && updateInfo.url != null) {
                        aei.m12243e(mo12201ue);
                    }
                    ady.m12308tK().mo1746bi(100176);
                }
                CheckResult mo12201ue2 = aek.this.mo12201ue();
                i3 = aek.this.adS;
                aeh.m12260a(mo12201ue2, 1, i3, aks.m11143BP().m11014EO());
            }
        };
        this.adQ = new RemoteCallbackList<>();
        this.mContext = KApplication.m13453ge();
    }

    /* renamed from: uq */
    public static aek m12195uq() {
        return sInstance.get();
    }

    @WorkerThread
    /* renamed from: g */
    public void m12212g(@Nullable CheckResult checkResult) {
        try {
            aeT.writeLock().lock();
            InterfaceC3598sk m2315cE = C3566rv.m2315cE(KApplication.m13453ge().getFilesDir() + File.separator + "updateinfo");
            if (checkResult == null) {
                this.aeV = null;
                m2315cE.delete();
                aks.m11143BP().m10820br(false);
            } else if (m12211h(checkResult)) {
                m2315cE.mo2255b(checkResult);
                this.aeV = checkResult;
                aks.m11143BP().m10820br(true);
            }
        } finally {
            aeT.writeLock().unlock();
        }
    }

    @WorkerThread
    @Nullable
    /* renamed from: ur */
    public CheckResult m12194ur() {
        try {
            aeT.readLock().lock();
            if (this.aeV == null) {
                Object mo2254jp = C3566rv.m2315cE(KApplication.m13453ge().getFilesDir() + File.separator + "updateinfo").mo2254jp();
                this.aeV = mo2254jp instanceof CheckResult ? (CheckResult) mo2254jp : null;
            }
            aeT.readLock().unlock();
            if (this.aeV != null) {
                if (!m12211h(this.aeV)) {
                    aiv.m11525yw().m11531l(this.aeV);
                    m12212g(null);
                    this.aeV = null;
                    return null;
                }
            } else {
                m12212g(null);
            }
            return this.aeV;
        } catch (Throwable th) {
            aeT.readLock().unlock();
            throw th;
        }
    }

    /* renamed from: h */
    private boolean m12211h(@NonNull CheckResult checkResult) {
        UpdateInfo updateInfo = checkResult.mUpdateInfoList.get(0);
        return updateInfo != null && aei.m12246c(checkResult) && 640 < updateInfo.buildNum;
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ue */
    public CheckResult mo12201ue() {
        return m12194ur();
    }

    /* renamed from: i */
    private void m12210i(CheckResult checkResult) {
        m12212g(checkResult);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: uf */
    public boolean mo12200uf() {
        CheckResult mo12201ue = mo12201ue();
        if (mo12201ue == null) {
            return false;
        }
        if (mo12201ue.mUpdateInfoList == null || mo12201ue.mUpdateInfoList.size() <= 0) {
            return false;
        }
        UpdateInfo updateInfo = mo12201ue.mUpdateInfoList.get(0);
        return (updateInfo == null || updateInfo.url == null) ? false : true;
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ug */
    public boolean mo12199ug() {
        return this.aeW;
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: uh */
    public void mo12198uh() {
        mo12235a(mo12201ue(), 3);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: cK */
    public void mo12214cK(int i) {
        mo12235a(mo12201ue(), i);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public int mo12235a(CheckResult checkResult, int i) {
        int i2;
        if (checkResult == null || checkResult.mUpdateInfoList == null || checkResult.mUpdateInfoList.size() <= 0) {
            return -1;
        }
        UpdateInfo updateInfo = checkResult.mUpdateInfoList.get(0);
        if (updateInfo == null || updateInfo.url == null) {
            return -1;
        }
        File m12251a = aei.m12251a(updateInfo);
        if (m12192x(m12251a)) {
            if (m12213cM(i)) {
                aiv.m11525yw().m11530s(m12251a.getAbsolutePath(), i);
            } else {
                aei.m12243e(checkResult);
            }
            return 2;
        }
        this.adS = i;
        if (m12213cM(i) && !this.aeW) {
            this.aeW = true;
            adm.m12480st().m12514a(updateInfo.title, 100, 0, false);
        }
        synchronized (aeU) {
            if (mo12207tc()) {
                i2 = 1;
            } else {
                String m12248b = aei.m12248b(updateInfo);
                abi.m12831em(aas.f1260XV + aei.m12241tn() + "/KinguserV*.apk");
                m12238S(m12248b, updateInfo.url);
                int m12256un = aeh.m12256un();
                aks.m11143BP().m10775eF(m12256un);
                aeh.m12261a(mo12201ue(), i, m12256un);
                i2 = 0;
            }
        }
        return i2;
    }

    /* renamed from: x */
    private boolean m12192x(File file) {
        return file != null && file.exists() && file.isFile() && aiv.m11525yw().m11553C(file);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public boolean mo12234a(ICheckIPCListener iCheckIPCListener) {
        aks.m11143BP().m10755el(0);
        return m12217b(false, iCheckIPCListener);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public boolean mo12223a(boolean z, ICheckIPCListener iCheckIPCListener) {
        return m12217b(z, iCheckIPCListener);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: aw */
    public boolean mo12220aw(boolean z) {
        if (z) {
            if (!adk.m12539b(aef.m12268uk(), System.currentTimeMillis(), aef.m12267ul())) {
                return false;
            }
        }
        aef.m12269ac(System.currentTimeMillis());
        return m12217b(true, this.aeX);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ui */
    public boolean mo12197ui() {
        return m12217b(true, this.aeX);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public boolean mo12224a(C3683u c3683u, long j) {
        if (mo12207tc() || c3683u == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(c3683u);
        arrayList.add(Long.valueOf(j));
        return beg.m7461Zj().m7456a(this.aeZ, arrayList);
    }

    /* renamed from: b */
    private boolean m12217b(boolean z, ICheckIPCListener iCheckIPCListener) {
        if (mo12207tc()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(z ? Boolean.TRUE : Boolean.FALSE);
        arrayList.add(iCheckIPCListener);
        return beg.m7461Zj().m7456a(this.aeY, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m12215c(final boolean z, final ICheckIPCListener iCheckIPCListener) {
        final Context ge = KUApplication.m13453ge();
        final AtomicReference atomicReference = new AtomicReference(0);
        if (iCheckIPCListener != null) {
            try {
                iCheckIPCListener.onCheckStarted();
            } catch (RemoteException e) {
            }
        }
        cbr.akD().m5000a(new cbq() { // from class: com.kingroot.kinguser.aek.3
            @Override // com.kingroot.kinguser.cbq
            /* renamed from: c */
            public void mo5001c(Bundle bundle) {
                Serializable serializable = bundle.getSerializable("key_softupdate_conch");
                C0756ae c0756ae = serializable instanceof C0756ae ? (C0756ae) serializable : null;
                if (c0756ae != null) {
                    AtomicReference atomicReference2 = new AtomicReference();
                    if (!C3942yy.m1351d(c0756ae.f1400gQ)) {
                        Iterator<C3871x> it = c0756ae.f1400gQ.iterator();
                        while (it.hasNext()) {
                            C3871x next = it.next();
                            CheckResult m12237a = aek.this.m12237a(ge, !C3942yy.m1351d(next.f3938gy) ? next.f3938gy.get(0) : null, next.f3936gt, z);
                            if (m12237a != null) {
                                atomicReference2.set(m12237a);
                            }
                        }
                    }
                    try {
                        if (iCheckIPCListener != null) {
                            if (((Integer) atomicReference.get()).intValue() != 0) {
                                iCheckIPCListener.onCheckEvent(((Integer) atomicReference.get()).intValue());
                            }
                            iCheckIPCListener.onCheckFinished(atomicReference2.get() != null ? (CheckResult) atomicReference2.get() : CheckResult.aeM);
                        }
                    } catch (RemoteException e2) {
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    /* renamed from: a */
    public CheckResult m12237a(Context context, C3683u c3683u, long j, boolean z) {
        return m12236a(context, c3683u, j, z, false);
    }

    @Nullable
    /* renamed from: a */
    private CheckResult m12236a(Context context, C3683u c3683u, long j, boolean z, boolean z2) {
        UpdateInfo updateInfo;
        CheckResult checkResult;
        if (c3683u != null && aei.m12250a(c3683u) && aei.m12249ad(j)) {
            CheckResult m12253a = aei.m12253a(context, z, c3683u);
            if (m12253a != null) {
                m12253a.mTaskId = j;
                List<UpdateInfo> list = m12253a.mUpdateInfoList;
                if (!C3942yy.m1352c(list)) {
                    checkResult = m12253a;
                    updateInfo = list.get(0);
                }
            }
            checkResult = m12253a;
            updateInfo = null;
        } else {
            updateInfo = null;
            checkResult = null;
        }
        if (updateInfo != null) {
            updateInfo.obtainType = z2 ? 1 : 0;
        }
        if (checkResult != null) {
            m12209j(checkResult);
        }
        return checkResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m12222a(boolean z, C3683u c3683u, long j, ICheckIPCListener iCheckIPCListener) {
        if (iCheckIPCListener != null) {
            try {
                iCheckIPCListener.onCheckStarted();
            } catch (RemoteException e) {
            }
        }
        CheckResult m12236a = m12236a(KApplication.m13453ge(), c3683u, j, z, true);
        if (iCheckIPCListener != null) {
            if (m12236a == null) {
                try {
                    m12236a = CheckResult.aeM;
                } catch (RemoteException e2) {
                    return;
                }
            }
            iCheckIPCListener.onCheckFinished(m12236a);
        }
    }

    /* renamed from: S */
    private void m12238S(String str, String str2) {
        this.afa = new C3753ve(str, str2);
        synchronized (aeU) {
            this.f1402Ky = new C3759vh<>(this.mContext, this.afa);
            this.f1402Ky.m1883dc(aei.m12241tn());
            this.f1402Ky.m1889a(this.adV);
            this.f1402Ky.m1882ll();
        }
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tq */
    public NetworkLoadTaskInfo mo12206tq() {
        return this.afa == null ? new AppDownloadTaskInfo() : new AppDownloadTaskInfo(this.afa);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tc */
    public boolean mo12207tc() {
        boolean z;
        synchronized (aeU) {
            z = this.f1402Ky != null;
        }
        return z;
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ab */
    public void mo12221ab(long j) {
        CheckResult mo12201ue = mo12201ue();
        if (mo12201ue != null && mo12201ue.mTaskId == j) {
            aiv.m11525yw().m11531l(mo12201ue);
            m12210i(null);
            adm.m12480st().m12479su();
        }
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tr */
    public boolean mo12205tr() {
        synchronized (aeU) {
            if (this.f1402Ky != null) {
                r0 = this.f1402Ky.getStatus() == 1;
            }
        }
        return r0;
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ts */
    public void mo12204ts() {
        synchronized (aeU) {
            if (this.f1402Ky != null) {
                this.f1402Ky.m1881lm();
            }
        }
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tt */
    public void mo12203tt() {
        synchronized (aeU) {
            if (this.f1402Ky != null) {
                this.f1402Ky.m1880ln();
            }
        }
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tu */
    public void mo12202tu() {
        synchronized (aeU) {
            if (this.f1402Ky != null) {
                this.f1402Ky.m1879lo();
            }
        }
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: b */
    public void mo12219b(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        this.adQ.register(iNetworkLoadTaskCallback);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: c */
    public void mo12216c(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        this.adQ.unregister(iNetworkLoadTaskCallback);
    }

    /* renamed from: j */
    private void m12209j(@NonNull CheckResult checkResult) {
        int i = 0;
        if (checkResult != null) {
            try {
                UpdateInfo updateInfo = C3942yy.m1352c(checkResult.mUpdateInfoList) ? null : checkResult.mUpdateInfoList.get(0);
                if (updateInfo != null && !TextUtils.isEmpty(updateInfo.url) && updateInfo.buildNum > 640) {
                    CheckResult m12194ur = m12194ur();
                    String str = "";
                    if (m12194ur != null && m12194ur.mUpdateInfoList.get(0) != null) {
                        UpdateInfo updateInfo2 = m12194ur.mUpdateInfoList.get(0);
                        i = updateInfo2.buildNum;
                        str = updateInfo2.version;
                    }
                    m12212g(checkResult);
                    aeh.m12262a(mo12201ue());
                    if (i != updateInfo.buildNum || !str.equalsIgnoreCase(updateInfo.version)) {
                        aks.m11143BP().m10751ep(0);
                        aks.m11143BP().m10899aW(0L);
                        aks.m11143BP().m10858bV(false);
                        aks.m11143BP().m10775eF(3);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m12208k(CheckResult checkResult) {
        List<UpdateInfo> list;
        UpdateInfo updateInfo;
        if (checkResult != null && (list = checkResult.mUpdateInfoList) != null && list.size() > 0 && (updateInfo = list.get(0)) != null && updateInfo.url != null) {
            mo12196uj();
        }
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: uj */
    public void mo12196uj() {
        auz.m8880Rc().m8879Rd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cM */
    public boolean m12213cM(int i) {
        return i == 1 || i == 2 || i == 4;
    }
}
