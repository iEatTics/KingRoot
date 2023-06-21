package com.tencent.feedback.eup;

import com.tencent.feedback.common.C4073e;
import java.util.Locale;
/* loaded from: classes.dex */
public class CrashStrategyBean implements Cloneable {
    public static final String format = "[MSNum:%d ,Wifi:%d,GPRS:%d,ODay:%d,isMerged:%b,AfQ:%b,Silent:%b,mLog:%d,tag:%s,assert:%s, interval:%s, limit:%s]";

    /* renamed from: a */
    private int f4513a = 10;

    /* renamed from: b */
    private int f4514b = 10;

    /* renamed from: c */
    private int f4515c = 3;

    /* renamed from: d */
    private int f4516d = 10;

    /* renamed from: e */
    private boolean f4517e = true;

    /* renamed from: f */
    private boolean f4518f = false;

    /* renamed from: g */
    private boolean f4519g = true;

    /* renamed from: h */
    private int f4520h = 100;

    /* renamed from: i */
    private String f4521i = null;

    /* renamed from: j */
    private boolean f4522j = false;

    /* renamed from: k */
    private String f4523k = null;

    /* renamed from: l */
    private int f4524l = 5000;

    /* renamed from: m */
    private int f4525m = 3;

    /* renamed from: n */
    private int f4526n = 100;

    /* renamed from: o */
    private boolean f4527o = false;

    /* renamed from: p */
    private int f4528p = 60;

    /* renamed from: q */
    private int f4529q = 50;

    /* renamed from: r */
    private boolean f4530r = true;

    /* renamed from: s */
    private boolean f4531s = false;

    /* renamed from: t */
    private boolean f4532t = false;

    public synchronized int getMaxStoredNum() {
        return this.f4513a;
    }

    public synchronized void setMaxStoredNum(int i) {
        if (i > 0 && i <= 20) {
            this.f4513a = i;
        }
    }

    public synchronized int getMaxUploadNum_Wifi() {
        return this.f4514b;
    }

    public synchronized void setMaxUploadNum_Wifi(int i) {
        if (i > 0) {
            this.f4514b = i;
        }
    }

    public synchronized int getMaxUploadNum_GPRS() {
        return this.f4515c;
    }

    public synchronized void setMaxUploadNum_GPRS(int i) {
        if (i > 0) {
            this.f4515c = i;
        }
    }

    public synchronized int getRecordOverDays() {
        return this.f4516d;
    }

    public synchronized void setRecordOverDays(int i) {
        if (i > 0) {
            this.f4516d = i;
        }
    }

    public synchronized boolean isMerged() {
        return this.f4517e;
    }

    public synchronized void setMerged(boolean z) {
        this.f4517e = z;
    }

    public synchronized boolean isEnableAfterQuery() {
        return this.f4518f;
    }

    public synchronized void setEnableAfterQuery(boolean z) {
        this.f4518f = z;
    }

    public synchronized boolean isSilentUpload() {
        return this.f4519g;
    }

    public synchronized void setSilentUpload(boolean z) {
        this.f4519g = z;
    }

    public synchronized int getMaxLogRow() {
        return this.f4520h;
    }

    public synchronized void setMaxLogRow(int i) {
        if (i > 0) {
            this.f4520h = i;
        }
    }

    public synchronized String getOnlyLogTag() {
        return this.f4521i;
    }

    public synchronized void setOnlyLogTag(String str) {
        this.f4521i = str;
    }

    public synchronized boolean isStoreCrashSdcard() {
        return this.f4522j;
    }

    public synchronized void setStoreCrashSdcard(boolean z) {
        this.f4522j = z;
    }

    public synchronized int getCrashSdcardMaxSize() {
        return this.f4524l;
    }

    public synchronized void setCrashSdcardMaxSize(int i) {
        if (i > 0) {
            this.f4524l = i;
        }
    }

    public synchronized String toString() {
        String str;
        try {
            str = String.format(Locale.US, format, Integer.valueOf(this.f4513a), Integer.valueOf(this.f4514b), Integer.valueOf(this.f4515c), Integer.valueOf(this.f4516d), Boolean.valueOf(this.f4517e), Boolean.valueOf(this.f4518f), Boolean.valueOf(this.f4519g), Integer.valueOf(this.f4520h), this.f4521i, Boolean.valueOf(this.f4527o), Integer.valueOf(this.f4529q), Integer.valueOf(this.f4528p));
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            str = "error";
        }
        return str;
    }

    /* renamed from: clone */
    public synchronized CrashStrategyBean m13766clone() {
        CrashStrategyBean crashStrategyBean;
        crashStrategyBean = new CrashStrategyBean();
        crashStrategyBean.setEnableAfterQuery(this.f4518f);
        crashStrategyBean.setMaxStoredNum(this.f4513a);
        crashStrategyBean.setMaxUploadNum_GPRS(this.f4515c);
        crashStrategyBean.setMaxUploadNum_Wifi(this.f4514b);
        crashStrategyBean.setMerged(this.f4517e);
        crashStrategyBean.setRecordOverDays(this.f4516d);
        crashStrategyBean.setSilentUpload(this.f4519g);
        crashStrategyBean.setMaxLogRow(this.f4520h);
        crashStrategyBean.setOnlyLogTag(this.f4521i);
        crashStrategyBean.setAssertEnable(this.f4527o);
        crashStrategyBean.setAssertTaskInterval(this.f4528p);
        crashStrategyBean.setAssertLimitCount(this.f4529q);
        return crashStrategyBean;
    }

    public synchronized void setAssertEnable(boolean z) {
        this.f4527o = z;
    }

    public synchronized boolean isAssertOn() {
        return this.f4527o;
    }

    public synchronized void setAssertTaskInterval(int i) {
        if (i < 60) {
            C4073e.m1017a("rqdp{The interval of assert check task is smaller than the default time.} [%s s]", Integer.valueOf(i));
        }
        if (i <= 0) {
            i = 60;
        }
        this.f4528p = i;
    }

    public synchronized int getAssertTaskInterval() {
        return this.f4528p;
    }

    public synchronized void setAssertLimitCount(int i) {
        if (i < 50) {
            C4073e.m1017a("rqdp{The trigger count of the assert store is smaller than the default count.} [%s]", Integer.valueOf(i));
        }
        if (i <= 0) {
            i = 50;
        }
        this.f4529q = i;
    }

    public synchronized int getAssertLimitCount() {
        return this.f4529q;
    }

    public synchronized String getStoreDirectoryPath() {
        return this.f4523k;
    }

    public synchronized void setStoreDirectoryPath(String str) {
        this.f4523k = str;
    }

    public synchronized int getMaxStackFrame() {
        return this.f4525m;
    }

    public synchronized void setMaxStackFrame(int i) {
        this.f4525m = i;
    }

    public synchronized int getMaxStackLine() {
        return this.f4526n;
    }

    public synchronized void setMaxStackLine(int i) {
        this.f4526n = i;
    }

    public synchronized boolean isOpenANR() {
        return this.f4530r;
    }

    public synchronized void setOpenANR(boolean z) {
        this.f4530r = z;
    }

    public synchronized boolean isBroadcast() {
        return this.f4531s;
    }

    public synchronized void setBroadcast(boolean z) {
        this.f4531s = z;
    }

    public synchronized boolean isReceiveBroadcast() {
        return this.f4532t;
    }

    public synchronized void setReceiveBroadcast(boolean z) {
        this.f4532t = z;
    }
}
