package com.kingroot.kinguser;

import android.os.SystemClock;
/* loaded from: classes.dex */
public class bqg {
    protected static bqg bIn;

    protected bqg() {
    }

    public static synchronized bqg ahl() {
        bqg bqgVar;
        synchronized (bqg.class) {
            if (bIn == null) {
                bIn = new bqg();
            }
            bqgVar = bIn;
        }
        return bqgVar;
    }

    /* renamed from: a */
    public void m5814a(String str, String str2, String str3, String str4, String str5, String str6) {
        bqj.ahn().m5804a(bqt.m5743b(str, str3, str4, str5, str2, str6), str2, true);
    }

    /* renamed from: a */
    public void m5813a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        bqj.ahn().m5804a(bqt.m5747a(str, str4, str5, str3, str2, str6, "", str7, str8, "", "", ""), str2, false);
    }

    /* renamed from: a */
    public void m5812a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        bqj.ahn().m5804a(bqt.m5747a(str, str4, str5, str3, str2, str6, str7, "", "", str8, str9, str10), str2, false);
    }

    /* renamed from: a */
    public void m5815a(int i, String str, String str2, String str3, String str4, Long l, int i2, int i3, String str5) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - l.longValue();
        long j = (l.longValue() == 0 || elapsedRealtime < 0) ? 0L : elapsedRealtime;
        StringBuffer stringBuffer = new StringBuffer("http://c.isdspeed.qq.com/code.cgi");
        stringBuffer.append("?domain=mobile.opensdk.com&cgi=opensdk&type=").append(i).append("&code=").append(i2).append("&time=").append(j).append("&rate=").append(i3).append("&uin=").append(str2).append("&data=");
        bqj.ahn().m5801a(stringBuffer.toString(), "GET", bqt.m5748a(String.valueOf(i), String.valueOf(i2), String.valueOf(j), String.valueOf(i3), str, str2, str3, str4, str5), true);
    }
}
