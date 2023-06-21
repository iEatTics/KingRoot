package com.kingroot.kinguser;

import android.content.Context;
/* renamed from: com.kingroot.kinguser.ol */
/* loaded from: classes.dex */
public class C3383ol {
    private Context mAppContext;

    /* renamed from: yg */
    private boolean f3249yg;

    /* renamed from: yh */
    private boolean f3250yh;

    /* renamed from: yi */
    private cas f3251yi;

    /* renamed from: yj */
    private cau f3252yj;

    /* renamed from: com.kingroot.kinguser.ol$a */
    /* loaded from: classes.dex */
    static class C3384a {

        /* renamed from: yk */
        private static final C3383ol f3253yk = new C3383ol();
    }

    private C3383ol() {
        this.f3249yg = true;
        this.f3250yh = false;
        this.f3251yi = null;
        this.f3252yj = null;
    }

    /* renamed from: fZ */
    public static C3383ol m2703fZ() {
        return C3384a.f3253yk;
    }

    /* renamed from: s */
    public void m2697s(boolean z) {
        this.f3249yg = z;
    }

    /* renamed from: ga */
    public boolean m2702ga() {
        return this.f3249yg;
    }

    /* renamed from: t */
    public void m2696t(boolean z) {
        this.f3250yh = z;
    }

    /* renamed from: gb */
    public boolean m2701gb() {
        return this.f3250yh;
    }

    /* renamed from: gd */
    public cas m2700gd() {
        return this.f3251yi;
    }

    /* renamed from: a */
    public void m2705a(cas casVar) {
        this.f3251yi = casVar;
    }

    /* renamed from: ge */
    public Context m2699ge() {
        return this.mAppContext;
    }

    /* renamed from: E */
    public void m2706E(Context context) {
        this.mAppContext = context;
    }

    /* renamed from: gf */
    public cau m2698gf() {
        return this.f3252yj;
    }

    /* renamed from: a */
    public void m2704a(cau cauVar) {
        this.f3252yj = cauVar;
    }
}
