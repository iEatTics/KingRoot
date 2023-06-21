package com.tencent.feedback.proguard;

import android.util.SparseArray;
/* renamed from: com.tencent.feedback.proguard.x */
/* loaded from: classes.dex */
public final class C4145x {

    /* renamed from: a */
    public static boolean f4794a = false;

    /* renamed from: b */
    public static String f4795b = null;

    /* renamed from: c */
    private SparseArray<C4146a> f4796c;

    /* renamed from: g */
    private String f4800g;

    /* renamed from: h */
    private String f4801h;

    /* renamed from: d */
    private String f4797d = "http://monitor.uu.qq.com/analytics/rqdsync";

    /* renamed from: e */
    private int f4798e = -1;

    /* renamed from: f */
    private int f4799f = 6;

    /* renamed from: i */
    private boolean f4802i = true;

    /* renamed from: j */
    private boolean f4803j = false;

    /* renamed from: com.tencent.feedback.proguard.x$a */
    /* loaded from: classes.dex */
    public static class C4146a {

        /* renamed from: a */
        private String f4804a = "http://monitor.uu.qq.com/analytics/rqdsync";

        /* renamed from: b */
        private boolean f4805b = false;

        /* renamed from: c */
        private boolean f4806c = true;

        /* renamed from: d */
        private boolean f4807d = false;

        public C4146a(int i) {
        }

        /* renamed from: a */
        public final synchronized String m567a() {
            return C4145x.f4795b != null ? C4145x.f4795b : this.f4804a;
        }

        /* renamed from: b */
        public final synchronized boolean m565b() {
            return this.f4805b;
        }

        /* renamed from: a */
        public final synchronized void m566a(boolean z) {
            this.f4805b = z;
        }

        /* renamed from: c */
        public final synchronized boolean m564c() {
            return this.f4806c;
        }

        /* renamed from: d */
        public final synchronized boolean m563d() {
            return false;
        }
    }

    public C4145x() {
        this.f4796c = null;
        this.f4800g = "";
        this.f4801h = "";
        this.f4796c = new SparseArray<>(5);
        this.f4796c.append(3, new C4146a(3));
        this.f4796c = this.f4796c;
        StringBuilder sb = new StringBuilder();
        sb.append("S(@L@L").append("@)");
        this.f4801h = sb.toString();
        sb.setLength(0);
        sb.append("*^@K#K").append("@!");
        this.f4800g = sb.toString();
    }

    /* renamed from: a */
    public final synchronized String m580a() {
        return f4795b != null ? f4795b : this.f4797d;
    }

    /* renamed from: a */
    public final synchronized void m578a(String str) {
        this.f4797d = str;
    }

    /* renamed from: b */
    public final synchronized int m576b() {
        return this.f4798e;
    }

    /* renamed from: a */
    public final synchronized void m579a(int i) {
        this.f4798e = i;
    }

    /* renamed from: c */
    public final synchronized int m573c() {
        return this.f4799f;
    }

    /* renamed from: b */
    public final synchronized void m575b(int i) {
        if (i > 0) {
            this.f4799f = i;
        }
    }

    /* renamed from: d */
    public final synchronized String m571d() {
        return this.f4800g;
    }

    /* renamed from: e */
    public final synchronized String m570e() {
        return this.f4801h;
    }

    /* renamed from: f */
    public final synchronized boolean m569f() {
        return this.f4802i;
    }

    /* renamed from: a */
    public final synchronized void m577a(boolean z) {
        this.f4802i = z;
    }

    /* renamed from: c */
    public final synchronized C4146a m572c(int i) {
        return this.f4796c != null ? this.f4796c.get(i) : null;
    }

    /* renamed from: g */
    public final synchronized boolean m568g() {
        return this.f4803j;
    }

    /* renamed from: b */
    public final synchronized void m574b(boolean z) {
        this.f4803j = z;
    }
}
