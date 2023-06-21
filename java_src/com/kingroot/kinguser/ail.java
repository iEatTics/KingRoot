package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.common.check.ScriptFileCheckUnit;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ail {
    private static volatile ail arG;
    private List<ProcessUtils.ProcessInfo> arB = null;
    private List<aka> arC = new ArrayList();
    private String arD = new String(aab.m13014dJ("2F73797374656D2F62696E2F33363073"));
    private String arE = new String(aab.m13014dJ("656D6461656D6F6E"));
    private String arF = new String(aab.m13014dJ("333630736775617264"));
    private String arH = "";
    private String arI = "";
    private bed arJ = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ail.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            List<Object> mo7445nF;
            super.mo1208a(interfaceC2117a);
            if (interfaceC2117a != null && (mo7445nF = interfaceC2117a.mo7445nF()) != null && !mo7445nF.isEmpty()) {
                ail.this.m11622dA(((Integer) mo7445nF.get(0)).intValue());
            }
        }
    });

    /* renamed from: xT */
    public static ail m11618xT() {
        if (arG == null) {
            synchronized (ail.class) {
                if (arG == null) {
                    arG = new ail();
                }
            }
        }
        return arG;
    }

    private ail() {
        init();
    }

    protected void init() {
        this.arC.add(new aka(ajg.m11472zi(), 99, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
        this.arC.add(new aka(this.arD, 0, 0, 0, FileUtils.FileMode.MODE_755, "u:object_r:system_file:s0"));
    }

    /* renamed from: dz */
    protected void m11621dz(int i) {
        for (aka akaVar : this.arC) {
            if (akaVar.m11347Ab() || akaVar.m11338zN()) {
                if (akaVar.m11336zP() == 99) {
                    m11626a(akaVar);
                    this.arH = akaVar.m11334zR();
                } else if (akaVar.m11336zP() == 0) {
                    m11625b(akaVar);
                } else if (akaVar.m11336zP() == 1) {
                    m11624c(akaVar);
                }
            }
            if (akaVar.m11336zP() == 0 && akaVar.m11338zN()) {
                m11627a(i, akaVar);
            }
        }
    }

    /* renamed from: a */
    private void m11626a(aka akaVar) {
        try {
            new ScriptFileCheckUnit().m4253e(akaVar);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    private void m11625b(aka akaVar) {
        try {
            m11623d(akaVar);
            akaVar.m11340gE(abj.m12827Q("sh", akaVar.m11335zQ() + " -v").mStdOut);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    private void m11624c(aka akaVar) {
        try {
            if (this.arB == null) {
                this.arB = ProcessUtils.m13134qJ();
            }
            akaVar.m11343a(m11620fZ(akaVar.m11335zQ()));
        } catch (Exception e) {
        }
    }

    /* renamed from: fZ */
    private ProcessUtils.ProcessInfo m11620fZ(String str) {
        for (ProcessUtils.ProcessInfo processInfo : this.arB) {
            if (m11628X(processInfo.name, str)) {
                return processInfo;
            }
        }
        return null;
    }

    /* renamed from: X */
    private boolean m11628X(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(str2) || str.startsWith(str2) || str.endsWith(str2);
    }

    /* renamed from: d */
    private void m11623d(aka akaVar) {
        C3966zn.C3968a m1278I = C3966zn.m1278I(null, akaVar.m11335zQ());
        if (m1278I != null) {
            akaVar.m11345a(m1278I.f4097WN, m1278I.f4098WO, m1278I.mode, m1278I.size, m1278I.f4099WP);
        }
    }

    /* renamed from: a */
    private void m11627a(int i, aka akaVar) {
        ArrayList arrayList = new ArrayList();
        int m11336zP = akaVar.m11336zP();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(m11336zP));
        arrayList.add(akaVar.m11335zQ());
        if (m11336zP == 99 || m11336zP == 0) {
            String[] strArr = {Integer.toOctalString(akaVar.getMode()), Integer.toString(akaVar.m11333zS()), Integer.toString(akaVar.m11332zT()), akaVar.m11331zU()};
            if (m11336zP == 99) {
                arrayList.add(akaVar.m11334zR());
                arrayList.add(Boolean.valueOf(akaVar.m11348Aa()));
            } else if (m11336zP == 0) {
                arrayList.add(akaVar.m11341dG());
                arrayList.add(Long.valueOf(akaVar.getSize()));
                arrayList.add(akaVar.m11339lk());
            }
            arrayList.add(strArr);
            arrayList.add(this.arH);
        } else if (m11336zP == 1) {
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
        ady.m12308tK().m12309i(arrayList, i == 2);
    }

    /* renamed from: xU */
    public String m11617xU() {
        return this.arD;
    }

    /* renamed from: p */
    public void m11619p(int i, boolean z) {
        String m10982Eu = aks.m11143BP().m10982Eu();
        String fileMD5 = C3563rs.getFileMD5(new File(m11618xT().m11617xU()));
        if (!TextUtils.isEmpty(m10982Eu) && !m10982Eu.equalsIgnoreCase(fileMD5)) {
            if (i == 0) {
                z = true;
                i = 1;
            } else {
                z = true;
            }
        }
        if (z) {
            beg.m7461Zj().m7454a(this.arJ, Integer.valueOf(i));
        } else if (adk.m12539b(aks.m11143BP().m10981Ev(), System.currentTimeMillis(), 86400000L)) {
            beg.m7461Zj().m7454a(this.arJ, Integer.valueOf(i));
        }
    }

    /* renamed from: dA */
    public void m11622dA(int i) {
        try {
            String fileMD5 = C3563rs.getFileMD5(new File(m11618xT().m11617xU()));
            m11621dz(i);
            aks.m11143BP().m10732he(fileMD5);
            aks.m11143BP().m10829bn(System.currentTimeMillis());
        } catch (Exception e) {
        }
    }
}
