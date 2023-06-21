package com.kingroot.kinguser;

import android.content.Context;
import cloudsdk.ext.p008kr.RootSdk;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class akj {
    private static akj avw;
    private C2475bk avq;
    private C2855db avr;
    private ArrayList<C2295bi> avs;
    private C2295bi avt;
    private int avu = 0;
    private long avv = -1;
    private bed avx = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.akj.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (C3748vb.m1917S(KApplication.m13453ge())) {
                akj.this.m11271a(aju.m11396aR(KApplication.m13453ge()));
            }
        }
    });
    private Context mContext;

    /* renamed from: aT */
    public static akj m11270aT(Context context) {
        if (avw == null) {
            synchronized (akj.class) {
                if (avw == null) {
                    avw = new akj(context);
                }
            }
        }
        return avw;
    }

    private akj(Context context) {
        this.mContext = context;
        m11275AK();
    }

    /* renamed from: AA */
    public boolean m11285AA() {
        return (this.avq == null || this.avq.f1708kx == null || this.avq.f1708kx.size() < 5) ? false : true;
    }

    /* renamed from: AB */
    public long m11284AB() {
        return bbl.m7805y(this.mContext, "key_old_commit_count");
    }

    /* renamed from: ak */
    public void m11269ak(long j) {
        bbl.m7809a(this.mContext, "key_old_commit_count", j);
    }

    /* renamed from: AC */
    public long m11283AC() {
        long j;
        if (this.avv != -1) {
            j = this.avv;
        } else {
            j = (this.avr == null || this.avr.f2420mS == null) ? 0L : this.avr.f2420mS.f1682kq;
            if (j == 0) {
                j = RootSdk.getInstance().getSubmitUserCount();
            }
        }
        if (System.currentTimeMillis() - m11282AD() < 86400000 && j == m11284AB() - 1) {
            return m11284AB();
        }
        return j;
    }

    /* renamed from: al */
    public void m11268al(long j) {
        bbl.m7809a(this.mContext, "key_adapt_req_commit_timestamp", j);
    }

    /* renamed from: AD */
    private long m11282AD() {
        return bbl.m7805y(this.mContext, "key_adapt_req_commit_timestamp");
    }

    /* renamed from: am */
    public void m11267am(long j) {
        this.avv = j;
    }

    /* renamed from: AE */
    public long m11281AE() {
        return bbl.m7805y(this.mContext, "key_old_my_ranking");
    }

    /* renamed from: an */
    public void m11266an(long j) {
        bbl.m7809a(this.mContext, "key_old_my_ranking", j);
    }

    /* renamed from: AF */
    public long m11280AF() {
        if (this.avr == null || this.avr.f2420mS == null) {
            return 0L;
        }
        return this.avr.f2420mS.f1683kr;
    }

    /* renamed from: AG */
    public int m11279AG() {
        if (this.avr == null || this.avr.f2421mT == null) {
            return 0;
        }
        return this.avr.f2421mT.f2245lx;
    }

    /* renamed from: AH */
    public boolean m11278AH() {
        if (this.avr == null || this.avr.f2421mT == null) {
            return false;
        }
        return this.avr.f2421mT.f2244iI != 1;
    }

    /* renamed from: AI */
    public boolean m11277AI() {
        return bbl.m7804z(this.mContext, "kingroot_android_adapt_request_received") != 0;
    }

    /* renamed from: AJ */
    public void m11276AJ() {
        bbl.m7806e(this.mContext, "kingroot_android_adapt_request_received", 1);
    }

    /* renamed from: AK */
    public boolean m11275AK() {
        if (this.avq == null) {
            this.avq = aju.m11392g(this.mContext, true);
        }
        if (this.avq == null || this.avq.f1707kw == null || this.avq.f1708kx == null) {
            return false;
        }
        this.avr = this.avq.f1707kw;
        this.avs = this.avq.f1708kx;
        this.avu = this.avs.size();
        return true;
    }

    /* renamed from: AL */
    public long m11274AL() {
        if (this.avr == null || this.avr.f2420mS == null) {
            return 0L;
        }
        return this.avr.f2420mS.f1683kr;
    }

    /* renamed from: AM */
    public String m11273AM() {
        if (this.avr == null || this.avr.f2420mS == null) {
            return null;
        }
        return this.avr.f2420mS.f1680ko;
    }

    /* renamed from: dV */
    public long m11265dV(int i) {
        if (this.avs == null || this.avs.isEmpty() || this.avs.get(i) == null) {
            return 0L;
        }
        this.avt = this.avs.get(i);
        return this.avt.f1682kq;
    }

    /* renamed from: dW */
    public String m11264dW(int i) {
        if (this.avs == null || this.avs.isEmpty() || this.avs.get(i) == null) {
            return null;
        }
        this.avt = this.avs.get(i);
        return this.avt.f1681kp;
    }

    /* renamed from: dX */
    public String m11263dX(int i) {
        if (this.avs == null || this.avs.isEmpty() || this.avs.get(i) == null) {
            return null;
        }
        this.avt = this.avs.get(i);
        return this.avt.f1680ko;
    }

    /* renamed from: a */
    public void m11271a(C2475bk c2475bk) {
        this.avq = c2475bk;
        m11275AK();
    }

    /* renamed from: AN */
    public void m11272AN() {
        beg.m7461Zj().m7450c(this.avx);
    }
}
