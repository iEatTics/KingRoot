package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class aig {
    private static long arr = -1;
    private static bed ars = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.aig.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (air.m11599yd()) {
                String m11095Cl = aks.m11143BP().m11095Cl();
                String m13435ij = KApplication.m13435ij();
                if (!m11095Cl.equals(m13435ij)) {
                    if (!aig.m11654xB()) {
                        beg.m7461Zj().m7450c(aig.art);
                    } else {
                        aks.m11143BP().m10739gY(m13435ij);
                    }
                }
            }
        }
    });
    private static final bed art = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aig.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aig.m11649xG();
            long m1587nb = C3823wb.m1587nb();
            if (m1587nb >= 0) {
                File file = new File("/data/system/kubuildin.data");
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(aas.f1262XX + "/data/system");
                    arrayList.add(aas.f1260XV + file.getPath());
                    arrayList.add(String.format("echo %s > %s", "" + m1587nb, file.getPath()));
                    arrayList.add(aas.f1261XW + file.getPath());
                    arrayList.add("chmod 0644 " + file.getPath());
                    arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", file.getPath()));
                    m12845qK.runRootCommands(arrayList);
                    if (aig.m11654xB()) {
                        aks.m11143BP().m10739gY(KApplication.m13435ij());
                    }
                }
            }
        }
    });

    /* renamed from: xA */
    public static void m11655xA() {
        if (!ars.isRunning()) {
            beg.m7461Zj().m7450c(ars);
        }
    }

    /* renamed from: xB */
    public static boolean m11654xB() {
        File file = new File("/data/system/kubuildin.data");
        if (file.exists() && file.canRead()) {
            return true;
        }
        m11649xG();
        return false;
    }

    /* renamed from: xC */
    public static boolean m11653xC() {
        return air.m11599yd() ? !m11654xB() || m11652xD() : m11652xD();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* renamed from: xD */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m11652xD() {
        long j;
        boolean z;
        long j2;
        if (!m11654xB()) {
            j = -1;
        } else if (m11650xF()) {
            j = m11651xE();
        } else {
            try {
                byte[] m2355cy = C3563rs.m2355cy("/data/system/kubuildin.data");
                if (m2355cy == null || m2355cy.length <= 0) {
                    j2 = -1;
                } else {
                    j2 = Long.valueOf(new String(m2355cy).trim()).longValue();
                    try {
                        m11657aj(j2);
                    } catch (NumberFormatException e) {
                        beg.m7461Zj().m7450c(art);
                        j = j2;
                        if (j == -1) {
                        }
                    } catch (Exception e2) {
                        j = j2;
                        if (j == -1) {
                        }
                    }
                }
                j = j2;
            } catch (NumberFormatException e3) {
                j2 = -1;
            } catch (Exception e4) {
                j2 = -1;
            }
        }
        if (j == -1) {
            return false;
        }
        long m1587nb = C3823wb.m1587nb();
        if (m1587nb - j > 31536000000L) {
            z = false;
        } else {
            z = true;
        }
        if (m1587nb < j) {
            beg.m7461Zj().m7450c(art);
            return z;
        }
        return z;
    }

    /* renamed from: xE */
    private static long m11651xE() {
        return arr;
    }

    /* renamed from: xF */
    private static boolean m11650xF() {
        return arr != -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: xG */
    public static void m11649xG() {
        arr = -1L;
    }

    /* renamed from: aj */
    private static void m11657aj(long j) {
        arr = j;
    }
}
