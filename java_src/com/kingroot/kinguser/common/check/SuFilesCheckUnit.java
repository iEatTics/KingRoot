package com.kingroot.kinguser.common.check;

import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.AbstractC3976zt;
import com.kingroot.kinguser.C2704cd;
import com.kingroot.kinguser.C3823wb;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.HandlerC3841wm;
import com.kingroot.kinguser.aar;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abj;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aif;
import com.kingroot.kinguser.aio;
import com.kingroot.kinguser.aja;
import com.kingroot.kinguser.ajb;
import com.kingroot.kinguser.ajc;
import com.kingroot.kinguser.ajd;
import com.kingroot.kinguser.ajj;
import com.kingroot.kinguser.akf;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bdl;
import com.kingroot.kinguser.bha;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class SuFilesCheckUnit extends BaseSuCheckUnit {
    private static final String auc = AbstractC3976zt.get("p8");
    private static final String aud = AbstractC3976zt.get("p9");
    private static final String aue = AbstractC3976zt.get("p10");
    public static final Parcelable.Creator<SuFilesCheckUnit> CREATOR = new Parcelable.Creator<SuFilesCheckUnit>() { // from class: com.kingroot.kinguser.common.check.SuFilesCheckUnit.4
        @Override // android.os.Parcelable.Creator
        /* renamed from: dT */
        public SuFilesCheckUnit[] newArray(int i) {
            return new SuFilesCheckUnit[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: U */
        public SuFilesCheckUnit createFromParcel(Parcel parcel) {
            return new SuFilesCheckUnit();
        }
    };
    private boolean atu = false;
    private boolean atZ = false;
    private boolean aua = false;
    private boolean aub = false;

    /* renamed from: f */
    private boolean m4240f(boolean z, boolean z2) {
        int m1279H = C3966zn.m1279H(ajj.m11467zl(), bha.bpw);
        if (m1279H == 0) {
            return false;
        }
        if (m1279H == -2) {
            return true;
        }
        if (m1279H == -3 || m1279H == -4) {
            return false;
        }
        if (z2) {
            if (bdl.m7540kR(bha.bpw)) {
                bdl.C2110a m7539kS = bdl.m7539kS(bha.bpw);
                if (m7539kS != null && !"kinguser".equals(m7539kS.category) && bdl.m7538kT(bha.bpw)) {
                    if (2 < m7539kS.priority) {
                        throw new ajd("Lower priority, exit");
                    }
                    if (2 == m7539kS.priority) {
                        throw new ajd("Not silent check and same priority");
                    }
                    return true;
                }
                return true;
            }
            if (abj.m12822en(bha.bpw) && !TextUtils.equals(akf.m11306An(), "com.kingroot.kinguser")) {
                PackageInfo packageInfo = null;
                try {
                    packageInfo = C3952zh.m1312pq().getPackageInfo("com.kingroot.kinguser", 0);
                } catch (Throwable th) {
                }
                return packageInfo == null || !packageInfo.applicationInfo.enabled;
            }
            return true;
        }
        return true;
    }

    /* renamed from: ag */
    private boolean m4242ag(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        File file = new File(str2);
        if (file.exists()) {
            try {
                return file.getCanonicalPath().equals(str);
            } catch (IOException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: zm */
    private boolean m4235zm() {
        return (m4242ag(bha.bpw, bha.bpu) && m4242ag(bha.bpw, bha.bpv) && m4242ag(bha.bpw, bha.bpx)) ? false : true;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        this.atZ = m4240f(z, z2);
        this.atu = false;
        if (!this.atZ) {
            C3966zn.C3968a c3968a = new C3966zn.C3968a();
            c3968a.f4097WN = 0;
            c3968a.f4098WO = 0;
            c3968a.mode = aks.m11143BP().m11084Cw();
            c3968a.f4099WP = "u:object_r:system_file:s0";
            this.atu = C3966zn.m1277a(bha.bpw, c3968a) != 0;
        }
        this.aua = new File(auc).exists() || new File(aud).exists() || new File(aue).exists();
        this.aub = m4235zm();
        return (this.atZ || this.aua || this.atu || this.aub) ? false : true;
    }

    /* renamed from: zn */
    private boolean m4234zn() {
        ArrayList arrayList = new ArrayList();
        if (!m4242ag(bha.bpw, bha.bpu)) {
            arrayList.addAll(aja.m11491ab(bha.bpw, bha.bpu));
        }
        if (!m4242ag(bha.bpw, bha.bpv)) {
            arrayList.addAll(aja.m11491ab(bha.bpw, bha.bpv));
        }
        if (!m4242ag(bha.bpw, bha.bpx)) {
            arrayList.addAll(aja.m11491ab(bha.bpw, bha.bpx));
        }
        if (arrayList.size() == 0) {
            return true;
        }
        arrayList.add(0, aas.f1256XR);
        abc.m12845qK().runRootCommands(arrayList);
        return !m4235zm();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a1  */
    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo4227yQ() {
        boolean z;
        final ArrayList arrayList = new ArrayList(2);
        int m11088Cs = aks.m11143BP().m11088Cs();
        if (m11088Cs < ajb.atB) {
            arrayList.add(aif.m11664dx(1));
        }
        ady.m12308tK().mo1746bi(100031);
        if (this.atZ) {
            if (!m4239gp(ajj.m11467zl())) {
                z = false;
                if (z && this.aub && !m4234zn()) {
                    z = false;
                }
                if (z && this.aua) {
                    C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.SuFilesCheckUnit.1
                        @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                        public Object execute(List<Object> list) {
                            abc m12845qK = abc.m12845qK();
                            if (m12845qK.isRootPermition(true)) {
                                ArrayList arrayList2 = new ArrayList(7);
                                if (aio.m11606d(m12845qK)) {
                                    arrayList2.add(aas.f1256XR);
                                }
                                arrayList2.add(aas.f1258XT);
                                arrayList2.addAll(aar.m12944r(SuFilesCheckUnit.auc, false));
                                arrayList2.add(aas.f1260XV + SuFilesCheckUnit.auc);
                                arrayList2.addAll(aar.m12944r(SuFilesCheckUnit.aud, false));
                                arrayList2.add(aas.f1260XV + SuFilesCheckUnit.aud);
                                arrayList2.addAll(aar.m12944r(SuFilesCheckUnit.aue, false));
                                arrayList2.add(aas.f1260XV + SuFilesCheckUnit.aue);
                                m12845qK.runRootCommands(arrayList2);
                                return null;
                            }
                            return null;
                        }
                    }, new Object[0]);
                }
                if (!z) {
                    aks.m11143BP().m10949Fb();
                    ady.m12308tK().mo1746bi(100032);
                    C3823wb.m1591U(true);
                } else {
                    C3823wb.m1591U(false);
                }
                if (m11088Cs < ajb.atB) {
                    final C2704cd m11664dx = aif.m11664dx(2);
                    arrayList.add(m11664dx);
                    HandlerC3841wm.m1549nu().post(new Runnable() { // from class: com.kingroot.kinguser.common.check.SuFilesCheckUnit.2
                        @Override // java.lang.Runnable
                        public void run() {
                            int m11088Cs2 = aks.m11143BP().m11088Cs();
                            aif.m11661m(arrayList);
                            aks.m11143BP().m10757ej(m11088Cs2 + 1);
                            ajc.m11483a(m11664dx);
                        }
                    });
                }
                return z;
            }
        } else if (this.atu) {
            C3966zn.C3968a c3968a = new C3966zn.C3968a();
            c3968a.f4097WN = 0;
            c3968a.f4098WO = 0;
            c3968a.mode = aks.m11143BP().m11084Cw();
            c3968a.f4099WP = "u:object_r:system_file:s0";
            C3966zn.m1274b(bha.bpw, c3968a);
        }
        z = true;
        if (z) {
            z = false;
        }
        if (z) {
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.SuFilesCheckUnit.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    abc m12845qK = abc.m12845qK();
                    if (m12845qK.isRootPermition(true)) {
                        ArrayList arrayList2 = new ArrayList(7);
                        if (aio.m11606d(m12845qK)) {
                            arrayList2.add(aas.f1256XR);
                        }
                        arrayList2.add(aas.f1258XT);
                        arrayList2.addAll(aar.m12944r(SuFilesCheckUnit.auc, false));
                        arrayList2.add(aas.f1260XV + SuFilesCheckUnit.auc);
                        arrayList2.addAll(aar.m12944r(SuFilesCheckUnit.aud, false));
                        arrayList2.add(aas.f1260XV + SuFilesCheckUnit.aud);
                        arrayList2.addAll(aar.m12944r(SuFilesCheckUnit.aue, false));
                        arrayList2.add(aas.f1260XV + SuFilesCheckUnit.aue);
                        m12845qK.runRootCommands(arrayList2);
                        return null;
                    }
                    return null;
                }
            }, new Object[0]);
        }
        if (!z) {
        }
        if (m11088Cs < ajb.atB) {
        }
        return z;
    }

    /* renamed from: gp */
    private static synchronized boolean m4239gp(final String str) {
        boolean booleanValue;
        synchronized (SuFilesCheckUnit.class) {
            booleanValue = ((Boolean) C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.SuFilesCheckUnit.3
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    boolean m4238gq = SuFilesCheckUnit.m4238gq(str);
                    if (m4238gq) {
                        aks.m11143BP().m10834bk(true);
                    }
                    return Boolean.valueOf(m4238gq);
                }
            }, new Object[0])).booleanValue();
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gq */
    public static boolean m4238gq(String str) {
        boolean z = true;
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            if (aks.m11143BP().m11097Cj()) {
                aks.m11143BP().m10834bk(false);
            }
            boolean m4243a = m4243a(m12845qK, str, "/system/xbin/ku.sud.tmp", true);
            m4241f(m12845qK);
            if (!m4243a || !m4243a(m12845qK, str, bha.bpw, false)) {
                z = false;
            }
            return z;
        }
        return false;
    }

    /* renamed from: f */
    private static void m4241f(abc abcVar) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(aas.f1256XR);
        arrayList.addAll(aar.m12944r("/system/xbin/ku.sud.tmp", false));
        arrayList.add(aas.f1260XV + "/system/xbin/ku.sud.tmp");
        abcVar.runRootCommands(arrayList);
    }

    /* renamed from: a */
    private static boolean m4244a(abc abcVar, String str, String str2, int i) {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(aas.f1256XR);
        arrayList.addAll(aar.m12944r(str2, false));
        arrayList.add(aas.f1260XV + str2);
        arrayList.add(String.format("cat %s > %s", str, str2));
        arrayList.add(aas.f1261XW + str2);
        arrayList.add(String.format("chmod 0%o %s", Integer.valueOf(i), str2));
        arrayList.addAll(aar.m12944r(str2, true));
        arrayList.add(aas.f1257XS);
        List<VTCmdResult> runRootCommands = abcVar.runRootCommands(arrayList);
        if (runRootCommands == null || runRootCommands.size() != arrayList.size()) {
            return false;
        }
        for (int i2 = 0; i2 < runRootCommands.size(); i2++) {
            if (!runRootCommands.get(i2).success()) {
                String str3 = runRootCommands.get(i2).mCmdFlag;
                if (!str3.startsWith(aas.f1260XV) && !str3.startsWith(aas.f1255XQ) && !str3.startsWith(aar.m12946pQ())) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m4243a(abc abcVar, String str, String str2, boolean z) {
        int m11084Cw = aks.m11143BP().m11084Cw();
        boolean m4244a = m4244a(abcVar, str, str2, m11084Cw);
        if (m4244a && m11084Cw == 3565 && z) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (!new File(str2).exists()) {
                aks.m11143BP().m10756ek(FileUtils.FileMode.MODE_755);
                m4244a = m4244a(abcVar, str, str2, (int) FileUtils.FileMode.MODE_755);
            }
        }
        return m4244a && abj.m12818er(str2);
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
