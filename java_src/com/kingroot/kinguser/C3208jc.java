package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.king.uranus.C0371A;
import com.king.uranus.C0373C;
import com.king.uranus.C0384a;
import com.king.uranus.C0391b;
import com.king.uranus.C0409d;
import com.king.uranus.C0410e;
import com.king.uranus.C0416k;
import com.king.uranus.C0419n;
import com.king.uranus.C0422q;
import com.king.uranus.C0428w;
import com.king.uranus.C0429x;
import com.king.uranus.C0430y;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.jc */
/* loaded from: classes.dex */
public final class C3208jc {
    /* renamed from: a */
    private static void m3442a(int i, String str, String str2, C3314mn c3314mn, C3314mn c3314mn2) {
        c3314mn.mo3067bu("UTF-8");
        c3314mn.m3065aj(i);
        c3314mn.m3064bv(str);
        c3314mn.m3063bw(str2);
        c3314mn2.mo3067bu("UTF-8");
    }

    /* renamed from: a */
    private static int m3436a(Context context, C3314mn c3314mn, C3314mn c3314mn2, boolean z, InterfaceC3207jb interfaceC3207jb) {
        C3236ka c3236ka;
        Throwable th;
        C3236ka c3236ka2;
        int i;
        try {
            byte[] mo2912k = interfaceC3207jb.mo2912k(c3314mn.mo3062eD());
            c3236ka = C3236ka.m3315e(context, interfaceC3207jb.mo2918cs());
            try {
                c3236ka.setRequestMethod("POST");
                c3236ka.m3314o(mo2912k);
                c3236ka.m3327I();
                AtomicReference<byte[]> atomicReference = new AtomicReference<>();
                int m3322a = c3236ka.m3322a(false, atomicReference);
                if (m3322a != 0) {
                    if (c3236ka != null) {
                        c3236ka.close();
                    }
                    return m3322a;
                }
                byte[] bArr = atomicReference.get();
                if (z || bArr == null || bArr.length <= 0) {
                    i = m3322a;
                } else {
                    byte[] mo2911l = interfaceC3207jb.mo2911l(bArr);
                    if (mo2911l != null) {
                        c3314mn2.mo3058s(mo2911l);
                        i = m3322a;
                    } else {
                        i = -6000;
                    }
                }
                if (c3236ka != null) {
                    c3236ka.close();
                    return i;
                }
                return i;
            } catch (IllegalArgumentException e) {
                c3236ka2 = c3236ka;
                if (c3236ka2 != null) {
                    c3236ka2.close();
                    return -6057;
                }
                return -6057;
            } catch (Exception e2) {
                if (c3236ka != null) {
                    c3236ka.close();
                    return -6000;
                }
                return -6000;
            } catch (Throwable th2) {
                if (c3236ka != null) {
                    c3236ka.close();
                    return -6000;
                }
                return -6000;
            }
        } catch (IllegalArgumentException e3) {
            c3236ka2 = null;
        } catch (Exception e4) {
            c3236ka = null;
        } catch (Throwable th3) {
            c3236ka = null;
            th = th3;
        }
    }

