package com.kingroot.kinguser;

import android.os.RemoteException;
import com.king.uranus.C0385aS;
import com.king.uranus.InterfaceC0393bd;
import com.king.uranus.InterfaceC0394bh;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;
/* renamed from: com.kingroot.kinguser.lh */
/* loaded from: classes.dex */
public class C3276lh {

    /* renamed from: uM */
    private static C3275lg f3003uM;

    /* renamed from: uN */
    private static C3275lg f3004uN;

    /* renamed from: uO */
    private static String f3005uO;

    /* renamed from: uP */
    private static final C0385aS[] f3006uP = new C0385aS[0];

    /* renamed from: uQ */
    private static final String[] f3007uQ = new String[0];

    /* renamed from: dP */
    public static synchronized C3275lg m3179dP() {
        C3180if m3497bW;
        C3275lg c3275lg = null;
        synchronized (C3276lh.class) {
            if (f3003uM != null) {
                c3275lg = f3003uM;
            } else {
                if (C3183ih.m3497bW() != null) {
                    String str = m3497bW.m3553bF() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m3497bW.m3551bH();
                    C3275lg m3183bb = m3183bb(str);
                    if (m3183bb == null || m3186a(m3183bb)) {
                        f3005uO = str;
                        f3003uM = m3183bb;
                        c3275lg = f3003uM;
                    } else {
                        if (m3183bb != null) {
                            f3004uN = m3183bb;
                        }
                        String str2 = str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + 40;
                        C3275lg m3183bb2 = m3183bb(str2);
                        if (m3183bb2 == null || m3186a(m3183bb2)) {
                            f3005uO = str2;
                            f3003uM = m3183bb2;
                            c3275lg = f3003uM;
                        } else {
                            f3005uO = str2;
                            f3004uN = m3183bb2;
                        }
                    }
                }
            }
        }
        return c3275lg;
    }

    public static boolean isAlive() {
        return m3179dP() != null && C3260kv.isEnabled();
    }

    /* renamed from: bb */
    private static C3275lg m3183bb(String str) {
        return C3275lg.m3192ba(str);
    }

    public static String getName() {
        return f3005uO != null ? f3005uO : m3178dQ();
    }

    /* renamed from: dQ */
    private static String m3178dQ() {
        C3180if m3497bW = C3183ih.m3497bW();
        String str = m3497bW.m3553bF() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m3497bW.m3551bH();
        C3275lg m3183bb = m3183bb(str);
        if (m3183bb == null || m3186a(m3183bb)) {
            synchronized (C3276lh.class) {
                f3003uM = m3183bb;
                f3005uO = str;
            }
        } else {
            synchronized (C3276lh.class) {
                f3005uO = str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + 40;
                f3003uM = null;
                f3004uN = m3183bb;
            }
        }
        return f3005uO;
    }

    /* renamed from: a */
    private static boolean m3186a(C3275lg c3275lg) {
        return c3275lg.getVersion() == 40;
    }

