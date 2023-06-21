package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.bed;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bjn {
    private static long arr = -1;
    private static boolean bxn = false;
    private static final cce<bjn> sInstance = new cce<bjn>() { // from class: com.kingroot.kinguser.bjn.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aeg */
        public bjn create() {
            return new bjn();
        }
    };
    private static bed bxo = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjn.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() == 2) {
                if ((mo7445nF.get(0) instanceof Long) || !(mo7445nF.get(1) instanceof Boolean)) {
                    long longValue = ((Long) mo7445nF.get(0)).longValue();
                    int i = ((Boolean) mo7445nF.get(1)).booleanValue() ? 1 : 0;
                    File file = new File("/data/system/kushuamebuildin.data");
                    abc m12845qK = abc.m12845qK();
                    if (m12845qK.isRootPermition(true)) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(String.format("chmod 0%o %s", 509, "/data/system"));
                        arrayList.add(aas.f1260XV + file.getPath());
                        arrayList.add(String.format("echo %s > %s", "" + longValue + " " + i, file.getPath()));
                        arrayList.add(aas.f1261XW + file.getPath());
                        arrayList.add("chmod 0644 " + file.getPath());
                        arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", file.getPath()));
                        m12845qK.runRootCommands(arrayList);
                    }
                }
            }
        }
    });

    public static bjn aeb() {
        return sInstance.get();
    }

    private bjn() {
    }

    public boolean aec() {
        if (aks.m11143BP().m11023EF()) {
            return true;
        }
        return air.m11600yc() ? m6708xB() && !aee() : (m6708xB() && aee()) ? false : true;
    }

    /* renamed from: EG */
    public void m6712EG() {
        aks.m11143BP().m11022EG();
    }

    public void aed() {
        m6710ej(false);
    }

    /* renamed from: ej */
    private synchronized void m6710ej(boolean z) {
        long m11024EE = aks.m11143BP().m11024EE();
        if (air.m11600yc() && (!m6708xB() || z)) {
            ArrayList arrayList = new ArrayList();
            long m1587nb = C3823wb.m1587nb();
            aks m11143BP = aks.m11143BP();
            if (m1587nb == -1) {
                if (m11024EE == 0) {
                    m11143BP.m10817bt(System.currentTimeMillis());
                } else if (adk.m12539b(m11024EE, System.currentTimeMillis(), 604800000L)) {
                    arrayList.add(Long.valueOf(System.currentTimeMillis()));
                    arrayList.add(true);
                    beg.m7461Zj().m7456a(bxo, arrayList);
                }
            } else {
                arrayList.add(Long.valueOf(m1587nb));
                arrayList.add(false);
                beg.m7461Zj().m7456a(bxo, arrayList);
            }
        }
    }

    /* renamed from: xB */
    public static boolean m6708xB() {
        File file = new File("/data/system/kushuamebuildin.data");
        if (file.exists() && file.canRead()) {
            return true;
        }
        m6705xG();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean aee() {
        boolean z;
        long j;
        boolean z2;
        long j2;
        if (!m6708xB()) {
            z = false;
            j = -1;
        } else if (m6706xF()) {
            j = m6707xE();
            z = aef();
        } else {
            try {
                byte[] m2355cy = C3563rs.m2355cy("/data/system/kushuamebuildin.data");
                if (m2355cy != null && m2355cy.length > 0) {
                    String[] split = new String(m2355cy).split(" ");
                    if (split.length != 2) {
                        m6710ej(true);
                        z2 = false;
                        j2 = -1;
                    } else {
                        j2 = Long.parseLong(split[0].trim());
                        try {
                            z2 = Integer.parseInt(split[1].trim()) == 1;
                        } catch (NumberFormatException e) {
                            z2 = false;
                        } catch (Exception e2) {
                            z2 = false;
                        }
                        try {
                            m6711aj(j2);
                            m6709ek(z2);
                        } catch (NumberFormatException e3) {
                            m6710ej(true);
                            boolean z3 = z2;
                            j = j2;
                            z = z3;
                            if (j != -1) {
                            }
                        } catch (Exception e4) {
                            boolean z4 = z2;
                            j = j2;
                            z = z4;
                            if (j != -1) {
                            }
                        }
                    }
                } else {
                    m6710ej(true);
                    z2 = false;
                    j2 = -1;
                }
                boolean z5 = z2;
                j = j2;
                z = z5;
            } catch (NumberFormatException e5) {
                z2 = false;
                j2 = -1;
            } catch (Exception e6) {
                z2 = false;
                j2 = -1;
            }
        }
        if (j != -1) {
            long currentTimeMillis = z ? System.currentTimeMillis() : C3823wb.m1587nb();
            if (currentTimeMillis == -1) {
                return true;
            }
            boolean z6 = adk.m12539b(j, currentTimeMillis, 2592000000L) ? false : true;
            if (currentTimeMillis < j) {
                m6710ej(true);
                return z6;
            }
            return z6;
        }
        return false;
    }

    /* renamed from: xE */
    private static long m6707xE() {
        return arr;
    }

    /* renamed from: aj */
    private static void m6711aj(long j) {
        arr = j;
    }

    /* renamed from: ek */
    private static void m6709ek(boolean z) {
        bxn = z;
    }

    private static boolean aef() {
        return bxn;
    }

    /* renamed from: xF */
    private static boolean m6706xF() {
        return arr != -1;
    }

    /* renamed from: xG */
    private static void m6705xG() {
        arr = -1L;
    }
}
