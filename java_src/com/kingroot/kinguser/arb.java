package com.kingroot.kinguser;

import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class arb extends aqy<arl> {
    private int aLG;
    private int aLH;
    private int aLI;
    private int aLJ;
    private final int key;

    public arb(int i, int i2) {
        this.aLG = 0;
        this.aLH = 0;
        this.aLI = 0;
        this.aLJ = 0;
        this.aLG = i;
        this.aLH = i;
        this.aLI = i;
        this.aLJ = i;
        this.key = i2;
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nb */
    public String mo9534Nb() {
        if (this.aLI == 0) {
            return null;
        }
        return C3953zi.m1311pr().getString(this.aLI);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nc */
    public String mo9533Nc() {
        if (this.aLI == 0) {
            return null;
        }
        return C3953zi.m1311pr().getString(this.aLI);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nd */
    public String mo9532Nd() {
        if (this.aLJ == 0) {
            return null;
        }
        return C3953zi.m1311pr().getString(this.aLJ);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: Nf */
    public String mo9531Nf() {
        if (this.aLJ == 0) {
            return null;
        }
        return C3953zi.m1311pr().getString(this.aLJ);
    }

    @Override // com.kingroot.kinguser.aqy
    /* renamed from: MK */
    public int mo9535MK() {
        return 0;
    }

    @Override // com.kingroot.kinguser.aqy, com.kingroot.kinguser.aqb
    @NonNull
    public String getKey() {
        return super.getKey() + this.key;
    }
}
