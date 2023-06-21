package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.urlcheck.aidl.ICallback;
import com.kingroot.kinguser.urlcheck.aidl.IDaemonService;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import com.kingroot.master.app.KUApplication;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bfq {
    private static cce<bfq> bnd;
    private static final Map bnf = new HashMap();
    public IDaemonService bne;
    bed bng;

    static {
        try {
            bnf.put("build", String.valueOf(KUApplication.m13444hZ()));
            bnf.put("lc", KUApplication.m13443ia());
            bnf.put("product", String.valueOf(KUApplication.m13445hY()));
            bnf.put("softversion", KUApplication.m13454dG());
            bnf.put("log", String.valueOf(KUApplication.m13437ih()));
            bnf.put("serveraddr", KUApplication.m13426is() ? "mazutest.3g.qq.com" : "mazu.3g.qq.com");
            bnf.put("channel", "106417");
            bnf.put("pkgname", KApplication.m13453ge().getPackageName());
            bnf.put("host_uid", String.valueOf(KApplication.m13453ge().getApplicationInfo().uid));
        } catch (Exception e) {
        }
        bnd = new cce<bfq>() { // from class: com.kingroot.kinguser.bfq.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: aaG */
            public bfq create() {
                return new bfq();
            }
        };
    }

    private bfq() {
        this.bng = new bed(new bek() { // from class: com.kingroot.kinguser.bfq.4
            /* JADX WARN: Removed duplicated region for block: B:110:0x0175 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:112:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:17:0x005e  */
            /* JADX WARN: Removed duplicated region for block: B:54:0x010e  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x015c  */
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                ICallback iCallback;
                boolean z;
                int i;
                ICallback iCallback2;
                boolean z2;
                int enable;
                super.mo1208a(interfaceC2117a);
                C2216a c2216a = new C2216a();
                try {
                    List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                    z = ((Boolean) mo7445nF.get(0)).booleanValue();
                    try {
                        iCallback = mo7445nF.size() > 1 ? ICallback.Stub.asInterface((IBinder) mo7445nF.get(1)) : null;
                        try {
                            try {
                                bfq.bnf.put("imei", aay.m12881al(KApplication.m13453ge()));
                                if (bfq.this.aaE() != null) {
                                    if (z) {
                                        try {
                                            c2216a.bni = 3;
                                        } catch (RemoteException e) {
                                            enable = 0;
                                            i = enable;
                                            if (i == 0) {
                                            }
                                            if (z) {
                                            }
                                            if (iCallback != null) {
                                            }
                                            bfq.this.aaC();
                                        }
                                    }
                                    enable = bfq.this.bne.enable(z, bfq.bnf);
                                    if (z) {
                                        try {
                                            c2216a.bnk = enable;
                                        } catch (RemoteException e2) {
                                            i = enable;
                                            if (i == 0) {
                                            }
                                            if (z) {
                                            }
                                            if (iCallback != null) {
                                            }
                                            bfq.this.aaC();
                                        } catch (Throwable th) {
                                            i = enable;
                                            th = th;
                                            if (z) {
                                            }
                                            if (iCallback != null) {
                                            }
                                            throw th;
                                        }
                                    }
                                    i = enable;
                                } else {
                                    i = bfq.this.m7246a(z, c2216a);
                                }
                                if (i == 0) {
                                    if (!z) {
                                        if (z) {
                                            ady.m12308tK().m12328a(bfw.aaS().aaU(), c2216a.bni, c2216a.bnj, c2216a.bnk, c2216a.bnl);
                                        }
                                        if (iCallback != null) {
                                            try {
                                                iCallback.onCallback(i);
                                                return;
                                            } catch (Exception e3) {
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    try {
                                        c2216a.bni = 4;
                                        boolean m7250a = bfq.this.m7250a(c2216a);
                                        if (!m7250a) {
                                            m7250a = bfq.this.m7250a(c2216a);
                                        }
                                        if (m7250a) {
                                            c2216a.bni = 5;
                                            try {
                                                bfr.aaH().m7236dO(true);
                                                bfq.this.m7242bQ(bfs.aaI().aaJ());
                                            } catch (Exception e4) {
                                            }
                                            if (z) {
                                                ady.m12308tK().m12328a(bfw.aaS().aaU(), c2216a.bni, c2216a.bnj, c2216a.bnk, c2216a.bnl);
                                            }
                                            if (iCallback != null) {
                                                try {
                                                    iCallback.onCallback(i);
                                                    return;
                                                } catch (Exception e5) {
                                                    return;
                                                }
                                            }
                                            return;
                                        }
                                        i = -3;
                                        if (bfq.this.aaE() != null) {
                                            bfq.this.bne.enable(false, null);
                                            if (z) {
                                                ady.m12308tK().m12328a(bfw.aaS().aaU(), c2216a.bni, c2216a.bnj, c2216a.bnk, c2216a.bnl);
                                            }
                                            if (iCallback != null) {
                                                try {
                                                    iCallback.onCallback(-3);
                                                    return;
                                                } catch (Exception e6) {
                                                    return;
                                                }
                                            }
                                            return;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (z) {
                                            ady.m12308tK().m12328a(bfw.aaS().aaU(), c2216a.bni, c2216a.bnj, c2216a.bnk, c2216a.bnl);
                                        }
                                        if (iCallback != null) {
                                            try {
                                                iCallback.onCallback(i);
                                            } catch (Exception e7) {
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                if (z) {
                                    ady.m12308tK().m12328a(bfw.aaS().aaU(), c2216a.bni, c2216a.bnj, c2216a.bnk, c2216a.bnl);
                                }
                                if (iCallback != null) {
                                    try {
                                        iCallback.onCallback(i);
                                    } catch (Exception e8) {
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                i = 0;
                            }
                        } catch (Exception e9) {
                            iCallback2 = iCallback;
                            z2 = z;
                            if (z2) {
                                ady.m12308tK().m12328a(bfw.aaS().aaU(), c2216a.bni, c2216a.bnj, c2216a.bnk, c2216a.bnl);
                            }
                            if (iCallback2 != null) {
                                try {
                                    iCallback2.onCallback(-4);
                                } catch (Exception e10) {
                                }
                            }
                            bfq.this.aaC();
                        }
                    } catch (Exception e11) {
                        iCallback2 = null;
                        z2 = z;
                    } catch (Throwable th4) {
                        th = th4;
                        iCallback = null;
                        i = 0;
                    }
                } catch (Exception e12) {
                    iCallback2 = null;
                    z2 = true;
                } catch (Throwable th5) {
                    th = th5;
                    iCallback = null;
                    z = true;
                    i = 0;
                }
                bfq.this.aaC();
            }
        });
    }

    public static bfq aaB() {
        return bnd.get();
    }

    /* renamed from: a */
    public void m7245a(boolean z, ICallback iCallback) {
        beg m7461Zj = beg.m7461Zj();
        bed bedVar = this.bng;
        Object[] objArr = new Object[2];
        objArr[0] = Boolean.valueOf(z);
        objArr[1] = iCallback == null ? null : iCallback.asBinder();
        m7461Zj.m7454a(bedVar, objArr);
    }

    public void addRule(UrlCheckRule urlCheckRule) {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                aaE.addRule(urlCheckRule);
            }
            bfs.aaI().addRule(urlCheckRule);
        } catch (Exception e) {
        }
    }

    public void deleteRule(UrlCheckRule urlCheckRule) {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                aaE.deleteRule(urlCheckRule);
            }
            bfs.aaI().deleteRule(urlCheckRule);
        } catch (Exception e) {
        }
    }

    public void aaz() {
        beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bfq.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    if (bfq.this.aaE() == null) {
                        bfq.this.aaC();
                    } else if (bfq.this.bne.isEnable()) {
                        if (!bfq.this.m7250a((C2216a) null) && !bfq.this.m7250a((C2216a) null)) {
                            bfq.this.bne.enable(false, null);
                        }
                    } else {
                        bfq.this.aaC();
                    }
                } catch (Exception e) {
                    bfq.this.aaC();
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaC() {
        String str;
        VTCmdResult m12846el = abc.m12845qK().m12846el("iptables -L OUTPUT -t nat");
        if (m12846el != null && m12846el.success() && (str = m12846el.mStdOut) != null && str.contains("REDIRECT")) {
            abc.m12845qK().m12846el("iptables -F OUTPUT -t nat");
        }
    }

    public String getSharkGuid() {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                return aaE.getSharkGuid();
            }
        } catch (Exception e) {
        }
        return "";
    }

    /* renamed from: bP */
    public void m7243bP(List<UrlCheckRule> list) {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                aaE.syncCloudRuleList(list);
            }
        } catch (Exception e) {
        }
    }

    public int aaD() {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                return aaE.getProxyServerPort();
            }
        } catch (Exception e) {
        }
        return -1;
    }

    /* renamed from: bQ */
    public void m7242bQ(List<UrlCheckRule> list) {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                aaE.syncUserRuleList(list);
            }
        } catch (Exception e) {
        }
    }

    public boolean isEnable() {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                return aaE.isEnable();
            }
        } catch (Exception e) {
        }
        return false;
    }

    private int getProxyServerPort() {
        try {
            IDaemonService aaE = aaE();
            if (aaE != null) {
                return aaE.getProxyServerPort();
            }
        } catch (Exception e) {
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m7246a(boolean z, C2216a c2216a) {
        int i = 0;
        try {
            if (aaE() == null) {
                if (z) {
                    c2216a.bni = 1;
                }
                String m2023k = C3702un.m2023k("mod_hp", "", ".jar");
                if (TextUtils.isEmpty(m2023k)) {
                    return -1;
                }
                InterfaceC3157hm interfaceC3157hm = (InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class);
                Bundle bundle = new Bundle();
                bundle.putString("key_service_name", "com.king.proxy.daemon11");
                bundle.putString("743254cd11adb5dd8c46257da5b56878", "c0f53745be5bdcfa7ea880959dcf6a35");
                if (z) {
                    c2216a.bni = 2;
                }
                i = interfaceC3157hm.mo3216a(m2023k, "com.king.proxy.mod.DaemonMod", "com.king.proxy:urlcheck", bundle);
                if (z) {
                    c2216a.bnj = i;
                }
                if (i != 0) {
                    return i;
                }
            }
            if (z && aaE() != null) {
                c2216a.bni = 3;
                int enable = this.bne.enable(z, bnf);
                c2216a.bnk = enable;
                return enable;
            }
            return i;
        } catch (Exception e) {
            return -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r0.asBinder().pingBinder() != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IDaemonService aaE() {
        IDaemonService iDaemonService = this.bne;
        if (iDaemonService != null) {
            try {
                if (iDaemonService.asBinder().isBinderAlive()) {
                }
            } catch (Exception e) {
            }
        }
        IDaemonService iDaemonService2 = this.bne;
        if (iDaemonService2 != null) {
            try {
            } catch (Exception e2) {
                iDaemonService = iDaemonService2;
            }
            if (iDaemonService2.asBinder().isBinderAlive() && iDaemonService2.asBinder().pingBinder()) {
                iDaemonService = iDaemonService2;
                return iDaemonService;
            }
        }
        IBinder service = aan.getService("com.king.proxy.daemon11");
        if (service == null) {
            service = ((InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class)).getDaemonService("com.king.proxy.daemon11");
        }
        if (service == null) {
            iDaemonService = null;
            this.bne = null;
        } else {
            iDaemonService = IDaemonService.Stub.asInterface(service);
            this.bne = iDaemonService;
            this.bne.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.kingroot.kinguser.bfq.3
                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    bfq.this.bne.asBinder().unlinkToDeath(this, 0);
                    bfq.this.bne = null;
                    bfq.this.m7245a(bfw.aaS().aaU(), (ICallback) null);
                }
            }, 0);
        }
        return iDaemonService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: a */
    public boolean m7250a(C2216a c2216a) {
        HttpURLConnection httpURLConnection;
        int i;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3;
        int i2;
        int proxyServerPort;
        int responseCode;
        int responseCode2;
        HttpURLConnection httpURLConnection4 = null;
        if (C3748vb.m1917S(KApplication.m13453ge())) {
            try {
                proxyServerPort = getProxyServerPort();
            } catch (Exception e) {
                httpURLConnection2 = null;
                httpURLConnection3 = null;
                i2 = 0;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = null;
                i = 0;
            }
            if (proxyServerPort <= 0) {
                if (c2216a != null) {
                    c2216a.bnl = 1;
                }
                if (0 != 0) {
                    httpURLConnection4.disconnect();
                }
                if (0 != 0) {
                    httpURLConnection4.disconnect();
                }
                return false;
            }
            try {
                URL url = new URL("http://mazu.3g.qq.com");
                try {
                    httpURLConnection3 = (HttpURLConnection) url.openConnection();
                    try {
                        httpURLConnection3.setConnectTimeout(XCallback.PRIORITY_HIGHEST);
                        responseCode = httpURLConnection3.getResponseCode();
                        i = 4;
                        try {
                            httpURLConnection2 = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("127.0.0.1", proxyServerPort)));
                        } catch (Exception e2) {
                            httpURLConnection2 = null;
                            i2 = 4;
                        } catch (Throwable th2) {
                            httpURLConnection = httpURLConnection3;
                            th = th2;
                        }
                    } catch (Exception e3) {
                        i2 = 3;
                        httpURLConnection2 = null;
                    } catch (Throwable th3) {
                        i = 3;
                        httpURLConnection = httpURLConnection3;
                        th = th3;
                    }
                } catch (Exception e4) {
                    httpURLConnection3 = null;
                    i2 = 3;
                    httpURLConnection2 = null;
                } catch (Throwable th4) {
                    th = th4;
                    i = 3;
                    httpURLConnection = null;
                }
            } catch (Exception e5) {
                httpURLConnection2 = null;
                i2 = 2;
                httpURLConnection3 = null;
            } catch (Throwable th5) {
                i = 2;
                th = th5;
                httpURLConnection = null;
            }
            try {
                httpURLConnection2.setConnectTimeout(XCallback.PRIORITY_HIGHEST);
                responseCode2 = httpURLConnection2.getResponseCode();
            } catch (Exception e6) {
                i2 = 4;
                if (c2216a != null) {
                    c2216a.bnl = i2;
                }
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return false;
            } catch (Throwable th6) {
                httpURLConnection4 = httpURLConnection2;
                httpURLConnection = httpURLConnection3;
                th = th6;
                if (c2216a != null) {
                    c2216a.bnl = i;
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (httpURLConnection4 != null) {
                    httpURLConnection4.disconnect();
                }
                throw th;
            }
            if (responseCode2 == responseCode) {
                if (c2216a != null) {
                    c2216a.bnl = 0;
                }
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return true;
            }
            int i3 = (responseCode2 * 1000) + responseCode;
            if (c2216a != null) {
                c2216a.bnl = i3;
            }
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bfq$a */
    /* loaded from: classes.dex */
    public class C2216a {
        public int bni;
        public int bnj;
        public int bnk;
        public long bnl;

        public C2216a() {
        }
    }
}
