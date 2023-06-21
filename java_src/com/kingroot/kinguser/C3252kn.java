package com.kingroot.kinguser;

import android.support.p004v4.view.InputDeviceCompat;
import com.king.uranus.BinderC0398bv;
import java.util.ArrayList;
import oicq.wlogin_sdk.request.WtloginHelper;
/* renamed from: com.kingroot.kinguser.kn */
/* loaded from: classes.dex */
public final class C3252kn implements InterfaceC3161hq {

    /* renamed from: uc */
    private static volatile C3252kn f2961uc;

    /* renamed from: ud */
    private final RunnableC3305mg f2962ud = new C3253ko(this);

    private C3252kn() {
    }

    /* renamed from: db */
    public static synchronized C3252kn m3254db() {
        C3252kn c3252kn;
        synchronized (C3252kn.class) {
            if (f2961uc == null) {
                f2961uc = new C3252kn();
            }
            c3252kn = f2961uc;
        }
        return c3252kn;
    }

    @Override // com.kingroot.kinguser.InterfaceC3161hq
    public int start(int i) {
        m3266W(i);
        return m3265X(i);
    }

    /* renamed from: W */
    private boolean m3266W(int i) {
        if (i != 2 && i != 1) {
            throw new IllegalArgumentException();
        }
        return false;
    }

    /* renamed from: X */
    private synchronized int m3265X(int i) {
        int i2;
        try {
            m3253dc();
            i2 = m3257aa(i);
            m3264Y(i2);
        } catch (Throwable th) {
            C3268la.m3208dp().m3210c(th);
            i2 = 16777225;
        }
        return i2;
    }

    /* renamed from: dc */
    private void m3253dc() {
        m3263Z(16777230);
        C3183ih.m3495bY();
        C3285lq.m3161dW().m3160dX();
        C3332mx.m2961eL().m2960eM();
        C3336na.m2931eT().m2933b(0L);
    }

    /* renamed from: Y */
    private void m3264Y(int i) {
        C3332mx.m2961eL().m2958eO();
        if (i != 0) {
            C3249kk.m3277cY().mo3167a("last_start_uranus_result", i);
        }
        C3332mx.m2961eL().m2971a(15000L);
        C3336na.m2931eT().m2933b(15000L);
        m3263Z(i);
    }

    /* renamed from: Z */
    private void m3263Z(int i) {
        InterfaceC3162hr m3540bS = C3183ih.m3497bW().m3540bS();
        if (m3540bS != null) {
            try {
                m3540bS.m3607L(i);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: aa */
    private int m3257aa(int i) {
        if (mo3267K(i)) {
            C3268la.m3208dp().m3199l(true);
            return 0;
        } else if (!C3260kv.isEnabled()) {
            return 16777226;
        } else {
            if (!C3183ih.m3497bW().m3545bN() && C3304mf.m3090ey()) {
                return 16777231;
            }
            if (!((InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class)).mo3126h(true)) {
                return 16777218;
            }
            C3287ls.m3151ec().m3150ed();
            if (!C3277li.m3175dR()) {
                C3332mx.m2961eL().m2967ap(16777474);
                return 16777474;
            } else if (C3277li.m3174dS()) {
                C3332mx.m2961eL().m2967ap(16777473);
                return 16777473;
            } else {
                m3263Z(InputDeviceCompat.SOURCE_JOYSTICK);
                int m3112eq = C3297lz.m3112eq();
                return m3112eq == 16777216 ? m3256ab(i) : m3112eq;
            }
        }
    }

    /* renamed from: ab */
    private int m3256ab(int i) {
        InterfaceC3158hn interfaceC3158hn = (InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class);
        m3263Z(16777233);
        int m3199l = C3268la.m3208dp().m3199l(true);
        interfaceC3158hn.mo3404G(m3199l);
        if (m3199l != 67108864) {
        }
        C3180if m3497bW = C3183ih.m3497bW();
        if (i == 2) {
            C3332mx.m2961eL().m2968ao(2);
            int m3261a = m3261a(interfaceC3158hn, m3497bW.m3545bN());
            if (m3261a != 33554432) {
                return m3261a;
            }
        } else {
            C3332mx.m2961eL().m2968ao(4);
        }
        int start = C3276lh.start(i);
        interfaceC3158hn.mo3402I(start);
        if (start != 50331648) {
            return start;
        }
        BinderC0398bv.m13661aT().m13660aU();
        if (i == 2) {
            m3258a(C3216jj.m3412cv(), C3216jj.m3411cw());
        }
        return 0;
    }

    /* renamed from: a */
    private int m3261a(InterfaceC3158hn interfaceC3158hn, boolean z) {
        int m3260a = m3260a(C3216jj.m3415aN("zygote"));
        interfaceC3158hn.mo3403H(m3260a);
        if (m3260a == 33554432) {
            if (z && C3304mf.m3090ey()) {
                int m3260a2 = m3260a(C3216jj.m3415aN("zygote64"));
                interfaceC3158hn.mo3403H(m3260a2);
                if (m3260a2 != 33554432) {
                    return m3260a2;
                }
            }
            return WtloginHelper.SigType.WLOGIN_DA2;
        }
        return m3260a;
    }

    /* renamed from: a */
    private int m3260a(C3248kj c3248kj) {
        int m3168c;
        InterfaceC3145ha m3255b = m3255b(c3248kj);
        int mo3339aJ = m3255b.mo3339aJ();
        switch (mo3339aJ) {
            case 0:
                m3168c = C3279lk.m3168c(33751040, C3279lk.m3171a(m3255b));
                break;
            case 1:
                if (C3276lh.isAlive()) {
                    return WtloginHelper.SigType.WLOGIN_DA2;
                }
                int i = C3249kk.m3277cY().getInt("last_start_uranus_result");
                if (i == 0) {
                    return 16777229;
                }
                return i;
            case 2:
            default:
                m3168c = 33619968 + mo3339aJ;
                break;
            case 3:
                m3168c = C3279lk.m3168c(33685504, C3279lk.m3171a(m3255b));
                break;
        }
        return m3168c == 33751040 ? WtloginHelper.SigType.WLOGIN_DA2 : m3168c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public InterfaceC3145ha m3255b(InterfaceC3224jr interfaceC3224jr) {
        return C3227ju.m3359cK().mo3366a(interfaceC3224jr, new C3301mc(), (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class));
    }

    /* renamed from: a */
    private void m3258a(C3255kq c3255kq, C3255kq c3255kq2) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(c3255kq);
        arrayList.add(c3255kq2);
        this.f2962ud.m3084d(arrayList, true);
    }

    @Override // com.kingroot.kinguser.InterfaceC3161hq
    public void registerClientObserver(InterfaceC3156hl interfaceC3156hl) {
        BinderC0398bv.m13661aT().registerClientObserver(interfaceC3156hl);
    }

    @Override // com.kingroot.kinguser.InterfaceC3161hq
    public void unregisterClientObserver(InterfaceC3156hl interfaceC3156hl) {
        BinderC0398bv.m13661aT().unregisterClientObserver(interfaceC3156hl);
    }

    @Override // com.kingroot.kinguser.InterfaceC3161hq
    /* renamed from: a */
    public InterfaceC3159ho mo3262a(InterfaceC3153hi interfaceC3153hi) {
        return C3254kp.m3251a(interfaceC3153hi);
    }

    @Override // com.kingroot.kinguser.InterfaceC3161hq
    /* renamed from: K */
    public boolean mo3267K(int i) {
        m3266W(i);
        int m3180dO = C3276lh.m3180dO();
        return m3180dO == 2 || i == m3180dO;
    }
}
