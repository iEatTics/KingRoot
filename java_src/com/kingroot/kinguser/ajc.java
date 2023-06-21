package com.kingroot.kinguser;

import android.os.Build;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.common.check.DaemonRunningCheckUnit;
import com.kingroot.kinguser.common.check.ISuCheckListener;
import com.kingroot.kinguser.common.check.IscanPlaceCheckUnit;
import com.kingroot.kinguser.common.check.ScriptFileCheckUnit;
import com.kingroot.kinguser.common.check.SuFilesCheckUnit;
import com.kingroot.kinguser.common.check.VirtualXbinCheckUnit;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class ajc implements aje {
    private static final Object asY = new Object();
    private static final cce<ajc> sInstance = new cce<ajc>() { // from class: com.kingroot.kinguser.ajc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: zb */
        public ajc create() {
            return new ajc();
        }
    };
    private bed asZ;
    private bed ata;

    /* renamed from: yX */
    public static ajc m11481yX() {
        return sInstance.get();
    }

    private ajc() {
        this.asZ = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajc.2
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                ajc.this.checkSync(((Boolean) mo7445nF.get(0)).booleanValue(), ((Boolean) mo7445nF.get(1)).booleanValue(), (ISuCheckListener) mo7445nF.get(2), null);
            }
        });
        this.ata = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajc.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                for (int i = 0; i < 2; i++) {
                    try {
                        Thread.sleep(30000L);
                        ajc.this.checkAsync(false, true, null);
                    } catch (InterruptedException e) {
                        return;
                    }
                }
            }
        });
    }

    public void checkAsync(boolean z, boolean z2, ISuCheckListener iSuCheckListener) {
        if (aks.m11143BP().m11142BQ()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(z ? Boolean.TRUE : Boolean.FALSE);
            arrayList.add(z2 ? Boolean.TRUE : Boolean.FALSE);
            arrayList.add(iSuCheckListener);
            beg.m7461Zj().m7456a(this.asZ, arrayList);
        }
    }

    public void delayCheckAgain() {
        beg.m7461Zj().m7450c(this.ata);
    }

    public boolean checkSync(boolean z, boolean z2, ISuCheckListener iSuCheckListener, List<ajf> list) {
        boolean z3 = false;
        synchronized (asY) {
            m11480yY();
            abc m12845qK = abc.m12845qK();
            if (z2) {
                if (!m12845qK.isRootPermitionInBackupSu()) {
                }
                m12845qK.m12846el(aas.f1260XV + C3958zl.getCacheDir() + File.separator + "chr");
                if (!z || abd.m12839qb() < 14 || !Build.MODEL.toLowerCase(Locale.ENGLISH).contains("htc")) {
                    z3 = m11482a(z, z2, iSuCheckListener, list);
                }
            } else {
                if (!m12845qK.isRootPermition(true)) {
                }
                m12845qK.m12846el(aas.f1260XV + C3958zl.getCacheDir() + File.separator + "chr");
                if (!z) {
                }
                z3 = m11482a(z, z2, iSuCheckListener, list);
            }
        }
        return z3;
    }

    /* renamed from: a */
    private static boolean m11482a(boolean z, boolean z2, ISuCheckListener iSuCheckListener, List<ajf> list) {
        boolean z3;
        boolean z4;
        boolean z5;
        if (z2 && !aks.m11143BP().m11080DA()) {
            if (!abj.m12822en("su")) {
                return false;
            }
            aks.m11143BP().m10874bI(true);
        }
        if (list == null) {
            list = m11479yZ();
        }
        boolean z6 = false;
        boolean z7 = false;
        for (ajf ajfVar : list) {
            try {
                if (ajfVar.mo4288e(z, z2)) {
                    z4 = z6;
                    z5 = z7;
                } else if (ajfVar.mo4226ze()) {
                    z4 = true;
                    z5 = true;
                } else {
                    z4 = z6;
                    z5 = true;
                }
                z7 = z5;
                z6 = z4;
            } catch (ajd e) {
                return false;
            }
        }
        if (z7) {
            boolean z8 = z6 && !z;
            synchronized ((z8 ? bho.bqT : new Object())) {
                RebootStat m6979S = bho.m6979S("checkE", 0);
                if (z8) {
                    bho.m6977a(m6979S, null);
                    if (m6979S.linuxRebootPeekCount >= 2) {
                        return false;
                    }
                    bho.m6976b(m6979S, 1, null);
                }
                boolean z9 = true;
                for (ajf ajfVar2 : list) {
                    if (ajfVar2.mo4287yR()) {
                        if (!ajfVar2.mo4226ze() || aaw.m12890dV("/system")) {
                            try {
                                boolean mo4286yS = ajfVar2.mo4286yS();
                                if (!mo4286yS) {
                                    z9 = false;
                                }
                                if ((ajfVar2 instanceof SuFilesCheckUnit) && iSuCheckListener != null) {
                                    try {
                                        iSuCheckListener.onSuCheckEvent(mo4286yS ? 0 : 1);
                                        z3 = z9;
                                    } catch (RemoteException e2) {
                                        z3 = z9;
                                    }
                                    z9 = z3;
                                }
                            } catch (ajd e3) {
                                return false;
                            }
                        } else {
                            z9 = false;
                        }
                    }
                    z3 = z9;
                    z9 = z3;
                }
                if (z6) {
                    m11478za();
                    if (z8) {
                        bho.m6976b(m6979S, 2, null);
                        if (m6979S.successPeekCount >= 3) {
                            try {
                                Thread.sleep(800L);
                            } catch (InterruptedException e4) {
                                e4.printStackTrace();
                            }
                            bho.m6976b(m6979S, 3, null);
                            bho.m6973d(m6979S, null);
                        } else {
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException e5) {
                                e5.printStackTrace();
                            }
                            bho.m6976b(m6979S, 3, null);
                            bho.m6973d(m6979S, null);
                        }
                    }
                }
                return z9;
            }
        }
        C3823wb.m1591U(true);
        return true;
    }

    /* renamed from: yY */
    private void m11480yY() {
        final aks m11143BP = aks.m11143BP();
        long m11089Cr = m11143BP.m11089Cr();
        long currentTimeMillis = System.currentTimeMillis();
        if (57600000 + m11089Cr <= currentTimeMillis || currentTimeMillis <= m11089Cr - 57600000) {
            final C2704cd m11664dx = aif.m11664dx(0);
            final ArrayList arrayList = new ArrayList(1);
            arrayList.add(m11664dx);
            HandlerC3841wm.m1549nu().post(new Runnable() { // from class: com.kingroot.kinguser.ajc.4
                @Override // java.lang.Runnable
                public void run() {
                    aif.m11661m(arrayList);
                    m11143BP.m10907aO(System.currentTimeMillis());
                    m11143BP.m10757ej(0);
                    ajc.m11483a(m11664dx);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m11483a(C2704cd c2704cd) {
        C2850cx c2850cx = c2704cd.f2260ly;
        if (c2850cx != null) {
            int i = c2850cx.f2402mF;
            int i2 = c2850cx.f2401mE;
            if (i != 4 && i != 8 && i2 != 1) {
                aks.m11143BP().m10757ej(atB);
            }
        }
    }

    /* renamed from: yZ */
    private static List<ajf> m11479yZ() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ScriptFileCheckUnit());
        if (aaw.m12890dV("/system")) {
            arrayList.add(new IscanPlaceCheckUnit());
        }
        arrayList.add(new DaemonRunningCheckUnit());
        if (aaw.m12888qv()) {
            arrayList.add(new VirtualXbinCheckUnit());
        }
        arrayList.add(new SuFilesCheckUnit());
        arrayList.addAll(ajb.m11485yV());
        return arrayList;
    }

    /* renamed from: za */
    private static void m11478za() {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.ajc.5
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(aas.f1256XR);
                    arrayList.add(aas.f1261XW + "/system/app/Kinguser.apk");
                    arrayList.add("chmod 0644 /system/app/Kinguser.apk");
                    arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", "/system/app/Kinguser.apk"));
                    arrayList.add(aas.f1257XS);
                    m12845qK.runRootCommands(arrayList);
                    return null;
                }
                return null;
            }
        }, new Object[0]);
    }
}
