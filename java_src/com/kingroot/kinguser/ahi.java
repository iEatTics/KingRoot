package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.aaz;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ahi;
import com.kingroot.kinguser.ahk;
import com.kingroot.kinguser.aii;
import com.kingroot.kinguser.bfn;
import com.kingroot.kinguser.bgh;
import com.kingroot.kinguser.bhf;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.p015ai.IAntiInjectClient;
import com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class ahi {
    private static volatile ahi apO;
    private static final Object apQ = new Object();
    private volatile IAntiInjectDaemonManager apP = null;
    private final List<AntiInjectLogModel> apS = new ArrayList();
    private IAntiInjectClient.Stub apT = new IAntiInjectClient.Stub() { // from class: com.kingroot.kinguser.ai.AntiInjectDaemonManager$1
        private static final int CHECK_ARRAY_LONG = 5;
        private static final int CHECK_FUNCTION = 2;
        private static final int CHECK_PROCESS = 3;
        private static final int CHECK_SOPATH = 4;
        private static final int CHECK_URANUS = 0;
        private static final int CHECK_VERSION = 1;

        @Override // com.kingroot.kinguser.p015ai.IAntiInjectClient
        public void addLog(String str) {
            AntiInjectLogModel antiInjectLogModel = new AntiInjectLogModel(str);
            if (antiInjectLogModel.isValid()) {
                if (!antiInjectLogModel.apZ) {
                    ahi.this.m11751d(antiInjectLogModel);
                    if (aii.m11642xL().m11639xO()) {
                        adm.m12480st().m12516a(antiInjectLogModel);
                    }
                }
                if (antiInjectLogModel.processName.equals("zygote")) {
                    logUranusDefenseEvent(antiInjectLogModel.apZ ? false : true, antiInjectLogModel.version, antiInjectLogModel.uid, antiInjectLogModel.processName, antiInjectLogModel.apW, antiInjectLogModel.apX, antiInjectLogModel.apY);
                } else if (antiInjectLogModel.processName.contains("tencent") || antiInjectLogModel.processName.contains("kingroot")) {
                    if (!antiInjectLogModel.apZ || (!antiInjectLogModel.apY.contains("com.lbe.security") && !antiInjectLogModel.apY.contains("com.kingroot.master"))) {
                        logUranusDefenseEvent(antiInjectLogModel.apZ ? false : true, antiInjectLogModel.version, antiInjectLogModel.uid, antiInjectLogModel.processName, antiInjectLogModel.apW, antiInjectLogModel.apX, antiInjectLogModel.apY);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.p015ai.IAntiInjectClient
        public void setHookStatus(String str) {
            if (!TextUtils.isEmpty(str)) {
                String[] split = str.split("&&");
                if (split.length >= 5 && split[0].equals("uranus") && split[3].equals("zygote")) {
                    logUranusDefenseState(true, split[1], split[2], split[3], split[4]);
                }
            }
        }

        private void logUranusDefenseEvent(boolean z, String str, int i, String str2, String str3, String str4, String str5) {
            long j;
            Context ge = KUApplication.m13453ge();
            LinkedList linkedList = new LinkedList();
            linkedList.add(str);
            String m7113m = bgh.m7113m(ge, i);
            if (!TextUtils.isEmpty(m7113m)) {
                linkedList.add(m7113m);
            } else {
                linkedList.add(Integer.valueOf(i));
            }
            linkedList.add(str2);
            String str6 = "";
            String str7 = "";
            String[] m7259lc = bfn.m7259lc(str4);
            if (m7259lc != null) {
                str4 = m7259lc[0];
                str6 = m7259lc[1];
                str7 = m7259lc[2];
            }
            linkedList.add(str3);
            linkedList.add(str4);
            linkedList.add(str6);
            linkedList.add(str7);
            String str8 = "";
            String str9 = "";
            String[] m7259lc2 = bfn.m7259lc(str5);
            if (m7259lc2 != null) {
                str8 = m7259lc2[1];
                str9 = m7259lc2[2];
            }
            linkedList.add(str5);
            linkedList.add(str8);
            linkedList.add(str9);
            LinkedList linkedList2 = new LinkedList();
            bhf bhfVar = new bhf();
            try {
                j = Long.parseLong(str8);
            } catch (NumberFormatException e) {
                j = -1;
            }
            String m7114lm = bgh.m7114lm(str5);
            String str10 = null;
            long j2 = -1;
            if (!TextUtils.isEmpty(m7114lm)) {
                try {
                    PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(m7114lm, 64);
                    str10 = aaz.m12874b(packageInfo);
                    if (packageInfo.applicationInfo != null) {
                        j2 = new File(packageInfo.applicationInfo.sourceDir).length();
                    }
                } catch (Throwable th) {
                }
            }
            String str11 = null;
            int i2 = -1;
            try {
                PackageInfo packageInfo2 = C3952zh.m1312pq().getPackageInfo(m7113m, 0);
                str11 = packageInfo2.versionName;
                i2 = packageInfo2.versionCode;
            } catch (PackageManager.NameNotFoundException e2) {
            }
            bhfVar.m7018lv(str5).m7038cz(j).m7017lw(str9).m7016lx(m7114lm).m7015ly(str10).m7041cA(j2).m7014lz(str2).m7024lA(m7113m).m7023lB(str11).m7031iL(i2);
            linkedList2.add(bhfVar.acp());
            linkedList2.add(str);
            linkedList2.add(str3);
            linkedList2.add(str6);
            linkedList2.add(str7);
            ahk.m11745a(z ? 0 : 1, linkedList, linkedList2);
        }

        private void logUranusDefenseState(boolean z, String str, String str2, String str3, String str4) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(str);
            linkedList.add(str2);
            linkedList.add(str3);
            linkedList.add(str4);
            ahk.m11744a(z, linkedList);
        }
    };
    private final ahj apR = new ahj(KUApplication.m13453ge());

    /* renamed from: xc */
    public static ahi m11749xc() {
        if (apO == null) {
            synchronized (ahi.class) {
                if (apO == null) {
                    apO = new ahi();
                }
            }
        }
        return apO;
    }

    private ahi() {
        synchronized (this.apS) {
            this.apS.addAll(this.apR.getAllLogs());
        }
    }

    /* renamed from: wc */
    public boolean m11750wc() {
        return m11748xd() != null;
    }

    /* renamed from: xd */
    private IAntiInjectDaemonManager m11748xd() {
        IAntiInjectDaemonManager iAntiInjectDaemonManager = this.apP;
        if (iAntiInjectDaemonManager == null || !iAntiInjectDaemonManager.asBinder().isBinderAlive() || !iAntiInjectDaemonManager.asBinder().pingBinder()) {
            synchronized (apQ) {
                iAntiInjectDaemonManager = this.apP;
                if (iAntiInjectDaemonManager == null || !iAntiInjectDaemonManager.asBinder().isBinderAlive() || !iAntiInjectDaemonManager.asBinder().pingBinder()) {
                    IBinder service = aan.getService("com.kingroot.kinguser.aid1");
                    if (service == null) {
                        service = ((InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class)).getDaemonService("com.kingroot.kinguser.aid1");
                    }
                    if (service == null) {
                        iAntiInjectDaemonManager = null;
                        this.apP = null;
                    } else {
                        iAntiInjectDaemonManager = IAntiInjectDaemonManager.Stub.asInterface(service);
                        this.apP = iAntiInjectDaemonManager;
                    }
                }
            }
        }
        return iAntiInjectDaemonManager;
    }

    /* renamed from: ai */
    public boolean m11754ai(List<String> list) {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                m11748xd.addProtectedPackages(list);
                return true;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    /* renamed from: aj */
    public boolean m11753aj(List<String> list) {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                m11748xd.removeProtectedPackages(list);
                return true;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    /* renamed from: ak */
    public boolean m11752ak(List<String> list) {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                m11748xd.syncDefaultProtectedPkgNames(list);
                return true;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    /* renamed from: aI */
    public boolean m11755aI(boolean z) {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                m11748xd.setSwitcher(z, this.apT);
                return true;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    public void registerClient() {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                m11748xd.registerClient(this.apT);
            } catch (RemoteException e) {
            }
        }
    }

    public boolean getSwitcher() {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                return m11748xd.getSwitcher();
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m11756a(String str, String str2, String str3, String str4) {
        IAntiInjectDaemonManager m11748xd = m11748xd();
        if (m11748xd != null) {
            try {
                m11748xd.syncList(str, str2, str3, str4);
                return true;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    public List<AntiInjectLogModel> getAllLogs() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.apS) {
            arrayList.addAll(this.apS);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m11751d(AntiInjectLogModel antiInjectLogModel) {
        if (antiInjectLogModel != null && antiInjectLogModel.isValid()) {
            synchronized (this.apS) {
                this.apS.add(antiInjectLogModel);
            }
            this.apR.m11747a(null, antiInjectLogModel.m11703xe());
            synchronized (this.apS) {
                while (this.apS.size() > 200) {
                    this.apR.m11746dt(this.apS.remove(0).f1440id);
                }
            }
        }
    }
}
