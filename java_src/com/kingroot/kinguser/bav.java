package com.kingroot.kinguser;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class bav {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* renamed from: VM */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m7890VM() {
        int i;
        long j;
        int i2;
        long j2;
        int i3;
        boolean z;
        String[] split;
        long parseLong;
        if (m7882VU() != 2) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        int m10922Gc = aks.m11143BP().m10922Gc();
        String m10924Ga = aks.m11143BP().m10924Ga();
        if (TextUtils.isEmpty(m10924Ga) || (split = m10924Ga.split(":")) == null || split.length != 2) {
            i = 0;
            j = 0;
        } else {
            try {
                parseLong = Long.parseLong(split[0]);
            } catch (Exception e) {
                j = 0;
            }
            try {
                int parseInt = Integer.parseInt(split[1]);
                j = parseLong;
                i = parseInt;
            } catch (Exception e2) {
                j = parseLong;
                i = 0;
                aks.m11143BP().m10764eQ(m10922Gc + 1);
                i2 = i + 1;
                if (i2 >= 5) {
                }
                Locale locale = Locale.US;
                Object[] objArr = new Object[2];
                if (j2 != 0) {
                }
                objArr[0] = Long.valueOf(currentTimeMillis);
                objArr[1] = Integer.valueOf(i3);
                aks.m11143BP().m10722ho(String.format(locale, "%d:%d", objArr));
                return z;
            }
        }
        aks.m11143BP().m10764eQ(m10922Gc + 1);
        i2 = i + 1;
        if (i2 >= 5) {
            j2 = j;
            i3 = i2;
            z = false;
        } else if (adk.m12539b(j, currentTimeMillis, 3600000L)) {
            i3 = 1;
            j2 = currentTimeMillis;
            z = false;
        } else {
            i3 = 0;
            j2 = currentTimeMillis;
            z = true;
        }
        Locale locale2 = Locale.US;
        Object[] objArr2 = new Object[2];
        if (j2 != 0) {
            currentTimeMillis = j2;
        }
        objArr2[0] = Long.valueOf(currentTimeMillis);
        objArr2[1] = Integer.valueOf(i3);
        aks.m11143BP().m10722ho(String.format(locale2, "%d:%d", objArr2));
        return z;
    }

    /* renamed from: VN */
    public static boolean m7889VN() {
        return aks.m11143BP().m10923Gb();
    }

    /* renamed from: dA */
    public static void m7876dA(boolean z) {
        aks.m11143BP().m10783ct(z);
    }

    /* renamed from: VO */
    public static void m7888VO() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bav.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (bav.m7890VM()) {
                    bav.m7875dB(true);
                    bav.m7887VP();
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: VP */
    public static void m7887VP() {
        m7876dA(true);
        m7886VQ();
        m7885VR();
        m7884VS();
        m7883VT();
    }

    /* renamed from: VQ */
    private static void m7886VQ() {
        if (aks.m11143BP().m11142BQ()) {
            aks.m11143BP().m10850bc(false);
            bby.m7752WY();
            bbf.m7834Wn();
        }
    }

    /* renamed from: VR */
    private static void m7885VR() {
        if (aks.m11143BP().m10948Fc()) {
            aks.m11143BP().m10854bZ(false);
        }
    }

    /* renamed from: VS */
    private static void m7884VS() {
        if (aks.m11143BP().m10964FM()) {
            aks.m11143BP().m10786cq(false);
            biq.ada().m6848eh(false);
        }
    }

    /* renamed from: VT */
    private static void m7883VT() {
        if (aii.m11642xL().m11639xO() && aks.m11143BP().m11076DE() != 0) {
            ahl.m11725xm().m11734a(false, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.protect.KuBehaviorLimited$2
                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherOpen(int i) {
                }

                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherClosed() {
                    aks.m11143BP().m10747et(0);
                    aks.m11143BP().m10800cc(false);
                }
            });
        }
    }

    /* renamed from: VU */
    private static int m7882VU() {
        return bhm.m6984lH("grblc");
    }

    /* renamed from: VV */
    public static void m7881VV() {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bav.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                bav.m7875dB(false);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dB */
    public static void m7875dB(boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(z)) {
            i = abj.m12822en("su") ? 2 : 1;
        } else {
            i = 0;
        }
        arrayList.add(Integer.valueOf(i));
        int m11076DE = aks.m11143BP().m11076DE();
        int[] iArr = new int[4];
        iArr[0] = aio.m11606d(m12845qK) ? 1 : 0;
        iArr[1] = aiu.m11559aM(true) == 1 ? 2 : 0;
        iArr[2] = m11076DE != 0 ? 3 : 0;
        iArr[3] = ((ConnectivityManager) KUApplication.m13453ge().getSystemService("connectivity")).getActiveNetworkInfo().isAvailable() ? 4 : 0;
        arrayList.add(iArr);
        int[] iArr2 = new int[4];
        iArr2[0] = m11076DE != 0 ? 1 : 0;
        iArr2[1] = aks.m11143BP().m10948Fc() ? 2 : 0;
        iArr2[2] = (aks.m11143BP().m11142BQ() && i == 2) ? 3 : 0;
        iArr2[3] = aks.m11143BP().m10964FM() ? 4 : 0;
        arrayList.add(iArr2);
        ArrayList<String> arrayList2 = new ArrayList();
        arrayList2.add(KUApplication.m13430io());
        String str = "";
        try {
            str = C3736ux.m1945kT().getSharkGuid();
        } catch (Exception e) {
        }
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        arrayList2.add(str);
        arrayList2.add(m7879VX());
        arrayList2.add(String.valueOf(aks.m11143BP().m10922Gc()));
        aks.m11143BP().m10764eQ(0);
        arrayList.add(arrayList2.toArray(new String[arrayList2.size()]));
        for (String str2 : arrayList2) {
        }
        List<String> todayRequestAllowAppList = bbo.m7795Wv().getTodayRequestAllowAppList();
        arrayList.add(todayRequestAllowAppList.size() != 0 ? todayRequestAllowAppList.toArray(new String[todayRequestAllowAppList.size()]) : "0");
        for (String str3 : todayRequestAllowAppList) {
        }
        arrayList.add("0");
        List<String> m7880VW = m7880VW();
        arrayList.add(m7880VW.size() > 0 ? m7880VW.toArray(new String[m7880VW.size()]) : "0");
        for (String str4 : m7880VW) {
        }
        ady.m12308tK().mo1748a(100654, 0, (List<Object>) arrayList, false);
    }

    /* renamed from: VW */
    private static List<String> m7880VW() {
        ArrayList arrayList = new ArrayList();
        List<String> m8771ha = avs.m8774RY().m8771ha(16);
        if (m8771ha == null || m8771ha.size() <= 0) {
            return null;
        }
        for (String str : m8771ha) {
            if (C3952zh.m1312pq().m1314du(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: VX */
    private static String m7879VX() {
        Intent registerReceiver = KApplication.m13453ge().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("level", 0);
            int intExtra2 = registerReceiver.getIntExtra("scale", 100);
            registerReceiver.getIntExtra("voltage", 100);
            double intExtra3 = registerReceiver.getIntExtra("temperature", 0);
            int i = (intExtra * 100) / intExtra2;
            return String.valueOf(0.1d * intExtra3);
        }
        return "0";
    }
}
