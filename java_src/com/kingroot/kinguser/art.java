package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.common.check.ScriptFileCheckUnit;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public class art {
    private static final String TAG = aiq.asa + "_RiskPermanentRootCleaner";
    private static final Set<String> aMe = new HashSet();
    private Set<String> aMf = new HashSet();
    private Set<String> aMg = new HashSet();

    /* renamed from: gp */
    public boolean m9509gp(int i) {
        Set<String> m9508gq = m9508gq(i);
        if (m9508gq.size() == 0) {
            return true;
        }
        this.aMf = m9511c(ajg.m11472zi(), m9508gq);
        m9514a(ajg.m11472zi(), this.aMf);
        if (ScriptFileCheckUnit.m4251go(bha.bpy)) {
            this.aMg = m9511c(bha.bpy, m9508gq);
            m9514a(bha.bpy, this.aMg);
        }
        return this.aMf.size() == 0 && this.aMg.size() == 0;
    }

    /* renamed from: a */
    private void m9514a(String str, Set<String> set) {
        if (set.size() > 0) {
        }
    }

    /* renamed from: gq */
    private Set<String> m9508gq(int i) {
        return new HashSet(bca.m7738Xa().m7736hf(i));
    }

    /* renamed from: MH */
    public synchronized boolean m9520MH() {
        if (!m9518Nq()) {
            m9519Np();
            RebootStat m6979S = bho.m6979S("risk_permanent_root_cleaner", 0);
            bho.m6976b(m6979S, 1, "");
            boolean m9512b = m9512b(ajg.m11472zi(), this.aMf);
            boolean m9512b2 = m9512b(bha.bpy, this.aMg);
            bho.m6973d(m6979S, null);
            if (m9512b && m9512b2) {
                ady.m12308tK().mo1746bi(100394);
            } else {
                ady.m12308tK().mo1746bi(100395);
                m9517Nr();
            }
        }
        return true;
    }

    /* renamed from: Np */
    private void m9519Np() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.aMf);
        hashSet.addAll(this.aMg);
        bbz.m7742c(hashSet, aMe);
    }

    /* renamed from: b */
    private boolean m9512b(String str, Set<String> set) {
        if (set == null || set.isEmpty()) {
            return true;
        }
        String m9507in = m9507in(str);
        String m9510d = m9510d(m9507in, set);
        if (TextUtils.equals(m9507in, m9510d)) {
            return true;
        }
        return m9513as(m9510d, str);
    }

    /* renamed from: Nq */
    private boolean m9518Nq() {
        return m9516Ns() || m9515Nt();
    }

    /* renamed from: Nr */
    private void m9517Nr() {
        int m11017EL = aks.m11143BP().m11017EL() + 1;
        aks.m11143BP().m10776eE(m11017EL < 3 ? m11017EL : 3);
    }

    /* renamed from: Ns */
    private boolean m9516Ns() {
        if (aks.m11143BP().m11019EJ()) {
            return true;
        }
        RebootStat m6979S = bho.m6979S("risk_permanent_root_cleaner", 0);
        bho.m6977a(m6979S, null);
        if (m6979S.linuxRebootCount >= 1 || m6979S.androidRebootCount >= 1) {
            m9517Nr();
            aks.m11143BP().m11018EK();
            ady.m12308tK().mo1746bi(100396);
            return true;
        }
        return false;
    }

    /* renamed from: Nt */
    private boolean m9515Nt() {
        return aks.m11143BP().m11017EL() >= 3;
    }

    /* renamed from: c */
    private Set<String> m9511c(String str, Set<String> set) {
        String m9507in = m9507in(str);
        if (TextUtils.isEmpty(m9507in)) {
            return aMe;
        }
        HashSet hashSet = new HashSet();
        for (String str2 : set) {
            if (m9507in.contains(str2)) {
                hashSet.add(str2);
            }
        }
        return hashSet;
    }

    /* renamed from: in */
    private String m9507in(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return "";
        }
        try {
            return new String(C3563rs.m2355cy(file.getAbsolutePath()));
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: d */
    private String m9510d(String str, Set<String> set) {
        String[] split;
        boolean z;
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split("\n")) {
            Iterator<String> it = set.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (str2.contains(it.next())) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                sb.append(str2 + "\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: as */
    private boolean m9513as(String str, String str2) {
        try {
            String str3 = C3958zl.getFilesDir() + File.separator + "hakuna-matata.tmp";
            C3563rs.m2362c(str.getBytes(), str3);
            ScriptFileCheckUnit.m4255ae(str3, str2);
            return TextUtils.equals(str, m9507in(str2));
        } catch (Exception e) {
            return false;
        }
    }
}
