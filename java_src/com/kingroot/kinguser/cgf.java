package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class cgf {
    private int bZj;
    private cch cei;
    private long cej;
    private int cek;
    private long cel;
    private long cem;

    public cgf(String str, long j, int i) {
        this.bZj = 0;
        this.cej = 0L;
        this.cek = 0;
        this.cel = 0L;
        this.cem = 0L;
        j = j < 0 ? Long.MAX_VALUE : j;
        this.cei = ceb.m4792nH("freq_ctrl_" + str);
        this.bZj = i;
        this.cej = j;
        this.cek = this.cei.getInt("times_now", this.cek);
        this.cel = this.cei.getLong("time_span_start", this.cel);
        this.cem = this.cei.getLong("time_span_end", this.cem);
        this.cei.mo4962W("times", i);
        this.cei.mo4961p("time_span", j);
    }

    public boolean amW() {
        if (this.cel == 0) {
            return true;
        }
        return this.cek < this.bZj || System.currentTimeMillis() >= this.cem;
    }

    public void amX() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.cel == 0) {
            m4342cS(currentTimeMillis);
            m4341lt(0);
        } else if (currentTimeMillis >= this.cem) {
            m4342cS(currentTimeMillis);
            m4341lt(0);
        }
        m4341lt(this.cek + 1);
    }

    /* renamed from: cS */
    private void m4342cS(long j) {
        this.cel = j;
        this.cem = this.cej + j;
        this.cei.mo4961p("time_span_start", this.cel);
        this.cei.mo4961p("time_span_end", this.cem);
    }

    /* renamed from: lt */
    private void m4341lt(int i) {
        this.cek = i;
        this.cei.mo4962W("times_now", this.cek);
    }
}
