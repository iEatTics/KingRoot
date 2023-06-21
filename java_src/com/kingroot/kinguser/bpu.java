package com.kingroot.kinguser;

import android.support.p007v7.internal.widget.ActivityChooserView;
import com.kingroot.kinguser.bpw;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
/* loaded from: classes.dex */
public class bpu {
    private static SimpleDateFormat bHZ = bpw.C2564d.m5850mP("yy.MM.dd.HH");
    private File bIa;

    /* renamed from: b */
    private String f1977b = "Tracer.File";

    /* renamed from: c */
    private int f1978c = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    /* renamed from: d */
    private int f1979d = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    /* renamed from: e */
    private int f1980e = 4096;

    /* renamed from: f */
    private long f1981f = 10000;

    /* renamed from: h */
    private int f1982h = 10;

    /* renamed from: i */
    private String f1983i = ".log";

    /* renamed from: j */
    private long f1984j = Long.MAX_VALUE;

    public bpu(File file, int i, int i2, int i3, String str, long j, int i4, String str2, long j2) {
        m5871a(file);
        m5869b(i);
        m5873a(i2);
        m5865c(i3);
        m5870a(str);
        m5872a(j);
        m5861d(i4);
        m5867b(str2);
        m5868b(j2);
    }

    public File aeL() {
        return m5864cE(System.currentTimeMillis());
    }

    /* renamed from: cE */
    private File m5864cE(long j) {
        File aeM = aeM();
        try {
            return new File(aeM, m5859mO(m5863cF(j)));
        } catch (Throwable th) {
            th.printStackTrace();
            return aeM;
        }
    }

    /* renamed from: cF */
    private String m5863cF(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return new SimpleDateFormat("yy.MM.dd.HH").format(calendar.getTime());
    }

    /* renamed from: mO */
    private String m5859mO(String str) {
        return "com.tencent.mobileqq_connectSdk." + str + ".log";
    }

    public File aeM() {
        File ahg = ahg();
        ahg.mkdirs();
        return ahg;
    }

    /* renamed from: c */
    public String m5866c() {
        return this.f1977b;
    }

    /* renamed from: a */
    public void m5870a(String str) {
        this.f1977b = str;
    }

    /* renamed from: a */
    public void m5873a(int i) {
        this.f1978c = i;
    }

    /* renamed from: b */
    public void m5869b(int i) {
        this.f1979d = i;
    }

    /* renamed from: d */
    public int m5862d() {
        return this.f1980e;
    }

    /* renamed from: c */
    public void m5865c(int i) {
        this.f1980e = i;
    }

    /* renamed from: a */
    public void m5872a(long j) {
        this.f1981f = j;
    }

    public File ahg() {
        return this.bIa;
    }

    /* renamed from: a */
    public void m5871a(File file) {
        this.bIa = file;
    }

    /* renamed from: f */
    public int m5860f() {
        return this.f1982h;
    }

    /* renamed from: d */
    public void m5861d(int i) {
        this.f1982h = i;
    }

    /* renamed from: b */
    public void m5867b(String str) {
        this.f1983i = str;
    }

    /* renamed from: b */
    public void m5868b(long j) {
        this.f1984j = j;
    }
}
