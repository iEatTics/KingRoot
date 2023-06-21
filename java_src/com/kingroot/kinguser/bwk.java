package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class bwk {
    private long aKT;
    private int action;
    private int bJE;
    private int bQZ;
    private long bRa;
    private Context context;

    public int aab() {
        return this.bQZ;
    }

    public int aiK() {
        return this.bJE;
    }

    public int getAction() {
        return this.action;
    }

    public long aiL() {
        return this.bRa;
    }

    public long aiM() {
        return this.aKT;
    }

    public Context getContext() {
        return this.context;
    }

    private bwk(C2645a c2645a) {
        this.bQZ = c2645a.bQZ;
        this.bJE = c2645a.bJE;
        this.action = c2645a.action;
        this.bRa = c2645a.bRa;
        this.aKT = c2645a.aKT;
        this.context = c2645a.context;
    }

    /* renamed from: b */
    public static C2645a m5330b(Context context, int i, int i2) {
        return new C2645a(context, i, i2);
    }

    /* renamed from: com.kingroot.kinguser.bwk$a */
    /* loaded from: classes.dex */
    public static final class C2645a {
        private long aKT;
        private int action;
        private int bJE;
        private int bQZ;
        private long bRa;
        private Context context;

        private C2645a(Context context, int i, int i2) {
            this.bQZ = 0;
            this.bJE = 0;
            this.action = 0;
            this.bRa = bwr.bSs * 12;
            this.aKT = 0L;
            if (i <= -1) {
                throw new IllegalArgumentException("scenes invalid: " + i);
            }
            this.context = context.getApplicationContext();
            this.bJE = i;
            this.action = i2;
        }

        /* renamed from: kK */
        public C2645a m5322kK(int i) {
            if (i < 0 || i > 2) {
                throw new IllegalArgumentException("invalid requestType : " + i);
            }
            this.bQZ = i;
            return this;
        }

        /* renamed from: cJ */
        public C2645a m5326cJ(long j) {
            if (j < bwr.bSv) {
                this.bRa = bwr.bSv;
            } else if (j > bwr.bSs * 12) {
                this.bRa = bwr.bSs * 12;
            } else {
                this.bRa = j;
            }
            return this;
        }

        public bwk aiN() {
            return new bwk(this);
        }
    }
}
