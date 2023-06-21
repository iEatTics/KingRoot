package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
/* loaded from: classes.dex */
public class asq {
    private static final String TAG = aiq.arY + "_AppInstallerHelper";

    /* renamed from: com.kingroot.kinguser.asq$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1493a {
        /* renamed from: ad */
        void mo9386ad(boolean z);
    }

    /* renamed from: a */
    public static void m9387a(ApkInstallRequest apkInstallRequest, InterfaceC1493a interfaceC1493a) {
        m9388a(apkInstallRequest, 20, 30000L, interfaceC1493a);
    }

    /* renamed from: a */
    public static void m9388a(final ApkInstallRequest apkInstallRequest, final int i, final long j, final InterfaceC1493a interfaceC1493a) {
        C3849wp.execute(new Runnable() { // from class: com.kingroot.kinguser.asq.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                String str = ApkInstallRequest.this.pkgName;
                if (ApkInstallRequest.this.isUpdate && ApkInstallRequest.this.versionCode == -1 && interfaceC1493a != null) {
                    interfaceC1493a.mo9386ad(false);
                }
                if (i == 0 && interfaceC1493a != null) {
                    interfaceC1493a.mo9386ad(false);
                }
                if (ApkInstallRequest.this.isUpdate) {
                    try {
                        PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                        if (packageInfo != null) {
                            if (packageInfo.versionCode == ApkInstallRequest.this.versionCode) {
                                z = true;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                } else {
                    z = C3952zh.m1312pq().m1314du(str);
                    if (z) {
                    }
                }
                if (z) {
                    if (interfaceC1493a != null) {
                        interfaceC1493a.mo9386ad(true);
                        return;
                    }
                    return;
                }
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.asq.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        asq.m9388a(ApkInstallRequest.this, i - 1, j, interfaceC1493a);
                    }
                }, j);
            }
        });
    }
}
