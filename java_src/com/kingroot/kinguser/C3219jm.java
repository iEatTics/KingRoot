package com.kingroot.kinguser;

import android.content.Context;
import com.king.uranus.C0372B;
import com.king.uranus.C0389ac;
import com.king.uranus.C0409d;
import com.king.uranus.C0411f;
import com.king.uranus.C0418m;
import com.king.uranus.C0428w;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.jm */
/* loaded from: classes.dex */
public final class C3219jm extends AbstractC3238kc implements InterfaceC3283lo {
    private static final String TAG = "Uranus_" + C3219jm.class.getSimpleName();

    /* renamed from: te */
    private static C3219jm f2897te = new C3219jm();

    /* renamed from: tf */
    private InterfaceC3284lp f2898tf;

    /* renamed from: tg */
    private long f2899tg;

    private C3219jm() {
        super(C3183ih.getContext());
        this.f2899tg = 0L;
    }

    /* renamed from: cB */
    public static C3219jm m3387cB() {
        return f2897te;
    }

    /* renamed from: a */
    public void m3389a(InterfaceC3284lp interfaceC3284lp) {
        this.f2898tf = interfaceC3284lp;
    }

    /* renamed from: T */
    public C0418m m3393T(int i) {
        C0418m m3391V = m3391V(i);
        mo2932c();
        return m3391V;
    }

    @Override // com.kingroot.kinguser.AbstractC3238kc
    /* renamed from: cC */
    public void mo3303cC() {
        if (Math.abs(System.currentTimeMillis() - m3386cD()) >= 14400000) {
            super.mo3303cC();
        }
    }

    /* renamed from: cD */
    private long m3386cD() {
        if (this.f2899tg == 0) {
            this.f2899tg = this.f2898tf.getLong("cloud_list_last_pull_timed");
        }
        return this.f2899tg;
    }

    /* renamed from: as */
    private void m3388as() {
        this.f2899tg = System.currentTimeMillis();
        this.f2898tf.mo3165b("cloud_list_last_pull_timed", this.f2899tg);
    }

    @Override // com.kingroot.kinguser.AbstractC3238kc
    /* renamed from: cE */
    protected List<C0389ac> mo3302cE() {
        return m3384e(m3385cF());
    }

    @Override // com.kingroot.kinguser.AbstractC3238kc
    /* renamed from: a */
    protected void mo3307a(C3242kf c3242kf) {
        if (c3242kf != null) {
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3238kc
    /* renamed from: b */
    protected void mo3305b(C3242kf c3242kf) {
        if (c3242kf != null) {
        }
    }

    /* renamed from: e */
    private List<C0389ac> m3384e(ArrayList<C0411f> arrayList) {
        Context context = C3183ih.getContext();
        C0409d c0409d = new C0409d();
        c0409d.f284g = arrayList;
        AtomicReference atomicReference = new AtomicReference();
        if (C3208jc.m3440a(context, c0409d, atomicReference, C3339nd.m2917eY()) == 0) {
            m3388as();
            if (atomicReference != null) {
                return m3390a((C0428w) atomicReference.get());
            }
        }
        return null;
    }

    /* renamed from: cF */
    private ArrayList<C0411f> m3385cF() {
        ArrayList<C0411f> arrayList = new ArrayList<>();
        arrayList.add(m3392U(40276));
        arrayList.add(m3392U(40392));
        return arrayList;
    }

    /* renamed from: U */
    private C0411f m3392U(int i) {
        C3206ja m3444a;
        C0411f c0411f = new C0411f();
        c0411f.f344am = i;
        c0411f.f345an = "".getBytes();
        c0411f.f346ao = 0;
        String str = String.valueOf(i) + ".dat";
        File file = new File(m3301cT() + File.separator + str);
        if (!file.exists()) {
            try {
                C3353nk.m2857c(str, file);
            } catch (Throwable th) {
            }
        }
        if (file.exists() && (m3444a = C3206ja.m3444a(getContext(), file)) != null) {
            c0411f.f345an = m3444a.f2881sQ;
            c0411f.f346ao = m3444a.f2880sP;
            c0411f.f349ar = m3444a.mVersion;
        }
        return c0411f;
    }

    /* renamed from: a */
    private List<C0389ac> m3390a(C0428w c0428w) {
        ArrayList arrayList = new ArrayList();
        if (c0428w != null && c0428w.f424bz != null) {
            Iterator<C0372B> it = c0428w.f424bz.iterator();
            while (it.hasNext()) {
                C0372B next = it.next();
                if (next != null) {
                    C0389ac c0389ac = new C0389ac();
                    c0389ac.f224cQ = String.valueOf(next.m13697a()) + ".dat";
                    c0389ac.f226cS = c0389ac.f224cQ;
                    c0389ac.f223ao = next.f165ao;
                    c0389ac.url = next.url;
                    arrayList.add(c0389ac);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: V */
    private C0418m m3391V(int i) {
        String str = String.valueOf(i) + ".dat";
        File file = new File(m3301cT() + File.separator + str);
        if (!file.exists()) {
            try {
                C3353nk.m2857c(str, file);
            } catch (Exception e) {
            }
        }
        return (C0418m) C3209jd.m3430a(getContext(), m3301cT(), str, String.valueOf(i), new C0418m(), "UTF-8");
    }

    @Override // com.kingroot.kinguser.InterfaceC3283lo
    /* renamed from: c */
    public void mo2932c() {
        mo3303cC();
    }
}
