package com.kingroot.kinguser;

import android.text.TextUtils;
import android.util.Log;
import com.king.uranus.C0371A;
import com.king.uranus.C0376F;
import com.king.uranus.C0378N;
import com.king.uranus.C0382P;
import com.king.uranus.C0383R;
import com.king.uranus.C0384a;
import com.king.uranus.C0391b;
import com.king.uranus.C0412g;
import com.king.uranus.C0413h;
import com.king.uranus.C0414i;
import com.king.uranus.C0415j;
import com.king.uranus.C0416k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.hb */
/* loaded from: classes.dex */
public final class C3146hb implements InterfaceC3283lo {

    /* renamed from: qJ */
    private static C3146hb f2746qJ = new C3146hb();

    /* renamed from: qL */
    private InterfaceC3175ib f2748qL;

    /* renamed from: qM */
    private InterfaceC3284lp f2749qM;

    /* renamed from: qK */
    private final ConcurrentLinkedQueue<C0414i> f2747qK = new ConcurrentLinkedQueue<>();

    /* renamed from: qN */
    private RunnableC3305mg f2750qN = new C3147hc(this);

    /* renamed from: qO */
    private RunnableC3305mg f2751qO = new C3163hs(this);

    private C3146hb() {
    }

    /* renamed from: aQ */
    public static C3146hb m3630aQ() {
        return f2746qJ;
    }

    /* renamed from: a */
    public void m3635a(InterfaceC3175ib interfaceC3175ib) {
        this.f2748qL = interfaceC3175ib;
    }

    /* renamed from: a */
    public void m3634a(InterfaceC3284lp interfaceC3284lp) {
        this.f2749qM = interfaceC3284lp;
    }

    @Override // com.kingroot.kinguser.InterfaceC3283lo
    /* renamed from: c */
    public void mo2932c() {
        if (m3618e()) {
            C0378N.m13692bi();
            m3621d();
        }
    }

    /* renamed from: d */
    public void m3621d() {
        this.f2750qN.m3080n(true);
    }

