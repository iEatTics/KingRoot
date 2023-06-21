package com.kingroot.kinguser;

import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class bag {
    private static final Object bdK = new Object();

    /* renamed from: cq */
    private static ArrayList<Long> m7952cq(long j) {
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(j));
        return arrayList;
    }

    /* renamed from: hG */
    private static String m7951hG(int i) {
        return i + "";
    }

    /* renamed from: a */
    private static C3023ek m7959a(int i, int i2, String str, String str2, long j) {
        C3023ek c3023ek = new C3023ek();
        c3023ek.f2601id = i;
        c3023ek.f2600gv = i2;
        c3023ek.f2602pi = str;
        c3023ek.f2603pj = str2;
        if (j != 0) {
            c3023ek.f2604pk = m7952cq(j);
        }
        c3023ek.count = 1;
        c3023ek.time = System.currentTimeMillis();
        return c3023ek;
    }

    /* renamed from: a */
    private static C3021ei m7958a(int i, int i2, C3023ek... c3023ekArr) {
        C3021ei c3021ei = new C3021ei();
        c3021ei.f2595mw = bvz.m5351il();
        c3021ei.f2596nO = bvz.aiG();
        c3021ei.f2597pg = bal.m7917Vz();
        if (C3947zc.m1329f(c3021ei.f2597pg)) {
            c3021ei.f2597pg = new ArrayList<>();
        }
        Iterator<C3024el> it = c3021ei.f2597pg.iterator();
        while (it.hasNext()) {
            C3024el next = it.next();
            if (next.f2607id == i && next.version == i2) {
                next.f2608pm.addAll(Arrays.asList(c3023ekArr));
                return c3021ei;
            }
        }
        C3024el c3024el = new C3024el();
        c3024el.f2607id = i;
        c3024el.version = i2;
        c3024el.f2608pm = new ArrayList<>();
        c3024el.f2608pm.addAll(Arrays.asList(c3023ekArr));
        c3021ei.f2597pg.add(c3024el);
        return c3021ei;
    }

    /* renamed from: a */
    public static synchronized void m7957a(C3016ed c3016ed, int i, String str, boolean z) {
        synchronized (bag.class) {
            C3023ek m7959a = m7959a(50200, i, str, (String) null, c3016ed != null ? c3016ed.f2561ox : 0L);
            int m5351il = bvz.m5351il();
            int aiG = bvz.aiG();
            if (!z) {
                C3021ei m7958a = m7958a(m5351il, aiG, m7959a);
                if (aju.m11401a(KUApplication.m13453ge(), m7958a, (AtomicReference<C3025em>) null) == 0) {
                    bal.m7912bK(m7958a.f2597pg);
                }
            }
            bal.m7915a(m5351il, aiG, m7959a);
        }
    }

    /* renamed from: a */
    public static synchronized void m7956a(PluginUpgradeInfo pluginUpgradeInfo, int i, boolean z) {
        synchronized (bag.class) {
            C3023ek m7959a = m7959a(pluginUpgradeInfo.m2625Vt() ? 50124 : 50104, 0, (String) null, m7951hG(i), pluginUpgradeInfo.bdT);
            if (!z) {
                C3021ei m7958a = m7958a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
                if (aju.m11401a(KUApplication.m13453ge(), m7958a, (AtomicReference<C3025em>) null) == 0) {
                    bal.m7912bK(m7958a.f2597pg);
                }
            }
            bal.m7915a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
        }
    }

    /* renamed from: b */
    public static synchronized void m7953b(PluginUpgradeInfo pluginUpgradeInfo, boolean z, int i, boolean z2) {
        C3021ei m7958a;
        int i2 = 50006;
        synchronized (bag.class) {
            if (pluginUpgradeInfo.m2625Vt()) {
                if (z) {
                    i2 = 50128;
                }
            } else if (z) {
                i2 = 50108;
            }
            C3023ek m7959a = m7959a(i2, 0, (String) null, m7951hG(i), pluginUpgradeInfo.bdT);
            C3023ek m7959a2 = z ? m7959a(50004, 0, (String) null, m7951hG(i), pluginUpgradeInfo.bdT) : null;
            if (!z2) {
                if (m7959a2 == null) {
                    m7958a = m7958a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
                } else {
                    m7958a = m7958a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a, m7959a2);
                }
                if (aju.m11401a(KUApplication.m13453ge(), m7958a, (AtomicReference<C3025em>) null) == 0) {
                    bal.m7912bK(m7958a.f2597pg);
                }
            }
            bal.m7915a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
            if (m7959a2 != null) {
                bal.m7915a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a2);
            }
        }
    }

    /* renamed from: b */
    public static synchronized void m7954b(PluginUpgradeInfo pluginUpgradeInfo, int i, boolean z) {
        synchronized (bag.class) {
            C3023ek m7959a = m7959a(pluginUpgradeInfo.m2625Vt() ? 50125 : 50105, 0, (String) null, m7951hG(i), pluginUpgradeInfo.bdT);
            if (!z) {
                C3021ei m7958a = m7958a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
                if (aju.m11401a(KUApplication.m13453ge(), m7958a, (AtomicReference<C3025em>) null) == 0) {
                    bal.m7912bK(m7958a.f2597pg);
                }
            }
            bal.m7915a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
        }
    }

    /* renamed from: a */
    public static synchronized void m7955a(PluginUpgradeInfo pluginUpgradeInfo, boolean z, int i, int i2, boolean z2) {
        int i3;
        synchronized (bag.class) {
            if (pluginUpgradeInfo.m2625Vt()) {
                i3 = z ? 50122 : 50123;
            } else {
                i3 = z ? 50102 : 50103;
            }
            C3023ek m7959a = m7959a(i3, z ? 0 : i, (String) null, m7951hG(i2), pluginUpgradeInfo.bdT);
            if (!z2) {
                C3021ei m7958a = m7958a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
                if (aju.m11401a(KUApplication.m13453ge(), m7958a, (AtomicReference<C3025em>) null) == 0) {
                    bal.m7912bK(m7958a.f2597pg);
                }
            }
            bal.m7915a(pluginUpgradeInfo.pluginId, pluginUpgradeInfo.versionCode, m7959a);
        }
    }

    /* renamed from: Vq */
    public static void m7960Vq() {
        synchronized (bdK) {
            C3021ei c3021ei = new C3021ei();
            c3021ei.f2595mw = bvz.m5351il();
            c3021ei.f2596nO = bvz.aiG();
            c3021ei.f2597pg = bal.m7917Vz();
            if (!C3947zc.m1329f(c3021ei.f2597pg)) {
                if (aju.m11401a(KUApplication.m13453ge(), c3021ei, (AtomicReference<C3025em>) null) == 0) {
                    bal.m7912bK(c3021ei.f2597pg);
                }
            }
        }
    }
}
