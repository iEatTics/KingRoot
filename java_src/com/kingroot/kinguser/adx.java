package com.kingroot.kinguser;

import android.content.Context;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.download.CommonFileDownloadTaskInfo;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.adw;
import com.kingroot.kinguser.adx;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ais;
import com.kingroot.kinguser.aks;
import java.io.File;
/* loaded from: classes.dex */
public class adx {

    /* renamed from: Ky */
    private C3759vh<C3754vf> f1398Ky;
    private C3754vf adP;
    private final RemoteCallbackList<INetworkLoadTaskCallback> adQ = new RemoteCallbackList<>();
    private int adR = -1;
    private volatile int adS = 0;
    private volatile int adT = 0;
    private volatile int adU = 0;
    NetworkLoadTaskAdapter adV = new NetworkLoadTaskAdapter() { // from class: com.kingroot.kingmaster.network.download.KuDownloadEnginerImpl$1
        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
            RemoteCallbackList remoteCallbackList;
            RemoteCallbackList remoteCallbackList2;
            RemoteCallbackList remoteCallbackList3;
            RemoteCallbackList remoteCallbackList4;
            super.onProgressChanged(networkLoadTaskInfo);
            adx.this.m12365cG(1);
            remoteCallbackList = adx.this.adQ;
            synchronized (remoteCallbackList) {
                remoteCallbackList2 = adx.this.adQ;
                int beginBroadcast = remoteCallbackList2.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        remoteCallbackList4 = adx.this.adQ;
                        ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i)).onProgressChanged(networkLoadTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                remoteCallbackList3 = adx.this.adQ;
                remoteCallbackList3.finishBroadcast();
            }
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
            RemoteCallbackList remoteCallbackList;
            RemoteCallbackList remoteCallbackList2;
            RemoteCallbackList remoteCallbackList3;
            int i;
            int i2;
            int i3;
            boolean z;
            RemoteCallbackList remoteCallbackList4;
            RemoteCallbackList remoteCallbackList5;
            RemoteCallbackList remoteCallbackList6;
            RemoteCallbackList remoteCallbackList7;
            RemoteCallbackList remoteCallbackList8;
            int i4;
            RemoteCallbackList remoteCallbackList9;
            super.onFinished(networkLoadTaskInfo);
            adx.this.m12365cG(2);
            remoteCallbackList = adx.this.adQ;
            synchronized (remoteCallbackList) {
                remoteCallbackList2 = adx.this.adQ;
                int beginBroadcast = remoteCallbackList2.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i5 = beginBroadcast - 1;
                    try {
                        remoteCallbackList9 = adx.this.adQ;
                        ((INetworkLoadTaskCallback) remoteCallbackList9.getBroadcastItem(i5)).onFinished(networkLoadTaskInfo);
                        beginBroadcast = i5;
                    } catch (RemoteException e) {
                        beginBroadcast = i5;
                    }
                }
                remoteCallbackList3 = adx.this.adQ;
                remoteCallbackList3.finishBroadcast();
            }
            ady.m12308tK().mo1746bi(100179);
            ady m12308tK = ady.m12308tK();
            Object[] objArr = new Object[5];
            objArr[0] = 2;
            objArr[1] = 1;
            i = adx.this.adT;
            objArr[2] = Integer.valueOf(i);
            i2 = adx.this.adT;
            objArr[3] = Integer.valueOf(i2 == 5 ? adx.this.adU : 0);
            objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
            m12308tK.m12311f(objArr);
            aks.m11143BP().m10753en(aks.m11143BP().m11119CN() + 1);
            i3 = adx.this.adS;
            if (i3 != 4) {
                if (new File(networkLoadTaskInfo.getAbsolutePath()).exists()) {
                    ais m11585ye = ais.m11585ye();
                    i4 = adx.this.adS;
                    z = m11585ye.m11591dB(i4);
                } else {
                    z = false;
                }
                remoteCallbackList4 = adx.this.adQ;
                synchronized (remoteCallbackList4) {
                    remoteCallbackList5 = adx.this.adQ;
                    int beginBroadcast2 = remoteCallbackList5.beginBroadcast();
                    while (beginBroadcast2 > 0) {
                        int i6 = beginBroadcast2 - 1;
                        if (z) {
                            try {
                                adx.this.m12365cG(4);
                                remoteCallbackList8 = adx.this.adQ;
                                ((INetworkLoadTaskCallback) remoteCallbackList8.getBroadcastItem(i6)).onInstallFinished(networkLoadTaskInfo);
                            } catch (RemoteException e2) {
                                beginBroadcast2 = i6;
                            }
                        } else {
                            adx.this.m12365cG(5);
                            remoteCallbackList7 = adx.this.adQ;
                            ((INetworkLoadTaskCallback) remoteCallbackList7.getBroadcastItem(i6)).onInstallFailed(networkLoadTaskInfo);
                        }
                        beginBroadcast2 = i6;
                    }
                    remoteCallbackList6 = adx.this.adQ;
                    remoteCallbackList6.finishBroadcast();
                }
            }
            adx.this.f1398Ky = null;
            adx.this.adP = null;
            aks.m11143BP().m10754em(0);
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
            RemoteCallbackList remoteCallbackList;
            RemoteCallbackList remoteCallbackList2;
            RemoteCallbackList remoteCallbackList3;
            int i;
            int i2;
            RemoteCallbackList remoteCallbackList4;
            super.onFailed(networkLoadTaskInfo);
            adx.this.m12365cG(3);
            adx.this.f1398Ky = null;
            adx.this.adP = null;
            remoteCallbackList = adx.this.adQ;
            synchronized (remoteCallbackList) {
                remoteCallbackList2 = adx.this.adQ;
                int beginBroadcast = remoteCallbackList2.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i3 = beginBroadcast - 1;
                    try {
                        remoteCallbackList4 = adx.this.adQ;
                        ((INetworkLoadTaskCallback) remoteCallbackList4.getBroadcastItem(i3)).onFailed(networkLoadTaskInfo);
                        beginBroadcast = i3;
                    } catch (RemoteException e) {
                        beginBroadcast = i3;
                    }
                }
                remoteCallbackList3 = adx.this.adQ;
                remoteCallbackList3.finishBroadcast();
            }
            if (networkLoadTaskInfo.mErrorCode != -7007) {
                aks.m11143BP().m10754em(aks.m11143BP().m11120CM() + 1);
                ady.m12308tK().mo1746bi(100181);
                ady m12308tK = ady.m12308tK();
                Object[] objArr = new Object[5];
                objArr[0] = 2;
                objArr[1] = 2;
                i = adx.this.adT;
                objArr[2] = Integer.valueOf(i);
                i2 = adx.this.adT;
                objArr[3] = Integer.valueOf(i2 == 5 ? adx.this.adU : 0);
                objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
                m12308tK.m12311f(objArr);
            }
        }
    };
    protected Context mContext = KApplication.m13453ge();

    /* renamed from: d */
    public void m12364d(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        this.adQ.register(iNetworkLoadTaskCallback);
    }

    /* renamed from: e */
    public void m12362e(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        this.adQ.unregister(iNetworkLoadTaskCallback);
    }

    /* renamed from: tC */
    public NetworkLoadTaskInfo m12360tC() {
        return this.adP == null ? new CommonFileDownloadTaskInfo() : new CommonFileDownloadTaskInfo(this.adP);
    }

    /* renamed from: tD */
    public boolean m12359tD() {
        return this.f1398Ky != null && this.f1398Ky.getStatus() == 1;
    }

    /* renamed from: tE */
    public void m12358tE() {
        if (this.f1398Ky != null) {
            this.f1398Ky.m1881lm();
        }
    }

    /* renamed from: tF */
    public void m12357tF() {
        if (this.f1398Ky != null) {
            this.f1398Ky.m1880ln();
        }
    }

    /* renamed from: tG */
    public void m12356tG() {
        if (this.f1398Ky != null) {
            this.f1398Ky.m1879lo();
        }
    }

    /* renamed from: tH */
    public boolean m12355tH() {
        return this.f1398Ky != null;
    }

    /* renamed from: cF */
    public void m12366cF(int i) {
        this.adS = i;
    }

    /* renamed from: tI */
    public int m12354tI() {
        return this.adS;
    }

    /* renamed from: cD */
    public void mo12368cD(int i) {
        this.adT = i;
    }

    /* renamed from: tg */
    public int mo12352tg() {
        return this.adT;
    }

    /* renamed from: cE */
    public void mo12367cE(int i) {
        this.adU = i;
    }

    /* renamed from: th */
    public int mo12351th() {
        return this.adU;
    }

    /* renamed from: tJ */
    public int m12353tJ() {
        return this.adR;
    }

    /* renamed from: cG */
    public void m12365cG(int i) {
        this.adR = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public int m12375a(Context context, String str, String str2, String str3, int i) {
        if (m12355tH()) {
            return 1;
        }
        String str4 = str + File.separator + str2;
        if (mo12361eG(str4)) {
            m12365cG(2);
            return 2;
        } else if (TextUtils.isEmpty(str3)) {
            return -1;
        } else {
            abi.m12831em(aas.f1260XV + str4);
            ady m12308tK = ady.m12308tK();
            Object[] objArr = new Object[5];
            objArr[0] = 1;
            objArr[1] = 0;
            objArr[2] = Integer.valueOf(this.adT);
            objArr[3] = Integer.valueOf(this.adT == 5 ? this.adU : 0);
            objArr[4] = Integer.valueOf(adw.m12388tb().m12379tk() ? 1 : 2);
            m12308tK.m12311f(objArr);
            m12371b(context, str, str2, str3, i);
            return 0;
        }
    }

    /* renamed from: eG */
    public boolean mo12361eG(String str) {
        return false;
    }

    /* renamed from: b */
    private void m12371b(Context context, String str, String str2, String str3, int i) {
        this.adS = i;
        this.adP = new C3754vf(str2, str3);
        this.f1398Ky = new C3759vh<>(context, this.adP);
        this.f1398Ky.m1883dc(str);
        this.f1398Ky.m1889a(this.adV);
        this.f1398Ky.m1882ll();
    }
}
