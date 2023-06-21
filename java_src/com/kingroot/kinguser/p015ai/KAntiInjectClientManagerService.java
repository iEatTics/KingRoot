package com.kingroot.kinguser.p015ai;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3183ih;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.InterfaceC3150hf;
import com.kingroot.kinguser.InterfaceC3155hk;
import com.kingroot.kinguser.InterfaceC3156hl;
import com.kingroot.kinguser.InterfaceC3157hm;
import com.kingroot.kinguser.InterfaceC3161hq;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.adk;
import com.kingroot.kinguser.ahi;
import com.kingroot.kinguser.ahk;
import com.kingroot.kinguser.ahl;
import com.kingroot.kinguser.ahm;
import com.kingroot.kinguser.akc;
import com.kingroot.kinguser.avl;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgm;
import com.kingroot.kinguser.bhn;
import com.kingroot.kinguser.bho;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.p015ai.receiver.AppLauncherMaskReceiver;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.ai.KAntiInjectClientManagerService */
/* loaded from: classes.dex */
public class KAntiInjectClientManagerService extends C3657tp {
    private static Stub aqa = null;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        synchronized (Stub.class) {
            if (aqa == null) {
                synchronized (Stub.class) {
                    aqa = new Stub();
                }
            }
        }
        return aqa;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: jR */
    public void mo2131jR() {
        super.mo2131jR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: xf */
    public static IAntiInjectClientManager m11700xf() {
        synchronized (Stub.class) {
            if (aqa == null) {
                synchronized (Stub.class) {
                    aqa = new Stub();
                }
            }
        }
        return aqa;
    }

    /* renamed from: com.kingroot.kinguser.ai.KAntiInjectClientManagerService$Stub */
    /* loaded from: classes.dex */
    static class Stub extends IAntiInjectClientManager.Stub {
        private static final long WAIT_REBOOT_TIME = 15000;
        private final RebootStat mRebootStat = bho.m6979S("ai", 0);
        private final Set<String> mProtectPkgs = Collections.synchronizedSet(new HashSet());
        private final bhn mInjectStateCallback = new bhn() { // from class: com.kingroot.kinguser.ai.KAntiInjectClientManagerService.Stub.1
            @Override // com.kingroot.kinguser.bhn
            /* renamed from: a */
            public void mo6983a(RebootStat rebootStat, int i) {
                if (i == 3) {
                    if (rebootStat.currentStep == 4) {
                        m11699b(rebootStat, 2);
                    } else {
                        m11699b(rebootStat, 3);
                    }
                } else if (rebootStat.currentStep == 4) {
                    m11699b(rebootStat, 4);
                } else {
                    m11699b(rebootStat, 5);
                }
            }

            @Override // com.kingroot.kinguser.bhn
            /* renamed from: b */
            public void mo6982b(RebootStat rebootStat) {
                if (Stub.this.isUranusAlive()) {
                    ahi m11749xc = ahi.m11749xc();
                    if (m11749xc.m11750wc() && m11749xc.m11755aI(true)) {
                        m11699b(rebootStat, 0);
                    }
                }
            }

            @Override // com.kingroot.kinguser.bhn
            /* renamed from: c */
            public void mo6981c(RebootStat rebootStat) {
                m11699b(rebootStat, 0);
            }

            @Override // com.kingroot.kinguser.bhn
            /* renamed from: d */
            public void mo6980d(RebootStat rebootStat) {
                m11699b(rebootStat, 1);
            }

            /* renamed from: b */
            private void m11699b(RebootStat rebootStat, int i) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(rebootStat.failCount));
                arrayList.add(Integer.valueOf(rebootStat.failPeekCount));
                arrayList.add(Integer.valueOf(rebootStat.successCount));
                arrayList.add(Integer.valueOf(rebootStat.androidRebootCount + rebootStat.linuxRebootCount));
                arrayList.add(Integer.valueOf(rebootStat.linuxRebootCount));
                arrayList.add(Integer.valueOf(rebootStat.androidRebootCount));
                arrayList.add(Integer.valueOf(rebootStat.currentStep));
                arrayList.add(rebootStat.m1978iO(rebootStat.currentStep));
                ahk.m11737h(i, arrayList);
            }
        };
        private bed mSetAiSwitcherThread = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ai.KAntiInjectClientManagerService.Stub.2
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver;
                int i;
                int i2 = 0;
                super.mo1208a(interfaceC2117a);
                if (interfaceC2117a.mo7445nF() != null) {
                    List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                    if (mo7445nF.size() <= 0 || !(mo7445nF.get(0) instanceof IAntiInjectSwitcherOpObserver)) {
                        iAntiInjectSwitcherOpObserver = null;
                    } else {
                        iAntiInjectSwitcherOpObserver = (IAntiInjectSwitcherOpObserver) mo7445nF.get(0);
                    }
                    int intValue = (mo7445nF.size() <= 1 || !(mo7445nF.get(1) instanceof Integer)) ? 0 : ((Integer) mo7445nF.get(1)).intValue();
                    ahi m11749xc = ahi.m11749xc();
                    if (Stub.this.isUranusAlive() && m11749xc.m11750wc() && m11749xc.m11755aI(true)) {
                        Stub.this.syncWithDaemon(m11749xc);
                        Stub.this.registerUranusAppListener();
                        Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 0);
                        return;
                    }
                    abc m12845qK = abc.m12845qK();
                    if (!m12845qK.isRootPermition(true)) {
                        Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 1);
                        return;
                    }
                    ahl.m11726xl();
                    bho.m6977a(Stub.this.mRebootStat, Stub.this.mInjectStateCallback);
                    synchronized (bho.bqT) {
                        bho.m6976b(Stub.this.mRebootStat, 1, "0");
                        if (m11749xc.m11750wc()) {
                            i = 0;
                        } else {
                            m12845qK.m12846el("/system/xbin/supolicy --live \"allow appdomain { init zygote } unix_stream_socket { connectto read write }\"");
                            String m7102t = bgm.m7102t("mod_aid.jar", "mod_aid", "dr");
                            if (TextUtils.isEmpty(m7102t)) {
                                bho.m6974c(Stub.this.mRebootStat, Stub.this.mInjectStateCallback);
                                Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 5);
                                return;
                            }
                            Bundle bundle = new Bundle();
                            bundle.putString("ModServiceName", "com.kingroot.kinguser.aid1");
                            i = ((InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class)).mo3216a(m7102t, "com.kingroot.kinguser.aid.DaemonMod", "com.kingroot.kinguser:aid", bundle);
                        }
                        bho.m6976b(Stub.this.mRebootStat, 2, "" + i);
                        if (i != 0) {
                            bho.m6974c(Stub.this.mRebootStat, Stub.this.mInjectStateCallback);
                            Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 3);
                            return;
                        }
                        while (!m11749xc.m11750wc()) {
                            try {
                                int i3 = i2 + 1;
                                if (i2 >= 50) {
                                    break;
                                }
                                Thread.sleep(100L);
                                i2 = i3;
                            } catch (InterruptedException e) {
                            }
                        }
                        bho.m6976b(Stub.this.mRebootStat, 3, "0");
                        if (!m11749xc.m11750wc() || !m11749xc.m11755aI(true)) {
                            bho.m6974c(Stub.this.mRebootStat, Stub.this.mInjectStateCallback);
                            Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 4);
                            return;
                        }
                        Stub.this.syncWithDaemon(m11749xc);
                        int startV4 = Stub.this.startV4(intValue);
                        bho.m6976b(Stub.this.mRebootStat, 4, "" + startV4);
                        if (startV4 != 0) {
                            m11749xc.m11755aI(false);
                            try {
                                Thread.sleep(Stub.WAIT_REBOOT_TIME);
                            } catch (InterruptedException e2) {
                            }
                            bho.m6974c(Stub.this.mRebootStat, Stub.this.mInjectStateCallback);
                            Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 2);
                        } else {
                            ahl.m11727xk();
                            Stub.this.onSwitcherOpen(iAntiInjectSwitcherOpObserver, 0);
                            Stub.this.registerUranusAppListener();
                            try {
                                Thread.sleep(Stub.WAIT_REBOOT_TIME);
                            } catch (InterruptedException e3) {
                            }
                            bho.m6973d(Stub.this.mRebootStat, Stub.this.mInjectStateCallback);
                        }
                    }
                }
            }
        });
        InterfaceC3156hl mIUranusClientCallback = new C09563();

        public Stub() {
            bho.m6977a(this.mRebootStat, this.mInjectStateCallback);
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public boolean getSwitcher() {
            ahi m11749xc = ahi.m11749xc();
            return isUranusAlive() && m11749xc.m11750wc() && m11749xc.getSwitcher();
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void addProtectedPackages(List<String> list) {
            this.mProtectPkgs.addAll(list);
            ahi.m11749xc().m11754ai(list);
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void removeProtectedPackages(List<String> list) {
            this.mProtectPkgs.removeAll(list);
            ahi.m11749xc().m11753aj(list);
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public List<AntiInjectLogModel> getAllLogs() {
            return ahi.m11749xc().getAllLogs();
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void setSwitcher(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver) {
            if (z) {
                beg.m7461Zj().m7454a(this.mSetAiSwitcherThread, iAntiInjectSwitcherOpObserver);
                return;
            }
            ahi.m11749xc().m11755aI(false);
            onSwitcherClosed(iAntiInjectSwitcherOpObserver);
            unregisterUranusAppListener();
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void setSwitcherTest(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver, int i) {
            if (z) {
                beg.m7461Zj().m7454a(this.mSetAiSwitcherThread, Integer.valueOf(i));
                return;
            }
            ahi.m11749xc().m11755aI(false);
            onSwitcherClosed(iAntiInjectSwitcherOpObserver);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSwitcherOpen(IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver, int i) {
            if (iAntiInjectSwitcherOpObserver != null) {
                try {
                    iAntiInjectSwitcherOpObserver.onSwitcherOpen(i);
                } catch (RemoteException e) {
                }
            }
        }

        private void onSwitcherClosed(IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver) {
            if (iAntiInjectSwitcherOpObserver != null) {
                try {
                    iAntiInjectSwitcherOpObserver.onSwitcherClosed();
                } catch (RemoteException e) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int startV4(int i) {
            if (i == 2) {
                return 33751040;
            }
            return ((InterfaceC3161hq) C3183ih.m3501a(InterfaceC3161hq.class)).start(2);
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public RebootStat getRebootStat() {
            return this.mRebootStat;
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void registerClient() {
            ahi m11749xc = ahi.m11749xc();
            if (getSwitcher()) {
                m11749xc.registerClient();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void syncWithDaemon(ahi ahiVar) {
            String str;
            if (ahiVar.m11750wc()) {
                String str2 = "";
                String str3 = "";
                String str4 = "";
                String str5 = "";
                avl m8824RC = avl.m8824RC();
                Iterator<String> it = m8824RC.m8820RG().iterator();
                while (true) {
                    str = str2;
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    if (next.length() + str.length() + "|".length() > 1023) {
                        break;
                    }
                    str2 = str + next + "|";
                }
                for (String str6 : m8824RC.m8818RI()) {
                    if (str6.length() + str3.length() + "|".length() > 1023) {
                        break;
                    }
                    str3 = str3 + str6 + "|";
                }
                for (String str7 : m8824RC.m8821RF()) {
                    if (str7.length() + str4.length() + "|".length() > 1023) {
                        break;
                    }
                    str4 = str4 + str7 + "|";
                }
                for (String str8 : m8824RC.m8819RH()) {
                    if (str8.length() + str5.length() + "|".length() > 1023) {
                        break;
                    }
                    str5 = str5 + str8 + "|";
                }
                ahiVar.m11756a(str, str3, str4, str5);
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(m8824RC.m8822RE());
                ahiVar.m11752ak(arrayList);
                akc m11313Ai = akc.m11313Ai();
                arrayList.clear();
                this.mProtectPkgs.clear();
                Set<String> Ak = m11313Ai.m11312Ak();
                arrayList.addAll(Ak);
                this.mProtectPkgs.addAll(Ak);
                ahiVar.m11754ai(arrayList);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isUranusAlive() {
            InterfaceC3161hq interfaceC3161hq = (InterfaceC3161hq) C3183ih.m3501a(InterfaceC3161hq.class);
            return interfaceC3161hq != null && interfaceC3161hq.mo3267K(2);
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void syncListWithDaemon() {
            syncWithDaemon(ahi.m11749xc());
        }

        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
        public void notifyManuallyReboot() {
            ((InterfaceC3150hf) C3183ih.m3501a(InterfaceC3150hf.class)).notifyManuallyReboot();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void registerUranusAppListener() {
            InterfaceC3161hq interfaceC3161hq = (InterfaceC3161hq) C3183ih.m3501a(InterfaceC3161hq.class);
            if (interfaceC3161hq != null) {
                interfaceC3161hq.unregisterClientObserver(this.mIUranusClientCallback);
                interfaceC3161hq.registerClientObserver(this.mIUranusClientCallback);
            }
        }

        private void unregisterUranusAppListener() {
            InterfaceC3161hq interfaceC3161hq = (InterfaceC3161hq) C3183ih.m3501a(InterfaceC3161hq.class);
            if (interfaceC3161hq != null) {
                interfaceC3161hq.unregisterClientObserver(this.mIUranusClientCallback);
            }
        }

        /* renamed from: com.kingroot.kinguser.ai.KAntiInjectClientManagerService$Stub$3 */
        /* loaded from: classes.dex */
        class C09563 implements InterfaceC3156hl {
            private bed aqc = new bed(bem.MEDIUM, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.ai.KAntiInjectClientManagerService.Stub.3.2
                @Override // com.kingroot.kinguser.bek
                /* renamed from: a */
                public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                    String str;
                    super.mo1208a(interfaceC2117a);
                    List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                    if (mo7445nF != null && mo7445nF.size() != 0) {
                        String str2 = (String) mo7445nF.get(0);
                        if (ProcessUtils.m13136q(KApplication.m13453ge(), str2)) {
                            C3952zh m1312pq = C3952zh.m1312pq();
                            try {
                                ApplicationInfo applicationInfo = m1312pq.getApplicationInfo(str2, 0);
                                str = (String) (applicationInfo != null ? m1312pq.getApplicationLabel(applicationInfo) : "");
                            } catch (PackageManager.NameNotFoundException e) {
                                str = "";
                            }
                            Intent intent = new Intent(KApplication.m13453ge(), AppLauncherMaskReceiver.class);
                            if (!ahm.m11714xs().m11719fR(str2)) {
                                intent.putExtra("extra_app_name_string", str);
                                KApplication.m13453ge().sendBroadcast(intent);
                                ahm.m11714xs().m11718fS(str2);
                            } else if (adk.m12539b(ahm.m11714xs().m11717fT(str2), System.currentTimeMillis(), 86400000L)) {
                                intent.putExtra("extra_app_name_string", str);
                                intent.putExtra("extra_is_only_show_toast", true);
                                KApplication.m13453ge().sendBroadcast(intent);
                                ahm.m11714xs().m11715j(str2, System.currentTimeMillis());
                            }
                        }
                    }
                }
            });

            C09563() {
            }

            @Override // com.kingroot.kinguser.InterfaceC3156hl
            /* renamed from: a */
            public void mo3610a(final InterfaceC3155hk interfaceC3155hk) {
                beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.ai.KAntiInjectClientManagerService.Stub.3.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        String[] packagesForUid = C3952zh.m1312pq().getPackagesForUid(interfaceC3155hk.getUid());
                        if (packagesForUid != null && packagesForUid.length != 0 && Stub.this.mProtectPkgs.contains(interfaceC3155hk.mo3611aY()) && abd.m12839qb() < 21) {
                            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ai.KAntiInjectClientManagerService.Stub.3.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(interfaceC3155hk.mo3611aY());
                                    beg.m7461Zj().m7456a(C09563.this.aqc, arrayList);
                                }
                            }, 800L);
                        }
                    }
                }));
            }

            @Override // com.kingroot.kinguser.InterfaceC3156hl
            /* renamed from: b */
            public void mo3609b(InterfaceC3155hk interfaceC3155hk) {
            }
        }
    }
}
