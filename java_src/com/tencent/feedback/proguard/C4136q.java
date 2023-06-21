package com.tencent.feedback.proguard;

import com.tencent.feedback.common.C4073e;
import java.io.Serializable;
import java.util.Locale;
/* renamed from: com.tencent.feedback.proguard.q */
/* loaded from: classes.dex */
public class C4136q implements Serializable {

    /* renamed from: a */
    public final int f4765a;

    /* renamed from: b */
    public final long f4766b;

    /* renamed from: c */
    public final long f4767c;

    /* renamed from: d */
    public final long f4768d;

    /* renamed from: e */
    public final long f4769e;

    /* renamed from: f */
    public final long f4770f;

    /* renamed from: g */
    public final long f4771g;

    /* renamed from: h */
    private long f4772h = -1;

    public C4136q(int i, long j, long j2, long j3, long j4, long j5, long j6) {
        this.f4765a = i;
        this.f4766b = j;
        this.f4767c = j2;
        this.f4768d = j3;
        this.f4769e = j4;
        this.f4770f = j5;
        this.f4771g = j6;
    }

    public String toString() {
        try {
            return String.format(Locale.US, "[tp:%d , st:%d ,counts:%d, wifi:%d , notWifi:%d , up:%d , dn:%d]", Integer.valueOf(this.f4765a), Long.valueOf(this.f4766b), Long.valueOf(this.f4767c), Long.valueOf(this.f4768d), Long.valueOf(this.f4769e), Long.valueOf(this.f4770f), Long.valueOf(this.f4771g));
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public final synchronized long m618a() {
        return this.f4772h;
    }

    /* renamed from: a */
    public final synchronized void m617a(long j) {
        this.f4772h = j;
    }
}
