package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.p004v4.view.InputDeviceCompat;
import android.support.p004v4.view.PointerIconCompat;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.RunnableC3845wo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.ux */
/* loaded from: classes.dex */
public class C3736ux {

    /* renamed from: Jr */
    private String f3670Jr;

    /* renamed from: Js */
    private String f3671Js;

    /* renamed from: Jt */
    private boolean f3672Jt;
    private static final cce<C3736ux> sInstance = new cce<C3736ux>() { // from class: com.kingroot.kinguser.ux.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: kX */
        public C3736ux create() {
            return new C3736ux();
        }
    };

    /* renamed from: Ju */
    private static RunnableC3845wo f3669Ju = new RunnableC3845wo() { // from class: com.kingroot.kinguser.ux.2
        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        public void mo1543a(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            List<Object> mo1527nF;
            ArrayList<byte[]> arrayList = new ArrayList<>();
            if (interfaceC3847a != null && (mo1527nF = interfaceC3847a.mo1527nF()) != null && mo1527nF.size() > 0) {
                Iterator<Object> it = mo1527nF.iterator();
                while (it.hasNext()) {
                    arrayList.add((byte[]) it.next());
                }
            }
            Context m5101ge = bzt.m5101ge();
            if (C3823wb.m1582ng()) {
                if (!aav.m12929ae(m5101ge).equals(aav.m12928af(m5101ge))) {
                    C3736ux.m1945kT().m1949g(arrayList);
                }
            } else if (C3736ux.m1945kT().m1949g(arrayList)) {
                C3823wb.m1589W(true);
            }
            C3823wb.m1592S(System.currentTimeMillis());
        }
    };

    /* renamed from: kT */
    public static C3736ux m1945kT() {
        return sInstance.get();
    }

    private C3736ux() {
        this.f3670Jr = "";
        this.f3671Js = "";
        this.f3672Jt = false;
    }

    @WorkerThread
    /* renamed from: kU */
    public String m1944kU() {
        C2696cb c2696cb;
        this.f3671Js = aav.getGuid();
        if (TextUtils.isEmpty(this.f3671Js)) {
            Context m2169ge = C3636tj.m2169ge();
            AtomicReference atomicReference = new AtomicReference();
            if (C3749vc.m1911a(m2169ge, atomicReference) == 0 && (c2696cb = (C2696cb) atomicReference.get()) != null) {
                this.f3671Js = c2696cb.getGuid();
                if (!TextUtils.isEmpty(this.f3671Js)) {
                    aav.m12932E(this.f3671Js);
                }
            }
        }
        return this.f3671Js;
    }

    /* renamed from: g */
    public boolean m1949g(@Nullable ArrayList<byte[]> arrayList) {
        InterfaceC3519rh m13448hV = KApplication.m13448hV();
        if (!(m13448hV instanceof AbstractC3514re) || ((AbstractC3514re) m13448hV).mo2485hM()) {
            return cbj.akz().m5006a(m1947i(arrayList));
        }
        return false;
    }

    @WorkerThread
    public synchronized String getGuid() {
        if (TextUtils.isEmpty(this.f3671Js)) {
            this.f3671Js = aav.getGuid();
            if (TextUtils.isEmpty(this.f3671Js)) {
                m1944kU();
            }
        }
        return this.f3671Js;
    }

    @WorkerThread
    public synchronized String getSharkGuid() {
        return m1948h(null);
    }

    /* renamed from: h */
    public synchronized String m1948h(@Nullable ArrayList<byte[]> arrayList) {
        if (TextUtils.isEmpty(this.f3670Jr)) {
            this.f3670Jr = aav.getSharkGuid();
        }
        m1946j(arrayList);
        C3951zg.m1322d("common_GUIDManager", "getSharkGuid()  " + (this.f3670Jr == null ? "" : this.f3670Jr));
        return this.f3670Jr;
    }

    @WorkerThread
    /* renamed from: Q */
    public static C2856dc m1951Q(boolean z) {
        C2856dc c2856dc = new C2856dc();
        c2856dc.f2427iv = "";
        c2856dc.f2422dS = KApplication.m13444hZ();
        c2856dc.f2423hT = m1942kW();
        c2856dc.f2424ii = (C3823wb.m1585nd() ? 4 : 0) + 0 + (C3823wb.m1584ne() ? 8 : 0);
        if (z) {
            c2856dc.f2425it = m1945kT().getSharkGuid();
        } else {
            c2856dc.f2425it = aav.getSharkGuid();
        }
        return c2856dc;
    }

    /* renamed from: kV */
    public static C2802cg m1943kV() {
        return m1947i(null);
    }

