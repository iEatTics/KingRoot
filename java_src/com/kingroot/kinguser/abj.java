package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class abj {
    /* renamed from: en */
    public static boolean m12822en(String str) {
        VTCmdResult m12827Q;
        String trim = str.trim();
        if (aav.m12905ql()) {
            m12827Q = m12825a("sh", new VTCommand(trim + " -v", trim + " -v", 2000L));
        } else {
            m12827Q = m12827Q("sh", trim + " -v");
        }
        if (!m12827Q.success() || m12827Q.mStdOut == null || !m12827Q.mStdOut.contains("kinguser_su")) {
            return false;
        }
        return true;
    }

    /* renamed from: eo */
    public static String m12821eo(String str) {
        String str2 = null;
        VTCmdResult m12827Q = m12827Q("sh", str.trim() + " -v");
        if (m12827Q.success() && m12827Q.mStdOut != null && m12827Q.mStdOut.contains("kinguser_su")) {
            String[] split = m12827Q.mStdOut.split(":");
            if (split.length > 0) {
                str2 = split[0];
            }
        }
        return str2 != null ? str2 : "";
    }

    /* renamed from: ep */
    public static abm m12820ep(String str) {
        return m12828P(str, "");
    }

    /* renamed from: P */
    public static abm m12828P(String str, String str2) {
        abm abmVar;
        try {
            if (TextUtils.isEmpty(str2)) {
                abmVar = new abm(str);
            } else {
                abmVar = new abm(str, str2);
            }
        } catch (Exception e) {
            abmVar = null;
        }
        try {
            VTCmdResult m12801f = abmVar.m12801f("id", 30000L);
            if (!(m12801f.success() && m12801f.mStdOut != null && m12801f.mStdOut.contains("uid=0"))) {
                abmVar.shutdown();
                abmVar = null;
            }
            if (abmVar != null && abd.m12839qb() >= 14 && abd.m12839qb() < 21) {
                abmVar.m12801f("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
                return abmVar;
            }
            return abmVar;
        } catch (Exception e2) {
            if (abmVar != null) {
                abmVar.shutdown();
                return null;
            }
            return abmVar;
        }
    }

    /* renamed from: eq */
    public static abm m12819eq(String str) {
        abm abmVar;
        try {
            abmVar = new abm(str);
            if (abmVar != null) {
                try {
                    if (abd.m12839qb() >= 14 && abd.m12839qb() < 21) {
                        abmVar.m12801f("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
                        return abmVar;
                    }
                    return abmVar;
                } catch (Exception e) {
                    if (abmVar != null) {
                        abmVar.shutdown();
                        return null;
                    }
                    return abmVar;
                }
            }
            return abmVar;
        } catch (Exception e2) {
            abmVar = null;
        }
    }

    /* renamed from: a */
    public static boolean m12826a(abm abmVar) {
        if (abmVar == null) {
            return false;
        }
        try {
            VTCmdResult m12801f = abmVar.m12801f("id", 30000L);
            if (!m12801f.success() || m12801f.mStdOut == null) {
                return false;
            }
            return m12801f.mStdOut.contains("uid=0");
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: er */
    public static boolean m12818er(String str) {
        abm m12820ep = m12820ep(str);
        if (m12820ep != null) {
            m12820ep.shutdown();
            return true;
        }
        return false;
    }

    /* renamed from: Q */
    public static VTCmdResult m12827Q(String str, String str2) {
        return m12823d(str, str2, true);
    }

    /* renamed from: d */
    public static VTCmdResult m12823d(String str, String str2, boolean z) {
        return m12825a(str, new VTCommand(str2, str2, z ? 120000L : 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static VTCmdResult m12825a(String str, VTCommand vTCommand) {
        abm abmVar;
        VTCmdResult vTCmdResult;
        abm abmVar2 = null;
        try {
            abmVar = new abm(str);
        } catch (Exception e) {
            abmVar = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            acp.add(abmVar);
            if (abd.m12839qb() >= 14 && abd.m12839qb() < 21) {
                abmVar.m12801f("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
            }
            VTCmdResult m12806b = abmVar.m12806b(vTCommand);
            if (abmVar != null) {
                abmVar.shutdown();
                vTCmdResult = m12806b;
            } else {
                vTCmdResult = m12806b;
            }
        } catch (Exception e2) {
            if (abmVar != null) {
                abmVar.shutdown();
                vTCmdResult = null;
            } else {
                vTCmdResult = null;
            }
            if (vTCmdResult != null) {
            }
        } catch (Throwable th2) {
            abmVar2 = abmVar;
            th = th2;
            if (abmVar2 != null) {
                abmVar2.shutdown();
            }
            throw th;
        }
        return vTCmdResult != null ? new VTCmdResult(vTCommand.mCmdFlag, 2, "", "Run Cmd Exception") : vTCmdResult;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<VTCmdResult> m12824b(String str, List<VTCommand> list) {
        abm abmVar;
        List<VTCmdResult> list2;
        abm abmVar2 = null;
        try {
            abmVar = new abm(str);
        } catch (Exception e) {
            abmVar = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (abd.m12839qb() >= 14 && abd.m12839qb() < 21) {
                abmVar.m12801f("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
            }
            List<VTCmdResult> m12808R = abmVar.m12808R(list);
            if (abmVar != null) {
                abmVar.shutdown();
                list2 = m12808R;
            } else {
                list2 = m12808R;
            }
        } catch (Exception e2) {
            if (abmVar != null) {
                abmVar.shutdown();
                list2 = null;
            } else {
                list2 = null;
            }
            if (list2 != null) {
            }
        } catch (Throwable th2) {
            abmVar2 = abmVar;
            th = th2;
            if (abmVar2 != null) {
                abmVar2.shutdown();
            }
            throw th;
        }
        return list2 != null ? new ArrayList() : list2;
    }
}
