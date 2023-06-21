package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.aln;
import com.kingroot.kinguser.amz;
import com.kingroot.kinguser.ana;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class aln implements asy {
    private static final String TAG = aiq.arY + "_AppMarketInstallerService";
    private static cce<aln> axU = new cce<aln>() { // from class: com.kingroot.kinguser.aln.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: GV */
        public aln create() {
            return new aln();
        }
    };
    private Map<String, RemoteCallbackList<IAppInstallListener>> axV;
    private Map<String, ApkInstallRequest> axW;
    private IAppInstallListener.Stub axX;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fh */
    public boolean m10556fh(int i) {
        return i >= 9 && i <= 22;
    }

    @InterfaceC3726ut
    /* renamed from: GS */
    public static aln m10563GS() {
        return axU.get();
    }

    private aln() {
        this.axV = Collections.synchronizedMap(new HashMap());
        this.axW = Collections.synchronizedMap(new HashMap());
        this.axX = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppMarketInstallerService$2
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(String str, int i, String str2) {
                Map map;
                Map map2;
                boolean m10555fi;
                boolean m10556fh;
                Map map3;
                Map map4;
                map = aln.this.axV;
                RemoteCallbackList remoteCallbackList = (RemoteCallbackList) map.get(str);
                if (remoteCallbackList != null) {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i2 = beginBroadcast - 1;
                        try {
                            ((IAppInstallListener) remoteCallbackList.getBroadcastItem(i2)).onState(str, i, str2);
                            beginBroadcast = i2;
                        } catch (RemoteException e) {
                            beginBroadcast = i2;
                        }
                    }
                    remoteCallbackList.finishBroadcast();
                }
                map2 = aln.this.axW;
                ApkInstallRequest apkInstallRequest = (ApkInstallRequest) map2.get(str);
                ReportInfo reportInfo = null;
                if (apkInstallRequest != null) {
                    reportInfo = apkInstallRequest.reportInfo;
                    aln.this.m10564B(apkInstallRequest.appName, i);
                }
                if (i == 10) {
                    if (reportInfo != null) {
                        ana.m10352IO().mo10331a(reportInfo, 30);
                    }
                    if (apkInstallRequest != null && apkInstallRequest.cid != 0) {
                        ana.m10352IO().mo10332a(apkInstallRequest.cid, apkInstallRequest.pkgName, 1, str2);
                    }
                } else if (i == 4) {
                    if (reportInfo != null) {
                        ana.m10352IO().mo10331a(reportInfo, 20);
                    }
                    if (apkInstallRequest != null && apkInstallRequest.cid != 0) {
                        ana.m10352IO().mo10335J(apkInstallRequest.cid, apkInstallRequest.pkgName);
                    }
                } else if (i == 6) {
                    if (apkInstallRequest != null && apkInstallRequest.cid != 0) {
                        ana.m10352IO().mo10332a(apkInstallRequest.cid, apkInstallRequest.pkgName, 2, str2);
                        ana.m10352IO().mo10332a(apkInstallRequest.cid, apkInstallRequest.pkgName, 3, str2);
                    }
                } else if (i != 16 && i == 11) {
                    if (reportInfo != null) {
                        ana.m10352IO().mo10331a(reportInfo, 30);
                    }
                    if (apkInstallRequest != null && apkInstallRequest.cid != 0) {
                        ana.m10352IO().mo10332a(apkInstallRequest.cid, apkInstallRequest.pkgName, 4, str2);
                    }
                }
                m10555fi = aln.this.m10555fi(i);
                if (m10555fi && apkInstallRequest != null) {
                    if (apkInstallRequest.aNf) {
                        C3563rs.deleteFile(apkInstallRequest.apkPath);
                    }
                    amz.m10365II().m9875hx(str);
                    amz.m10365II().m10367IF();
                    amz.m10365II().m10364IJ();
                }
                m10556fh = aln.this.m10556fh(i);
                if (m10556fh) {
                    map3 = aln.this.axV;
                    map3.remove(str);
                    map4 = aln.this.axW;
                    map4.remove(str);
                }
            }
        };
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9331a(@NonNull ApkInstallRequest apkInstallRequest, IAppInstallListener iAppInstallListener) {
        m10557b(apkInstallRequest.pkgName, iAppInstallListener);
        this.axW.put(apkInstallRequest.pkgName, apkInstallRequest);
        aso.m9417Ol().mo9331a(apkInstallRequest, this.axX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fi */
    public boolean m10555fi(int i) {
        return i == 10 || i == 11;
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9329a(String str, IAppInstallListener iAppInstallListener) {
        aso.m9417Ol().mo9329a(str, this.axX);
        m10557b(str, iAppInstallListener);
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9330a(IAppInstallListener iAppInstallListener) {
        if (iAppInstallListener != null) {
            for (String str : this.axV.keySet()) {
                RemoteCallbackList<IAppInstallListener> remoteCallbackList = this.axV.get(str);
                if (remoteCallbackList != null) {
                    remoteCallbackList.unregister(iAppInstallListener);
                }
            }
        }
    }

    /* renamed from: b */
    private void m10557b(String str, IAppInstallListener iAppInstallListener) {
        if (iAppInstallListener != null) {
            RemoteCallbackList<IAppInstallListener> remoteCallbackList = this.axV.get(str);
            if (remoteCallbackList == null) {
                remoteCallbackList = new RemoteCallbackList<>();
                this.axV.put(str, remoteCallbackList);
            }
            remoteCallbackList.register(iAppInstallListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public void m10564B(String str, int i) {
        if (i == 10 || i == 11) {
            C3954zj.m1310b(String.format(C3953zi.m1311pr().getString(R.string.apps_market_install_success_toast), str));
        } else if (i == 14 || i == 15 || i == 16) {
            C3954zj.m1310b(String.format(C3953zi.m1311pr().getString(R.string.apps_market_install_failed_toast), str));
        }
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: GT */
    public ArrayList<String> mo9333GT() {
        return aso.m9417Ol().mo9333GT();
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: GU */
    public boolean mo9332GU() {
        return aso.m9417Ol().mo9332GU();
    }
}
