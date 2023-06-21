package com.tencent.feedback.upload;

import com.tencent.feedback.common.C4073e;
/* renamed from: com.tencent.feedback.upload.b */
/* loaded from: classes.dex */
public class C4154b {

    /* renamed from: a */
    private long f4827a = 0;

    /* renamed from: b */
    private long f4828b = 0;

    /* renamed from: c */
    private int f4829c = 0;

    /* renamed from: a */
    public synchronized void m534a(String str, long j, String str2) {
        C4073e.m1015b("rqdp{  send:}%s rqdp{  sz:}%d rqdp{  apn:}%s", str, Long.valueOf(j), str2);
        this.f4829c++;
        this.f4827a += j;
    }

    /* renamed from: a */
    public synchronized void m535a(long j) {
        C4073e.m1015b("rqdp{  recevied:}%d", Long.valueOf(j));
        this.f4828b += j;
    }

    /* renamed from: a */
    public synchronized long m536a() {
        return this.f4827a;
    }

    /* renamed from: b */
    public synchronized long m533b() {
        return this.f4828b;
    }
}
