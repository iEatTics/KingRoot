package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.common.check.ScriptFileCheckUnit;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ajz {
    private static bed auH = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajz.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && !mo7445nF.isEmpty() && (mo7445nF.get(0) instanceof Integer) && new ajz(((Integer) mo7445nF.get(0)).intValue()).m11350zL()) {
                aks.m11143BP().m10902aT(System.currentTimeMillis());
            }
        }
    });
    private int auF;
    private List<ProcessUtils.ProcessInfo> arB = null;
    private List<aka> arC = new ArrayList();
    private boolean auG = false;

    public ajz(int i) {
        this.auF = 0;
        this.auF = i;
    }

    /* renamed from: jz */
    protected synchronized boolean m11352jz() {
        boolean z;
        int i;
        int i2;
        if (this.auG) {
            z = true;
        } else {
            try {
                ApplicationInfo applicationInfo = C3952zh.m1312pq().getApplicationInfo(KUApplication.m13453ge().getPackageName(), 0);
                if (applicationInfo == null) {
                    i = -1;
                    i2 = -1;
                } else {
                    int i3 = applicationInfo.uid;
                    i = applicationInfo.uid;
                    i2 = i3;
                }
                this.arC.add(new aka(ajg.m11472zi(), 1, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(bha.bpy, 1, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(bha.bpz, 1, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(bha.bpA, 1, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(bha.bpv, 2, 0, 0, 3565, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(bha.bpu, 2, 0, 0, 3565, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                if (!abf.m12838qP()) {
                    this.arC.add(new aka(abu.f1378ZV, 2, 0, 0, 3565, 2029, "u:object_r:system_file:s0"));
                }
                this.arC.add(new aka(abu.f1379ZW, 2, 0, 0, 3565, 2029, "u:object_r:system_file:s0"));
                this.arC.add(new aka(bha.bpw, 3, 0, 0, 3565, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(AbstractC3976zt.get("p13"), 3, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(AbstractC3976zt.get("ps1"), 4, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(AbstractC3976zt.get("ps2"), 4, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                this.arC.add(new aka(AbstractC3976zt.get("ps3"), 4, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
                File filesDir = KUApplication.m13453ge().getFilesDir();
                File file = new File(filesDir.getParentFile(), "applib");
                this.arC.add(new aka(file.getAbsolutePath() + File.separator + AbstractC3976zt.get("fn5"), 6, i2, i, 500, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(file.getAbsolutePath() + File.separator + AbstractC3976zt.get("fn7"), 6, i2, i, 500, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(file.getAbsolutePath() + File.separator + (abd.m12840qO() ? AbstractC3976zt.get("fn6") : AbstractC3976zt.get("fn3")), 6, i2, i, 500, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(filesDir.getAbsolutePath() + File.separator + "40372.dat", 6, i2, i, 384, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(filesDir.getAbsolutePath() + File.separator + "40251.dat", 6, i2, i, 384, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(filesDir.getAbsolutePath() + File.separator + "40305.dat", 6, i2, i, 384, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(filesDir.getAbsolutePath() + File.separator + "40351.dat", 6, i2, i, 384, "u:object_r:app_data_file:s0"));
                File file2 = new File(filesDir.getParentFile(), "databases");
                File file3 = new File(filesDir.getParentFile(), "app_workspace");
                File file4 = new File(filesDir.getParentFile(), KlConst.PLUGIN_CACHE_DIR_NAME);
                this.arC.add(new aka(filesDir.getAbsolutePath(), 5, i2, i, 505, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(file2.getAbsolutePath(), 5, i2, i, 505, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(file3.getAbsolutePath(), 5, i2, i, 505, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(file.getAbsolutePath(), 5, i2, i, 505, "u:object_r:app_data_file:s0"));
                this.arC.add(new aka(file4.getAbsolutePath(), 5, i2, i, 505, "u:object_r:app_data_file:s0"));
                this.auG = true;
                z = true;
            } catch (Exception e) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: zL */
    protected synchronized boolean m11350zL() {
        boolean z;
        if (!m11352jz()) {
            z = false;
        } else {
            for (aka akaVar : m11349zM()) {
                switch (akaVar.m11336zP()) {
                    case 1:
                        m11363a(akaVar);
                        break;
                    case 2:
                        m11358f(akaVar);
                        break;
                    case 3:
                        m11362b(akaVar);
                        break;
                    case 4:
                        m11361c(akaVar);
                        break;
                    case 5:
                    case 6:
                        m11360d(akaVar);
                        break;
                }
                m11351k(akaVar);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: zM */
    private synchronized List<aka> m11349zM() {
        List<aka> list;
        if (this.auF == 0) {
            list = this.arC;
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (aka akaVar : this.arC) {
                if (akaVar.m11347Ab() || akaVar.m11338zN()) {
                    switch (akaVar.m11336zP()) {
                        case 1:
                            if (m11356g(akaVar)) {
                                arrayList.add(akaVar);
                                break;
                            } else {
                                continue;
                            }
                        case 2:
                        case 3:
                            if (m11355h(akaVar)) {
                                arrayList.add(akaVar);
                                break;
                            } else {
                                continue;
                            }
                        case 4:
                            arrayList2.add(akaVar);
                            continue;
                        case 5:
                            if (m11354i(akaVar)) {
                                arrayList.add(akaVar);
                                break;
                            } else {
                                continue;
                            }
                        case 6:
                            if (m11354i(akaVar)) {
                                arrayList.add(akaVar);
                                break;
                            } else {
                                continue;
                            }
                        default:
                            continue;
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
            list = arrayList;
        }
        return list;
    }

    /* renamed from: a */
    private void m11363a(aka akaVar) {
        new ScriptFileCheckUnit().m4253e(akaVar);
    }

    /* renamed from: f */
    private void m11358f(aka akaVar) {
        m11360d(akaVar);
        akaVar.m11340gE(abj.m12827Q("sh", akaVar.m11335zQ() + " -v").mStdOut);
    }

    /* renamed from: b */
    private void m11362b(aka akaVar) {
        m11360d(akaVar);
        akaVar.m11340gE(abj.m12827Q("sh", akaVar.m11335zQ() + " -v").mStdOut);
    }

    /* renamed from: c */
    private void m11361c(aka akaVar) {
        if (this.arB == null) {
            this.arB = ProcessUtils.m13134qJ();
        }
        akaVar.m11343a(m11357fZ(akaVar.m11335zQ()));
    }

    /* renamed from: fZ */
    private ProcessUtils.ProcessInfo m11357fZ(String str) {
        for (ProcessUtils.ProcessInfo processInfo : this.arB) {
            if (m11364X(processInfo.name, str)) {
                return processInfo;
            }
        }
        return null;
    }

    /* renamed from: X */
    private boolean m11364X(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(str2) || str.startsWith(str2) || str.endsWith(str2);
    }

    /* renamed from: d */
    private void m11360d(aka akaVar) {
        C3966zn.C3968a m1278I = C3966zn.m1278I(null, akaVar.m11335zQ());
        if (m1278I != null) {
            akaVar.m11345a(m1278I.f4097WN, m1278I.f4098WO, m1278I.mode, m1278I.size, m1278I.f4099WP);
        }
    }

    /* renamed from: g */
    private boolean m11356g(aka akaVar) {
        if (akaVar == null || akaVar.m11337zO()) {
            return false;
        }
        return m11353j(akaVar);
    }

    /* renamed from: h */
    private boolean m11355h(aka akaVar) {
        if (akaVar == null || akaVar.m11337zO()) {
            return false;
        }
        String m11335zQ = akaVar.m11335zQ();
        if (TextUtils.isEmpty(m11335zQ) || m11335zQ.contentEquals(abu.f1378ZV) || m11335zQ.contentEquals(abu.f1379ZW)) {
            return false;
        }
        return m11353j(akaVar);
    }

    /* renamed from: i */
    private boolean m11354i(aka akaVar) {
        if (akaVar == null || akaVar.m11337zO()) {
            return false;
        }
        return m11353j(akaVar);
    }

    /* renamed from: j */
    private boolean m11353j(aka akaVar) {
        if (akaVar == null) {
            return false;
        }
        String m11335zQ = akaVar.m11335zQ();
        if (TextUtils.isEmpty(m11335zQ)) {
            return false;
        }
        C3966zn.C3968a c3968a = new C3966zn.C3968a();
        c3968a.f4097WN = akaVar.m11330zV();
        c3968a.f4098WO = akaVar.m11329zW();
        c3968a.mode = akaVar.m11328zX();
        c3968a.f4100WQ = akaVar.m11327zY();
        c3968a.f4099WP = akaVar.m11326zZ();
        C3966zn.C3968a m1278I = C3966zn.m1278I(null, m11335zQ);
        if (m1278I != null) {
            if ((c3968a.f4097WN == -1 || m1278I.f4097WN == c3968a.f4097WN) && (c3968a.f4098WO == -1 || m1278I.f4098WO == c3968a.f4098WO)) {
                if (c3968a.mode != -1 && m1278I.mode != c3968a.mode) {
                    return c3968a.f4100WQ == -1 || (m1278I.mode & c3968a.f4100WQ) != c3968a.f4100WQ;
                } else if (c3968a.size == -1 || m1278I.size == c3968a.size) {
                    return (TextUtils.equals(m1278I.f4099WP, "unlabeled") || TextUtils.isEmpty(c3968a.f4099WP) || TextUtils.isEmpty(m1278I.f4099WP) || m1278I.f4099WP.equals(c3968a.f4099WP)) ? false : true;
                } else {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: k */
    private void m11351k(aka akaVar) {
        ArrayList arrayList = new ArrayList();
        int m11336zP = akaVar.m11336zP();
        arrayList.add(Integer.valueOf(m11336zP));
        arrayList.add(akaVar.m11335zQ());
        if (m11336zP == 1 || m11336zP == 2 || m11336zP == 3 || m11336zP == 6 || m11336zP == 5) {
            boolean m11338zN = akaVar.m11338zN();
            if (!m11338zN) {
                arrayList.add(Boolean.valueOf(m11338zN));
            } else {
                arrayList.add(Boolean.valueOf(m11338zN));
                arrayList.add(Boolean.valueOf(akaVar.m11337zO()));
                arrayList.add(new String[]{Integer.toOctalString(akaVar.getMode()), Integer.toString(akaVar.m11333zS()), Integer.toString(akaVar.m11332zT()), akaVar.m11331zU()});
                if (m11336zP == 1) {
                    arrayList.add(akaVar.m11334zR());
                    arrayList.add(Boolean.valueOf(akaVar.m11348Aa()));
                } else if (m11336zP == 2 || m11336zP == 3 || m11336zP == 6) {
                    arrayList.add(akaVar.m11341dG());
                    arrayList.add(akaVar.m11339lk());
                    arrayList.add(Long.valueOf(akaVar.getSize()));
                }
            }
        } else if (m11336zP == 4) {
            if (akaVar.m11346Ac() == null) {
                arrayList.add(false);
            } else {
                arrayList.add(akaVar.m11335zQ());
                arrayList.add(Integer.valueOf(akaVar.m11346Ac().uid));
                arrayList.add(Integer.valueOf(akaVar.m11346Ac().pid));
                arrayList.add(Integer.valueOf(akaVar.m11346Ac().ppid));
            }
        } else {
            return;
        }
        ady.m12308tK().m12322c(this.auF, arrayList);
    }

    /* renamed from: dU */
    public static void m11359dU(int i) {
        if (i != 0 || adk.m12539b(aks.m11143BP().m11131CB(), System.currentTimeMillis(), 86400000L)) {
            beg.m7461Zj().m7454a(auH, Integer.valueOf(i));
        }
    }
}