    public static int start(int i) {
        String m3557bB;
        int i2;
        int i3 = 0;
        String name = getName();
        f3003uM = m3183bb(name);
        if (f3003uM != null) {
            f3003uM.m3195ae(i);
            C3332mx.m2961eL().m2954f(6, 50331648);
            return 50331648;
        }
        C3180if m3497bW = C3183ih.m3497bW();
        String packageName = m3497bW.getPackageName();
        if (((InterfaceC3281lm) C3183ih.m3501a(InterfaceC3281lm.class)).mo3136bc("system_server") == 64) {
            m3557bB = m3497bW.m3556bC();
        } else {
            m3557bB = m3497bW.m3557bB();
        }
        C3248kj c3248kj = new C3248kj(new C3255kq(m3557bB, "start", packageName, packageName + "+" + name + "+40"), "system_server", 0, C3183ih.m3497bW().m3537bt(), 0);
        if (f3004uN != null) {
            if (!m3181d(c3248kj)) {
                return 50659328;
            }
        } else {
            int m3182c = m3182c(c3248kj);
            if (m3182c != 50331648) {
                return m3182c;
            }
        }
        while (true) {
            if (i3 >= 100) {
                break;
            }
            f3003uM = m3183bb(name);
            if (f3003uM != null) {
                f3003uM.m3195ae(i);
                break;
            }
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e) {
            }
            i3++;
        }
        if (f3003uM != null) {
            i2 = 50331648;
        } else if (f3004uN != null) {
            i2 = 50331650;
        } else {
            i2 = 50331649;
        }
        C3332mx.m2961eL().m2954f(6, i2);
        return i2;
    }

    public static void setEnabled(boolean z) {
        C3275lg m3179dP = m3179dP();
        if (m3179dP != null) {
            m3179dP.setEnabled(z);
        }
    }

    /* renamed from: c */
    private static int m3182c(InterfaceC3224jr interfaceC3224jr) {
        int m3168c;
        InterfaceC3145ha mo3366a = C3227ju.m3359cK().mo3366a(interfaceC3224jr, new C3301mc(), (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class));
        int mo3339aJ = mo3366a.mo3339aJ();
        switch (mo3339aJ) {
            case 0:
                m3168c = C3279lk.m3168c(50528256, C3279lk.m3171a(mo3366a));
                break;
            case 1:
                return 50331648;
            case 2:
            default:
                m3168c = 50397184 + mo3339aJ;
                break;
            case 3:
                m3168c = C3279lk.m3168c(50462720, C3279lk.m3171a(mo3366a));
                break;
        }
        if (m3168c == 50528256) {
            return 50331648;
        }
        return m3168c;
    }

    /* renamed from: Z */
    private static void m3188Z(int i) {
        InterfaceC3162hr m3540bS = C3183ih.m3497bW().m3540bS();
        if (m3540bS != null) {
            try {
                m3540bS.m3607L(i);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: d */
    private static boolean m3181d(InterfaceC3224jr interfaceC3224jr) {
        boolean z;
        m3188Z(16777234);
        C3180if m3497bW = C3183ih.m3497bW();
        String mo3279w = interfaceC3224jr.mo3279w();
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (interfaceC3195it.mo3126h(true)) {
            try {
                String m3354a = new C3230jw(interfaceC3195it).m3354a(m3497bW.getPackageName(), new File(mo3279w));
                if (m3354a != null) {
                    if (f3004uN != null) {
                        try {
                            z = f3004uN.m3189h(2, "1+" + interfaceC3224jr.getPid() + "+" + m3354a + "+start++" + interfaceC3224jr.mo3282cH().length() + "+" + interfaceC3224jr.mo3282cH());
                            try {
                                f3004uN.setEnabled(false);
                            } catch (RemoteException e) {
                            }
                        } catch (RemoteException e2) {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    return z;
                }
                return false;
            } catch (FileNotFoundException e3) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: af */
    public static InterfaceC0393bd m3184af(int i) {
        C3275lg m3179dP = m3179dP();
        if (m3179dP == null) {
            return null;
        }
        return m3179dP.m3194af(i);
    }

    /* renamed from: a */
    public static List<InterfaceC0393bd> m3185a(C3286lr c3286lr) {
        C3275lg m3179dP = m3179dP();
        List<InterfaceC0393bd> list = null;
        if (m3179dP != null) {
            list = m3179dP.m3196a(c3286lr);
        }
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    /* renamed from: a */
    public static boolean m3187a(InterfaceC0394bh interfaceC0394bh) {
        C3275lg m3179dP = m3179dP();
        if (m3179dP != null) {
            try {
                m3179dP.m3193b(interfaceC0394bh.asBinder());
                return true;
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    /* renamed from: e */
    public static int m3177e(InterfaceC3280ll interfaceC3280ll) {
        C3275lg m3179dP = m3179dP();
        if (m3179dP != null) {
            try {
                return m3179dP.m3191d(interfaceC3280ll) ? 0 : 100663301;
            } catch (RemoteException e) {
                return 100663300;
            }
        }
        return 100663298;
    }

    /* renamed from: dO */
    public static int m3180dO() {
        C3275lg m3179dP = m3179dP();
        if (m3179dP != null) {
            return m3179dP.m3190dO();
        }
        return 0;
    }
}
