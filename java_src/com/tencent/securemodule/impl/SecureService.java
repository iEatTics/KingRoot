package com.tencent.securemodule.impl;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Process;
import com.kingroot.kinguser.bng;
import com.kingroot.kinguser.ccu;
import com.kingroot.kinguser.ccv;
import com.kingroot.kinguser.ccw;
import com.kingroot.kinguser.ccy;
import com.kingroot.kinguser.ccz;
import com.kingroot.kinguser.cda;
import com.kingroot.kinguser.cdo;
import com.kingroot.loader.common.KlConst;
import com.tencent.securemodule.api.AppInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class SecureService extends Service {

    /* renamed from: a */
    private Context f4926a;

    /* renamed from: b */
    private int f4927b = 0;

    /* renamed from: c */
    private boolean f4928c = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m415a() {
        try {
            Thread.sleep(500L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Process.killProcess(Process.myPid());
        System.exit(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m410a(String str, Parcelable parcelable) {
        Intent intent = new Intent(str);
        intent.setPackage(this.f4926a.getPackageName());
        if (parcelable != null) {
            intent.putExtra(KlConst.PLUGIN_DATA_DIR_NAME, parcelable);
        }
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m409a(final String str, List<String> list, List<String> list2) {
        cdo.m4816d("SecureService", "syncCloudScan(): " + str);
        this.f4927b++;
        new ccv(this.f4926a).m4888a(list, list2, new ccw() { // from class: com.tencent.securemodule.impl.SecureService.3

            /* renamed from: c */
            private int f4931c = 0;

            /* renamed from: b */
            private boolean m400b(List<AppInfo> list3) {
                return list3 == null || list3.size() <= 0;
            }

            @Override // com.kingroot.kinguser.ccw
            /* renamed from: a */
            public void mo403a() {
            }

            @Override // com.kingroot.kinguser.ccw
            /* renamed from: a */
            public void mo402a(int i) {
                this.f4931c = i;
            }

            @Override // com.kingroot.kinguser.ccw
            /* renamed from: a */
            public void mo401a(ArrayList<AppInfo> arrayList, ArrayList<AppInfo> arrayList2) {
                if (m400b(arrayList) && m400b(arrayList2)) {
                    Intent intent = new Intent();
                    intent.setPackage(SecureService.this.f4926a.getPackageName());
                    intent.setAction("2000031");
                    intent.putExtra("key_scan_session", str);
                    intent.putExtra("key_errcode", this.f4931c);
                    SecureService.this.sendBroadcast(intent);
                    return;
                }
                Intent intent2 = new Intent();
                intent2.setPackage(SecureService.this.f4926a.getPackageName());
                intent2.setAction("2000030");
                intent2.putExtra("key_scan_session", str);
                intent2.putExtra("key_risk_info", arrayList);
                intent2.putExtra("key_unnkow_info", arrayList2);
                SecureService.this.sendBroadcast(intent2);
            }
        });
        this.f4927b--;
        cdo.m4816d("SecureService", "syncCloudScan() end");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m408a(String str, final boolean z, boolean z2) {
        int m4878M;
        cdo.m4816d("SecureService", "syncDownloadApk()");
        if (this.f4928c) {
            cdo.m4816d("SecureService", "syncDownloadApk() downloading, ignore");
            return;
        }
        this.f4928c = true;
        this.f4927b++;
        if (z) {
            m410a("2000024", null);
        }
        cda cdaVar = new cda(this.f4926a);
        cdaVar.m4882a(new ccz.InterfaceC2703a() { // from class: com.tencent.securemodule.impl.SecureService.2
            @Override // com.kingroot.kinguser.ccz.InterfaceC2703a
            /* renamed from: e */
            public void mo405e(Bundle bundle) {
                if (z) {
                    SecureService.this.m410a("2000025", bundle);
                }
            }

            @Override // com.kingroot.kinguser.ccz.InterfaceC2703a
            /* renamed from: i */
            public void mo404i(Bundle bundle) {
                if (z) {
                    SecureService.this.m410a("2000026", bundle);
                }
            }
        });
        cdaVar.m4877a(1);
        do {
            m4878M = cdaVar.m4878M(str, false);
        } while (m4878M == -7);
        if (m4878M == 0) {
            String m4875b = cdaVar.m4875b();
            if (z) {
                Bundle bundle = new Bundle();
                bundle.putString("key_path", m4875b);
                m410a("2000027", bundle);
            }
            if (z2) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setDataAndType(Uri.fromFile(new File(m4875b)), "application/vnd.android.package-archive");
                this.f4926a.startActivity(intent);
            }
        }
        this.f4927b--;
        this.f4928c = false;
        cdo.m4816d("SecureService", "syncCloudScan() end");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        cdo.m4816d("SecureService", "SecureService onCreate");
        this.f4926a = getApplicationContext();
        bng bngVar = new bng();
        bngVar.packageName = ccu.m4893a(this.f4926a, 10001, "");
        bngVar.versionName = ccu.m4893a(this.f4926a, 10002, "0.0.0");
        bngVar.bDs = ccu.m4891c(this.f4926a, 10003, 0);
        ccy.m4884a(this.f4926a, bngVar);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(final Intent intent, int i) {
        super.onStart(intent, i);
        synchronized (this) {
            new Thread(new Runnable() { // from class: com.tencent.securemodule.impl.SecureService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if ("2000010".equals(intent.getAction())) {
                            SecureService.this.m409a(intent.getStringExtra("key_scan_session"), intent.getStringArrayListExtra("key_scan_pkgnames"), intent.getStringArrayListExtra("key_scan_apkpaths"));
                        } else if ("2000011".equals(intent.getAction())) {
                            SecureService.this.m408a("http://fwd.3g.qq.com:8080/forward.jsp?bid=882", intent.getBooleanExtra("key_with_download_listener", false), intent.getBooleanExtra("key_auto_install", true));
                        }
                        if (SecureService.this.f4927b == 0) {
                            SecureService.this.stopSelf();
                            SecureService.this.m415a();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                        SecureService.this.stopSelf();
                        SecureService.this.m415a();
                    }
                }
            }).start();
        }
    }
}