    /* renamed from: e */
    private boolean m3618e() {
        return Math.abs(System.currentTimeMillis() - this.f2749qM.getLong("cloud_cmd_last_pull_timed")) >= 14400000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aR */
    public C0371A m3629aR() {
        C0371A c0371a;
        AtomicReference atomicReference = new AtomicReference();
        if (C3208jc.m3434a(C3183ih.getContext(), atomicReference, C3339nd.m2917eY()) == 0 && (c0371a = (C0371A) atomicReference.get()) != null) {
            this.f2749qM.mo3165b("cloud_cmd_last_pull_timed", System.currentTimeMillis());
            String str = c0371a.f159bU;
            if (!TextUtils.isEmpty(str) && !str.equals(this.f2749qM.getString("cloud_cmd_last_tips_id"))) {
                this.f2749qM.mo3164j("cloud_cmd_last_tips_id", str);
                return c0371a;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3631a(List<C0414i> list) {
        if (list != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (C0414i c0414i : list) {
                arrayList.add(C3165hu.m3605a(c0414i.f362ay.f244f, 0, 0, 0, (ArrayList<C0413h>) null, 1));
            }
            m3622c(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3622c(List<C0415j> list) {
        if (list != null && list.size() > 0) {
            C0416k c0416k = new C0416k();
            c0416k.f372aL = (ArrayList) list;
            C0378N.m13696a(c0416k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public List<C0414i> m3617f(List<C0414i> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() == 0) {
            return arrayList;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            C0414i c0414i = list.get(size);
            if (c0414i == null || c0414i.f361aB == null) {
                list.remove(size);
            } else {
                C0412g c0412g = c0414i.f361aB.get(0);
                if (c0412g != null) {
                    switch (c0412g.f351at) {
                        case 9:
                        case 350:
                            arrayList.add(c0414i);
                            continue;
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public List<C0415j> m3616g(List<C0414i> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (C0414i c0414i : list) {
            try {
                List<C0415j> m3639a = m3639a(c0414i);
                if (m3639a != null) {
                    arrayList.addAll(m3639a);
                }
            } catch (Exception e) {
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private List<C0415j> m3639a(C0414i c0414i) {
        if (c0414i == null) {
            return null;
        }
        if (!C3165hu.m3604e(c0414i)) {
            C0415j m3605a = C3165hu.m3605a(c0414i.f362ay.f244f, 0, 3, 0, (ArrayList<C0413h>) null, 2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(m3605a);
            return arrayList;
        }
        return m3627b(c0414i);
    }

    /* renamed from: b */
    private List<C0415j> m3627b(C0414i c0414i) {
        if (c0414i == null) {
            return null;
        }
        String str = c0414i.f362ay.f244f;
        ArrayList<C0412g> arrayList = c0414i.f361aB;
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<C0412g> it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                List<C0415j> m3632a = m3632a(str, it.next(), c0414i);
                if (m3632a != null) {
                    arrayList2.addAll(m3632a);
                }
            } catch (Exception e) {
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    private List<C0415j> m3632a(String str, C0412g c0412g, C0414i c0414i) {
        int i = 2;
        if (str == null || c0412g == null || c0414i == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        switch (c0412g.f351at) {
            case 20:
            case 24:
                List<C0415j> m3616g = m3616g(m3628aS());
                if (m3616g != null) {
                    arrayList.addAll(m3616g);
                    break;
                }
                break;
            case 329:
                try {
                    i = C3170hy.m3590a(c0412g, str, this.f2748qL).mo3493a(C3169hx.m3593a(c0412g));
                } catch (C0382P e) {
                } catch (C0383R e2) {
                }
                arrayList.add(C3165hu.m3606a(str, c0412g.f353av, 0, 3, 0, i));
                break;
            default:
                arrayList.add(C3165hu.m3606a(str, c0412g.f353av, 0, 3, 0, 2));
                break;
        }
        return arrayList;
    }

    /* renamed from: aS */
    public static List<C0414i> m3628aS() {
        C0384a c0384a;
        AtomicReference atomicReference = new AtomicReference();
        C0391b c0391b = new C0391b();
        c0391b.f231d = 8;
        c0391b.f230c = new C0376F();
        if (C3208jc.m3441a(C3183ih.getContext(), c0391b, atomicReference, C3339nd.m2917eY()) != 0 || (c0384a = (C0384a) atomicReference.get()) == null) {
            return null;
        }
        return c0384a.f217a;
    }

    /* renamed from: h */
    public void m3615h() {
        this.f2751qO.m3080n(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public List<C0415j> m3624c(C0414i c0414i) {
        if (c0414i == null) {
            return null;
        }
        if (!C3165hu.m3604e(c0414i)) {
            C0415j m3605a = C3165hu.m3605a(c0414i.f362ay.f244f, 0, 3, 0, (ArrayList<C0413h>) null, 2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(m3605a);
            return arrayList;
        }
        return m3620d(c0414i);
    }

    /* renamed from: d */
    private List<C0415j> m3620d(C0414i c0414i) {
        if (c0414i == null) {
            return null;
        }
        String str = c0414i.f362ay.f244f;
        ArrayList<C0412g> arrayList = c0414i.f361aB;
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<C0412g> it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                C0415j m3633a = m3633a(str, it.next());
                if (m3633a != null) {
                    arrayList2.add(m3633a);
                }
            } catch (Exception e) {
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public C0415j m3633a(String str, C0412g c0412g) {
        int i = 2;
        if (str == null || c0412g == null) {
            return null;
        }
        Log.i("CloudEngine", "---> execute cloudCmd:cmdid:" + c0412g.f351at);
        try {
            i = C3170hy.m3591a(c0412g, str).mo3493a(C3169hx.m3593a(c0412g));
        } catch (C0382P e) {
        } catch (C0383R e2) {
        }
        if (c0412g.f351at != 350) {
            return C3165hu.m3606a(str, c0412g.f353av, 0, 3, 0, i);
        }
        return null;
    }
}