    /* renamed from: i */
    public static C2802cg m1947i(@Nullable ArrayList<byte[]> arrayList) {
        Context m5101ge = bzt.m5101ge();
        C2802cg c2802cg = new C2802cg();
        c2802cg.m4356k(4);
        c2802cg.m4353n(0);
        c2802cg.m4355l(0);
        c2802cg.m4354m(C3823wb.m1586nc() + 1);
        boolean z = KApplication.m13441ic() != 0;
        boolean m12912qe = aav.m12912qe();
        String[] m12885Z = aax.m12885Z(m5101ge);
        ArrayList<byte[]> arrayList2 = new ArrayList<>();
        arrayList2.add(m1950a(1003, aab.m13016dH(aav.m12928af(m5101ge))).toByteArray());
        arrayList2.add(m1950a(1001, aab.m13016dH(aav.m12927ag(m5101ge))).toByteArray());
        arrayList2.add(m1950a(1004, aab.m13016dH(aav.m12926ah(m5101ge))).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_CELL, Integer.valueOf(KApplication.m13445hY())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_ZOOM_OUT, "").toByteArray());
        arrayList2.add(m1950a(1002, Integer.valueOf(KApplication.m13444hZ())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_CROSSHAIR, KApplication.m13442ib()).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_NO_DROP, 2).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_ALL_SCROLL, 201).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_TEXT, Boolean.valueOf(z)).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, aab.m13016dH(m5101ge.getPackageName())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_VERTICAL_TEXT, aab.m13016dH(aav.m12917pZ())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_ALIAS, Integer.valueOf(aav.m12915qb())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_ZOOM_IN, (short) 2025).toByteArray());
        arrayList2.add(m1950a(1005, aab.m13016dH(KApplication.m13436ii())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, Integer.valueOf(KApplication.m13434ik())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_GRABBING, aab.m13016dH(C3612sw.m2224cN(C3949ze.m1324po()))).toByteArray());
        arrayList2.add(m1950a(1022, KApplication.m13443ia()).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, "").toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, aab.m13016dH(aaz.m12867qy())).toByteArray());
        arrayList2.add(m1950a(PointerIconCompat.TYPE_GRAB, aab.m13016dH(aav.m12910qg())).toByteArray());
        arrayList2.add(m1950a(1023, Long.valueOf(aax.m12884qw())).toByteArray());
        arrayList2.add(m1950a(1024, aab.m13016dH(m12885Z[3])).toByteArray());
        arrayList2.add(m1950a(InputDeviceCompat.SOURCE_GAMEPAD, aab.m13016dH(aav.m12898qs())).toByteArray());
        arrayList2.add(m1950a(1026, aab.m13016dH(aav.m12899qr())).toByteArray());
        arrayList2.add(m1950a(1027, Integer.valueOf(m12912qe ? 2 : 1)).toByteArray());
        arrayList2.add(m1950a(1028, aab.m13016dH(aav.m12911qf())).toByteArray());
        arrayList2.add(m1950a(1029, aab.m13016dH(aav.m12921dI())).toByteArray());
        arrayList2.add(m1950a(2201, Integer.valueOf(KApplication.m13433il())).toByteArray());
        arrayList2.add(m1950a(2202, Integer.valueOf(KApplication.m13432im())).toByteArray());
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<byte[]> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(it.next());
            }
        }
        c2802cg.m4357b(arrayList2);
        return c2802cg;
    }

    /* renamed from: a */
    private static C2724cf m1950a(int i, Object obj) {
        C2724cf c2724cf = new C2724cf();
        c2724cf.m4666i(i);
        if (obj instanceof Integer) {
            c2724cf.m4667h(1);
            c2724cf.m4665j(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            c2724cf.m4667h(3);
            c2724cf.m4671F(obj.toString());
        } else if (obj instanceof Short) {
            c2724cf.m4667h(6);
            c2724cf.m4670a(((Short) obj).shortValue());
        } else if (obj instanceof Long) {
            c2724cf.m4667h(2);
            c2724cf.m4664l(((Long) obj).longValue());
        } else if (obj instanceof Boolean) {
            c2724cf.m4667h(5);
            c2724cf.m4669e(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte[]) {
            c2724cf.m4667h(4);
            c2724cf.m4668f(C3939yv.m1364a((Byte[]) obj));
        } else if (obj instanceof byte[]) {
            c2724cf.m4667h(4);
            c2724cf.m4668f((byte[]) obj);
        }
        return c2724cf;
    }

    /* renamed from: kW */
    private static int m1942kW() {
        byte m1921O = C3748vb.m1921O(bzt.m5101ge());
        if (m1921O == -1) {
            return 0;
        }
        if (m1921O == 1) {
            return 3;
        }
        if (m1921O == 2) {
            return 2;
        }
        return m1921O == 0 ? 1 : 0;
    }

    /* renamed from: j */
    private synchronized void m1946j(@Nullable ArrayList<byte[]> arrayList) {
        if (KApplication.m13450hT() == 2) {
            String m12897qt = aav.m12897qt();
            String valueOf = String.valueOf(KApplication.m13444hZ());
            if (!TextUtils.isEmpty(this.f3670Jr) && !this.f3672Jt) {
                this.f3672Jt = true;
                if ((TextUtils.isEmpty(m12897qt) || !m12897qt.equalsIgnoreCase(valueOf)) && m1949g(arrayList) && !TextUtils.isEmpty(valueOf)) {
                    aav.m12919dQ(valueOf);
                } else {
                    this.f3672Jt = false;
                }
            }
        }
    }
}
