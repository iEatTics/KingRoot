package com.kingroot.kinguser.common.check;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3949ze;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.abf;
import com.kingroot.kinguser.abi;
import com.kingroot.kinguser.adk;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aja;
import com.kingroot.kinguser.ajj;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bha;
import com.kingroot.kinguser.bhm;
import com.kingroot.kinguser.util.protect.DeviceStat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DaemonRunningCheckUnit extends BaseSuCheckUnit {
    public static final Parcelable.Creator<DaemonRunningCheckUnit> CREATOR = new Parcelable.Creator<DaemonRunningCheckUnit>() { // from class: com.kingroot.kinguser.common.check.DaemonRunningCheckUnit.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: O */
        public DaemonRunningCheckUnit createFromParcel(Parcel parcel) {
            return new DaemonRunningCheckUnit();
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: dM */
        public DaemonRunningCheckUnit[] newArray(int i) {
            return new DaemonRunningCheckUnit[i];
        }
    };
    private static bed ats = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.common.check.DaemonRunningCheckUnit.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.DaemonRunningCheckUnit.2.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    int i;
                    DeviceStat m6985lG = bhm.m6985lG("kudrp");
                    DeviceStat acx = DeviceStat.acx();
                    if (m6985lG == null) {
                        bhm.m6986a("kudrp", acx);
                    } else if (m6985lG.acB() < 0) {
                        bhm.m6986a("kudrp", acx);
                    } else if (DeviceStat.m1987a(m6985lG, acx, null) == 2) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (adk.m12539b(aks.m11143BP().m11129CD(), currentTimeMillis, 86400000L)) {
                            String m12837u = abf.m12837u(bha.bpw, false);
                            String m12837u2 = abf.m12837u(bha.bpw, true);
                            if (!TextUtils.isEmpty(m12837u) && !TextUtils.isEmpty(m12837u2) && m12837u.endsWith("kinguser_su")) {
                                try {
                                    i = Integer.valueOf(m12837u2).intValue();
                                } catch (NumberFormatException e) {
                                    i = 0;
                                }
                                if (i >= 344) {
                                    String m10999Ed = aks.m11143BP().m10999Ed();
                                    if (m10999Ed.isEmpty()) {
                                        aks.m11143BP().m10998Ee();
                                        m10999Ed = aks.m11143BP().m10999Ed();
                                        if (m10999Ed.isEmpty()) {
                                            bhm.m6986a("kudrp", acx);
                                        }
                                    }
                                    boolean z = !m10999Ed.contentEquals(C3949ze.m1324po());
                                    VTCmdResult m12831em = abi.m12831em(bha.bpw + " --startup");
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(Integer.valueOf(z ? 1 : 0));
                                    if (!z) {
                                        m10999Ed = "";
                                    }
                                    arrayList.add(m10999Ed);
                                    arrayList.add(m12831em.success() ? m12831em.mStdOut.trim() : 0);
                                    ady.m12308tK().mo1748a(100269, 0, (List<Object>) arrayList, false);
                                    bhm.m6986a("kudrp", acx);
                                    aks.m11143BP().m10900aV(currentTimeMillis);
                                    aks.m11143BP().m10998Ee();
                                }
                            }
                        }
                    }
                    return null;
                }
            }, new Object[0]);
        }
    });

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        if (abd.m12839qb() < 14) {
            return true;
        }
        VTCmdResult m12846el = abc.m12845qK().m12846el(ajj.m11467zl() + " --ping");
        return m12846el.success() && m12846el.mStdOut.trim().equals("kinguser_su");
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        abc m12845qK = abc.m12845qK();
        String m11467zl = ajj.m11467zl();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(aja.m11490e(m11467zl, "/dev/ku.sud.tmp", false));
        arrayList.add("/dev/ku.sud.tmp -d");
        arrayList.add(aas.f1260XV + "/dev/ku.sud.tmp");
        m12845qK.runRootCommands(arrayList);
        return true;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }

    /* renamed from: zf */
    public static void m4274zf() {
        beg.m7461Zj().m7450c(ats);
    }
}
