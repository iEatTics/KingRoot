package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.kingroot.loader.common.KlConst;
import com.tencent.securemodule.api.AppInfo;
import com.tencent.securemodule.impl.BaseReceiver;
import com.tencent.securemodule.impl.SecureService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bvy extends bvx {
    private static bvy bQL = null;

    /* renamed from: f */
    private static int f2122f = 0;

    /* renamed from: a */
    private Context f2123a;

    /* renamed from: b */
    private boolean f2124b = false;
    private C2639a bQM;
    private C2640b bQN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bvy$a */
    /* loaded from: classes.dex */
    public class C2639a extends BaseReceiver {

        /* renamed from: b */
        private Map<String, C2641c> f2125b;

        /* renamed from: c */
        private final Object f2126c;

        private C2639a() {
            this.f2125b = new HashMap();
            this.f2126c = new Object();
        }

        /* renamed from: a */
        public void m5356a(String str, C2641c c2641c) {
            if (c2641c == null) {
                return;
            }
            synchronized (this.f2126c) {
                this.f2125b.put(str, c2641c);
            }
        }

        @Override // com.tencent.securemodule.impl.BaseReceiver
        /* renamed from: f */
        public void mo416f(Context context, Intent intent) {
            String stringExtra;
            C2641c remove;
            String action = intent.getAction();
            cdo.m4816d("SecureModuleService", "doOnRecv(), action: " + action);
            if (action == null || (stringExtra = intent.getStringExtra("key_scan_session")) == null) {
                return;
            }
            synchronized (this.f2126c) {
                remove = this.f2125b.remove(stringExtra);
            }
            if ("2000030".equals(action)) {
                List list = (List) intent.getSerializableExtra("key_risk_info");
                List list2 = (List) intent.getSerializableExtra("key_unnkow_info");
                if (remove != null) {
                    remove.m5352l(list, list2);
                }
            } else if ("2000031".equals(action)) {
                int intExtra = intent.getIntExtra("key_errcode", 0);
                if (remove != null) {
                    remove.m5355a(intExtra);
                }
            }
            synchronized (this.f2126c) {
                if (this.f2125b.isEmpty() && bvy.this.bQM != null) {
                    bvy.this.f2123a.unregisterReceiver(bvy.this.bQM);
                    bvy.this.bQM = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bvy$b */
    /* loaded from: classes.dex */
    public class C2640b extends BaseReceiver {
        private bvu bQP;

        public C2640b(bvu bvuVar) {
            this.bQP = bvuVar;
        }

        @Override // com.tencent.securemodule.impl.BaseReceiver
        /* renamed from: f */
        public void mo416f(Context context, Intent intent) {
            Bundle bundleExtra;
            if ("2000024".equals(intent.getAction())) {
                if (this.bQP != null) {
                    this.bQP.mo3881NF();
                }
            } else if ("2000025".equals(intent.getAction())) {
                if (this.bQP == null || (bundleExtra = intent.getBundleExtra(KlConst.PLUGIN_DATA_DIR_NAME)) == null) {
                    return;
                }
                this.bQP.mo3879a(bundleExtra.getInt("key_progress"), bundleExtra.getLong("key_completed"), bundleExtra.getLong("key_total"));
            } else if ("2000027".equals(intent.getAction())) {
                if (this.bQP != null) {
                    Bundle bundleExtra2 = intent.getBundleExtra(KlConst.PLUGIN_DATA_DIR_NAME);
                    this.bQP.mo3878io(bundleExtra2 != null ? bundleExtra2.getString("key_path") : null);
                }
                bvy.this.m5371a();
            } else if ("2000026".equals(intent.getAction())) {
                if (this.bQP != null) {
                    this.bQP.mo3880NG();
                }
                bvy.this.m5371a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bvy$c */
    /* loaded from: classes.dex */
    public class C2641c {
        private bvw bQQ;
        private bvv bQR;

        private C2641c(Object obj) {
            this.bQQ = null;
            this.bQR = null;
            if (obj == null) {
                return;
            }
            if (obj instanceof bvw) {
                this.bQQ = (bvw) obj;
            } else if (!(obj instanceof bvv)) {
                throw new RuntimeException("ListenerAdapter(), invalid listener type: " + obj);
            } else {
                this.bQR = (bvv) obj;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m5355a(int i) {
            if (this.bQQ != null) {
                this.bQQ.onFinish(i);
            } else if (this.bQR != null) {
                this.bQR.onFinish(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public void m5352l(List<AppInfo> list, List<AppInfo> list2) {
            if (this.bQQ != null) {
                cdo.m4816d("SecureModuleService", "V2, found risk or unknow");
                this.bQQ.mo3874f(list, list2);
            } else if (this.bQR != null) {
                if (list == null || list.size() <= 0) {
                    cdo.m4816d("SecureModuleService", "V1, no risk, callback onFinish");
                    this.bQR.onFinish(0);
                    return;
                }
                cdo.m4816d("SecureModuleService", "V1, with risk, callback onRiskFoud");
                this.bQR.m5372ct(list);
            }
        }
    }

    private bvy(Context context) {
        this.f2123a = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5371a() {
        if (this.bQN != null) {
            this.f2123a.unregisterReceiver(this.bQN);
            this.bQN = null;
        }
    }

    /* renamed from: a */
    private void m5364a(List<String> list, List<String> list2, Object obj) {
        String m5358c = m5358c();
        synchronized (this) {
            if (this.bQM == null) {
                this.bQM = new C2639a();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("2000030");
                intentFilter.addAction("2000031");
                this.f2123a.registerReceiver(this.bQM, intentFilter);
            }
            if (obj != null) {
                this.bQM.m5356a(m5358c, new C2641c(obj));
            }
        }
        Intent intent = new Intent(this.f2123a, SecureService.class);
        intent.setPackage(this.f2123a.getPackageName());
        intent.setAction("2000010");
        intent.putExtra("key_scan_session", m5358c);
        if (list != null && list.size() > 0) {
            intent.putStringArrayListExtra("key_scan_pkgnames", (ArrayList) list);
        }
        if (list2 != null && list2.size() > 0) {
            intent.putStringArrayListExtra("key_scan_apkpaths", (ArrayList) list2);
        }
        this.f2123a.startService(intent);
    }

    /* renamed from: b */
    private void m5363b() {
        if (!this.f2124b) {
            throw new RuntimeException("You must invoke 'register' firstly!");
        }
    }

    /* renamed from: bR */
    public static bvy m5359bR(Context context) {
        if (bQL == null) {
            synchronized (bvy.class) {
                if (bQL == null) {
                    bQL = new bvy(context);
                }
            }
        }
        return bQL;
    }

    /* renamed from: c */
    private static String m5358c() {
        if (f2122f + 1 >= Integer.MAX_VALUE) {
            f2122f = 0;
        }
        StringBuilder append = new StringBuilder().append("");
        int i = f2122f + 1;
        f2122f = i;
        return append.append(i).append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR).append(System.currentTimeMillis()).toString();
    }

    @Override // com.kingroot.kinguser.bvx
    /* renamed from: a */
    public int mo5370a(bng bngVar) {
        int i = 0;
        synchronized (this) {
            if (bngVar == null) {
                i = -6;
            } else if (!this.f2124b) {
                this.f2124b = true;
                ccu.m4892b(this.f2123a, 10001, bngVar.packageName);
                ccu.m4892b(this.f2123a, 10002, bngVar.versionName);
                ccu.m4890d(this.f2123a, 10003, bngVar.bDs);
            }
        }
        return i;
    }

    @Override // com.kingroot.kinguser.bvx
    /* renamed from: a */
    public int mo5369a(bvu bvuVar, boolean z) {
        m5363b();
        if (this.bQN != null) {
            return -1;
        }
        if (bvuVar != null) {
            this.bQN = new C2640b(bvuVar);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("2000024");
            intentFilter.addAction("2000025");
            intentFilter.addAction("2000027");
            intentFilter.addAction("2000026");
            this.f2123a.registerReceiver(this.bQN, intentFilter);
        }
        Intent intent = new Intent("2000011");
        intent.setPackage(this.f2123a.getPackageName());
        intent.setClass(this.f2123a, SecureService.class);
        intent.putExtra("key_with_download_listener", bvuVar != null);
        intent.putExtra("key_auto_install", z);
        this.f2123a.startService(intent);
        return 0;
    }

    @Override // com.kingroot.kinguser.bvx
    /* renamed from: a */
    public void mo5368a(bvw bvwVar) {
        m5363b();
        m5364a(null, null, bvwVar);
    }

    @Override // com.kingroot.kinguser.bvx
    /* renamed from: a */
    public void mo5365a(List<String> list, bvw bvwVar) {
        m5363b();
        if (list == null || list.size() == 0) {
            return;
        }
        m5364a(list, null, bvwVar);
    }

    @Override // com.kingroot.kinguser.bvx
    /* renamed from: b */
    public void mo5361b(List<String> list, bvw bvwVar) {
        m5363b();
        if (list == null || list.size() == 0) {
            return;
        }
        m5364a(null, list, bvwVar);
    }

    @Override // com.kingroot.kinguser.bvx
    /* renamed from: bQ */
    public int mo5360bQ(Context context) {
        m5363b();
        try {
            Intent intent = new Intent();
            intent.addFlags(268435456);
            intent.setAction("com.tencent.action.virus_scan");
            context.startActivity(intent);
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    @Override // com.kingroot.kinguser.bvx
    public boolean isWeSecureInstalled() {
        m5363b();
        AppInfo m4872W = cdb.m4872W(this.f2123a, "com.tencent.qqpimsecure");
        return m4872W != null && "00B1208638DE0FCD3E920886D658DAF6".equals(m4872W.certMd5) && m4872W.versionCode >= 77;
    }
}
