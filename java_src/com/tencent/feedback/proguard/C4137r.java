package com.tencent.feedback.proguard;

import java.io.Serializable;
/* renamed from: com.tencent.feedback.proguard.r */
/* loaded from: classes.dex */
public class C4137r implements Serializable, Comparable<C4137r> {

    /* renamed from: a */
    private long f4773a;

    /* renamed from: b */
    private long f4774b;

    /* renamed from: c */
    private int f4775c;

    /* renamed from: d */
    private String f4776d;

    /* renamed from: e */
    private String f4777e;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: a */
    public synchronized int compareTo(C4137r c4137r) {
        return (int) (this.f4774b - c4137r.f4774b);
    }

    /* renamed from: a */
    public final synchronized long m616a() {
        return this.f4774b;
    }

    /* renamed from: a */
    public final synchronized void m614a(long j) {
        this.f4774b = j;
    }

    /* renamed from: b */
    public final synchronized int m611b() {
        return this.f4775c;
    }

    /* renamed from: a */
    public final synchronized void m615a(int i) {
        this.f4775c = i;
    }

    /* renamed from: c */
    public final synchronized String m608c() {
        return this.f4776d;
    }

    /* renamed from: a */
    public final synchronized void m612a(String str) {
        this.f4776d = str;
    }

    /* renamed from: d */
    public final synchronized long m607d() {
        return this.f4773a;
    }

    /* renamed from: b */
    public final synchronized void m610b(long j) {
        this.f4773a = j;
    }

    /* renamed from: e */
    public final synchronized String m606e() {
        return this.f4777e;
    }

    /* renamed from: b */
    public final synchronized void m609b(String str) {
        this.f4777e = str;
    }
}