    /* renamed from: a */
    public static synchronized int m3435a(Context context, List<C0430y> list, InterfaceC3207jb interfaceC3207jb) {
        int i = 0;
        synchronized (C3208jc.class) {
            if (list != null) {
                if (list.size() != 0) {
                    C3314mn c3314mn = new C3314mn(true);
                    C3314mn c3314mn2 = new C3314mn(true);
                    m3442a(0, "report", "reportSoftUsageInfo", c3314mn, c3314mn2);
                    m3437a(context, interfaceC3207jb);
                    c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
                    c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
                    c3314mn.put("suikey", interfaceC3207jb.mo2909p(context));
                    c3314mn.put("vecsui", list);
                    i = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public static int m3434a(Context context, AtomicReference<C0371A> atomicReference, InterfaceC3207jb interfaceC3207jb) {
        C3314mn c3314mn = new C3314mn(true);
        C3314mn c3314mn2 = new C3314mn(true);
        m3437a(context, interfaceC3207jb);
        m3442a(6, "tipsmain", "getMainTips", c3314mn, c3314mn2);
        c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
        c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
        c3314mn.put("reqinfo", interfaceC3207jb.mo2919cr());
        int m3436a = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
        if (m3436a == 0) {
            C0371A c0371a = (C0371A) c3314mn2.m3068b("cmdinfo", new C0371A());
            if (c0371a != null) {
                atomicReference.set(c0371a);
            }
            return 0;
        }
        return m3436a;
    }

    /* renamed from: a */
    public static int m3439a(Context context, C0416k c0416k, InterfaceC3207jb interfaceC3207jb) {
        C3314mn c3314mn = new C3314mn(true);
        C3314mn c3314mn2 = new C3314mn(true);
        m3442a(10, "info", "reportTipsRes", c3314mn, c3314mn2);
        c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
        c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
        c3314mn.put("cmdinfores", c0416k);
        int m3436a = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
        if (m3436a != 0) {
            return m3436a;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m3441a(Context context, C0391b c0391b, AtomicReference<C0384a> atomicReference, InterfaceC3207jb interfaceC3207jb) {
        C3314mn c3314mn = new C3314mn(true);
        C3314mn c3314mn2 = new C3314mn(true);
        m3442a(9, "cmdactivity", "getActivityTips", c3314mn, c3314mn2);
        c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
        c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
        c3314mn.put("reqinfo", c0391b);
        int m3436a = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
        if (m3436a == 0) {
            Object b = c3314mn2.m3068b("cmdinfo", new C0384a());
            if (b != null) {
                atomicReference.set((C0384a) b);
            }
            return 0;
        }
        return m3436a;
    }

    /* renamed from: a */
    public static int m3440a(Context context, C0409d c0409d, AtomicReference<C0428w> atomicReference, InterfaceC3207jb interfaceC3207jb) {
        C3314mn c3314mn = new C3314mn(true);
        C3314mn c3314mn2 = new C3314mn(true);
        if (TextUtils.isEmpty(interfaceC3207jb.mo2920cq())) {
            m3432b(context, new AtomicReference(), interfaceC3207jb);
        }
        m3442a(17, "sharkconfig", "getConfigTips", c3314mn, c3314mn2);
        c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
        c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
        c3314mn.put("fin", interfaceC3207jb.mo2905t(context));
        c3314mn.put("req", c0409d);
        int m3436a = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
        if (m3436a == 0) {
            Object b = c3314mn2.m3068b("resp", new C0428w());
            if (b != null && atomicReference != null) {
                atomicReference.set((C0428w) b);
            }
            return 0;
        }
        return m3436a;
    }

    /* renamed from: b */
    public static int m3432b(Context context, AtomicReference<C0429x> atomicReference, InterfaceC3207jb interfaceC3207jb) {
        C3314mn c3314mn = new C3314mn(true);
        C3314mn c3314mn2 = new C3314mn(true);
        m3442a(15, "androidguid", "RequestGUID", c3314mn, c3314mn2);
        C0410e mo2906s = interfaceC3207jb.mo2906s(context);
        C0373C mo2905t = interfaceC3207jb.mo2905t(context);
        c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
        c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
        c3314mn.put("fin", mo2905t);
        c3314mn.put("req", mo2906s);
        int m3436a = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
        if (m3436a == 0) {
            Object b = c3314mn2.m3068b("resp", new C0429x());
            if (b != null && atomicReference != null) {
                atomicReference.set((C0429x) b);
                interfaceC3207jb.mo2921aG(atomicReference.get().f425bk);
            }
            return 0;
        }
        return m3436a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 0) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized int m3437a(Context context, InterfaceC3207jb interfaceC3207jb) {
        int i;
        synchronized (C3208jc.class) {
            if (TextUtils.isEmpty(interfaceC3207jb.mo2913i(context))) {
                i = m3433b(context, interfaceC3207jb);
            }
            i = 0;
        }
        return i;
    }

    /* renamed from: b */
    private static int m3433b(Context context, InterfaceC3207jb interfaceC3207jb) {
        C0422q c0422q;
        C0419n mo2908q = interfaceC3207jb.mo2908q(context);
        AtomicReference atomicReference = new AtomicReference();
        int m3438a = m3438a(context, mo2908q, atomicReference, interfaceC3207jb);
        if (m3438a == 0 && (c0422q = (C0422q) atomicReference.get()) != null) {
            String str = c0422q.f401bk;
            if (TextUtils.isEmpty(str)) {
                return -2001;
            }
            interfaceC3207jb.mo2922a(str, context);
        }
        return m3438a;
    }

    /* renamed from: a */
    private static int m3438a(Context context, C0419n c0419n, AtomicReference<C0422q> atomicReference, InterfaceC3207jb interfaceC3207jb) {
        C3314mn c3314mn = new C3314mn(true);
        C3314mn c3314mn2 = new C3314mn(true);
        m3442a(13, "info", "getGuid", c3314mn, c3314mn2);
        c3314mn.put("phonetype", interfaceC3207jb.mo2907r(context));
        c3314mn.put("userinfo", interfaceC3207jb.mo2910o(context));
        c3314mn.put("deviceinfo", c0419n);
        int m3436a = m3436a(context, c3314mn, c3314mn2, false, interfaceC3207jb);
        if (m3436a == 0) {
            Object b = c3314mn2.m3068b("guidinfo", new C0422q());
            if (b != null) {
                atomicReference.set((C0422q) b);
            }
            return 0;
        }
        return m3436a;
    }
}
