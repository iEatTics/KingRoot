package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.aiv;
import com.kingroot.kinguser.asq;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppChangedListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class asp implements asy {
    private static final String TAG = aiq.arY + "_ApkInstallerService";
    private static cce<asp> axU = new cce<asp>() { // from class: com.kingroot.kinguser.asp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Oo */
        public asp create() {
            return new asp();
        }
    };
    private Map<String, Integer> aNg;
    private final Map<String, RemoteCallbackList<IAppInstallListener>> aNh;
    private final Map<String, C3637tk> aNi;
    private final RemoteCallbackList<IAppChangedListener> aNj;
    private Map<String, ApkInstallRequest> axW;

    /* renamed from: On */
    public static asp m9407On() {
        return axU.get();
    }

    private asp() {
        this.aNg = Collections.synchronizedMap(new HashMap());
        this.aNh = Collections.synchronizedMap(new HashMap());
        this.axW = Collections.synchronizedMap(new HashMap());
        this.aNi = Collections.synchronizedMap(new HashMap());
        this.aNj = new RemoteCallbackList<>();
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9331a(@NonNull final ApkInstallRequest apkInstallRequest, IAppInstallListener iAppInstallListener) {
        if (apkInstallRequest != null) {
            String str = apkInstallRequest.pkgName;
            mo9329a(str, iAppInstallListener);
            if (!m9398iC(str)) {
                if (apkInstallRequest.isUpdate || !m9395iF(str)) {
                    if (!new File(apkInstallRequest.apkPath).exists()) {
                        m9408H(str, 12);
                        return;
                    }
                    m9408H(str, 3);
                    this.axW.put(apkInstallRequest.pkgName, apkInstallRequest);
                    beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.asp.2
                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                        public void run() {
                            super.run();
                            asp.this.m9404a(apkInstallRequest);
                        }
                    }));
                }
            }
        }
    }

    /* renamed from: iC */
    private boolean m9398iC(String str) {
        int m9394iG = m9394iG(str);
        return m9394iG >= 3 && m9394iG <= 8 && m9394iG != 6;
    }

    /* renamed from: iD */
    private boolean m9397iD(String str) {
        int m9394iG = m9394iG(str);
        return m9394iG >= 3 && m9394iG <= 8;
    }

    /* renamed from: iE */
    private boolean m9396iE(String str) {
        int m9394iG = m9394iG(str);
        return m9394iG >= 9 && m9394iG <= 22;
    }

    /* renamed from: iF */
    private boolean m9395iF(String str) {
        return m9394iG(str) == 10;
    }

    /* renamed from: iG */
    private int m9394iG(String str) {
        Integer num = this.aNg.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m9404a(ApkInstallRequest apkInstallRequest) {
        int i;
        int i2;
        int i3;
        String str = apkInstallRequest.apkPath;
        final String str2 = apkInstallRequest.pkgName;
        String str3 = apkInstallRequest.apkMd5;
        m9408H(str2, 5);
        aiv.C1001a c1001a = null;
        if (TextUtils.isEmpty(str3) || aah.m13001h(str3, new File(str))) {
            m9408H(str2, 4);
            try {
                switch (apkInstallRequest.aNe) {
                    case 1:
                        c1001a = aiv.m11525yw().m11547a(new File(str), false);
                        i = c1001a.retCode;
                        break;
                    default:
                        c1001a = aiv.m11525yw().m11547a(new File(str), false);
                        i = c1001a.retCode;
                        if (i != 0) {
                            try {
                                c1001a = aiv.m11525yw().m11547a(new File(str), true);
                                i = c1001a.retCode;
                                break;
                            } catch (Exception e) {
                                break;
                            }
                        }
                        break;
                }
            } catch (Exception e2) {
                i = -1;
            }
            if (i == -1 || i == -2) {
                i2 = 15;
            } else if (i == 0) {
                i2 = 10;
            } else if (i != 1) {
                i2 = 4;
            } else {
                synchronized (this.aNi) {
                    C3637tk c3637tk = this.aNi.get(str2);
                    if (c3637tk != null) {
                        c3637tk.release();
                    }
                    C3637tk m2167cS = C3637tk.m2167cS("InstallGameWhitSystemInterface");
                    if (m2167cS != null) {
                        this.aNi.put(str2, m2167cS);
                        m2167cS.m2161s(600000L);
                    }
                }
                asq.m9387a(apkInstallRequest, new asq.InterfaceC1493a() { // from class: com.kingroot.kinguser.asp.3
                    @Override // com.kingroot.kinguser.asq.InterfaceC1493a
                    /* renamed from: ad */
                    public void mo9386ad(boolean z) {
                        if (z) {
                            asp.this.m9408H(str2, 11);
                        } else {
                            asp.this.m9408H(str2, 16);
                        }
                    }
                });
                i2 = 6;
            }
            i3 = i2;
        } else {
            C3563rs.m2345r(new File(str));
            i3 = 14;
        }
        if (6 == i3) {
            m9401f(str2, i3, c1001a != null ? c1001a.asC + "|" + c1001a.asD : "");
        } else if (apkInstallRequest.aNe == 1 && 15 == i3) {
            m9401f(str2, i3, c1001a != null ? c1001a.asC + "|" + c1001a.asD : "");
        } else {
            m9408H(str2, i3);
        }
        return i3;
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9329a(String str, IAppInstallListener iAppInstallListener) {
        if (!TextUtils.isEmpty(str) && iAppInstallListener != null) {
            synchronized (this.aNh) {
                RemoteCallbackList<IAppInstallListener> remoteCallbackList = this.aNh.get(str);
                if (remoteCallbackList == null) {
                    remoteCallbackList = new RemoteCallbackList<>();
                }
                remoteCallbackList.register(iAppInstallListener);
                this.aNh.put(str, remoteCallbackList);
            }
        }
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9330a(IAppInstallListener iAppInstallListener) {
        if (iAppInstallListener != null) {
            synchronized (this.aNh) {
                Iterator<String> it = this.aNh.keySet().iterator();
                while (it.hasNext()) {
                    RemoteCallbackList<IAppInstallListener> remoteCallbackList = this.aNh.get(it.next());
                    if (remoteCallbackList != null) {
                        remoteCallbackList.unregister(iAppInstallListener);
                        if (remoteCallbackList.beginBroadcast() == 0) {
                            it.remove();
                        }
                        remoteCallbackList.finishBroadcast();
                    }
                }
            }
        }
    }

    /* renamed from: iH */
    public void m9393iH(String str) {
        synchronized (this.aNi) {
            C3637tk c3637tk = this.aNi.get(str);
            if (c3637tk != null) {
                c3637tk.release();
            }
        }
        m9408H(str, 10);
    }

    /* renamed from: ix */
    public int m9392ix(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return m9394iG(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public void m9408H(String str, int i) {
        m9401f(str, i, "");
    }

    /* renamed from: f */
    private void m9401f(String str, int i, String str2) {
        if (!TextUtils.isEmpty(str) && i != m9392ix(str)) {
            this.aNg.put(str, Integer.valueOf(i));
            if (m9396iE(str)) {
                this.axW.remove(str);
            }
            synchronized (this.aNh) {
                RemoteCallbackList<IAppInstallListener> remoteCallbackList = this.aNh.get(str);
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i2 = beginBroadcast - 1;
                    try {
                        remoteCallbackList.getBroadcastItem(i2).onState(str, i, str2);
                        beginBroadcast = i2;
                    } catch (RemoteException e) {
                        beginBroadcast = i2;
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    /* renamed from: iy */
    public void m9391iy(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.aNg.remove(str);
        }
    }

    /* renamed from: a */
    public void m9403a(IAppChangedListener iAppChangedListener) {
        if (iAppChangedListener != null) {
            this.aNj.register(iAppChangedListener);
        }
    }

    /* renamed from: b */
    public void m9402b(IAppChangedListener iAppChangedListener) {
        if (iAppChangedListener != null) {
            this.aNj.unregister(iAppChangedListener);
        }
    }

    /* renamed from: iz */
    public void m9390iz(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.aNj) {
                int beginBroadcast = this.aNj.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        this.aNj.getBroadcastItem(i).onPackageReplace(str);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                this.aNj.finishBroadcast();
            }
            if (m9392ix(str) == 6 && this.axW.get(str).isUpdate) {
                m9408H(str, 11);
            }
        }
    }

    /* renamed from: iA */
    public void m9400iA(String str) {
        ApkInstallRequest apkInstallRequest = this.axW.get(str);
        if (apkInstallRequest == null) {
            m9391iy(str);
        } else if (!apkInstallRequest.isUpdate) {
            m9391iy(str);
        }
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.aNj) {
                int beginBroadcast = this.aNj.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        this.aNj.getBroadcastItem(i).onPackageDelete(str);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                this.aNj.finishBroadcast();
            }
        }
    }

    /* renamed from: iB */
    public void m9399iB(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.aNj) {
                int beginBroadcast = this.aNj.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        this.aNj.getBroadcastItem(i).onPackageAdd(str);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                this.aNj.finishBroadcast();
            }
            if (m9392ix(str) == 6 && !this.axW.get(str).isUpdate) {
                m9408H(str, 11);
            }
        }
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: GT */
    public ArrayList<String> mo9333GT() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(this.axW.keySet());
        return arrayList;
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: GU */
    public boolean mo9332GU() {
        for (String str : this.aNg.keySet()) {
            if (m9397iD(str)) {
                return true;
            }
        }
        return false;
    }
}
