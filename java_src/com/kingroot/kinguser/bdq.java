package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bdq extends bdm {
    private int bjB = 0;
    private int bjC = 0;
    private int bjD = 0;
    private int bjE = 0;
    private int bjF = 0;
    private int bjG = 0;
    private int bjH = 0;
    private int bjI = 0;
    private int bjJ = 0;
    private int bjK = 0;
    private int bjL = 1;

    public bdq() {
    }

    public bdq(String str) {
        if (!TextUtils.isEmpty(str)) {
            m7515la(str);
        }
    }

    /* renamed from: la */
    protected void m7515la(String str) {
        String[] kY = m7531kY(str);
        if (kY != null && kY.length >= 6) {
            this.adZ = kY[0];
            this.bjk = kY[1];
            this.mVersionName = kY[2];
            try {
                this.ads = Integer.parseInt(kY[3]);
            } catch (Exception e) {
            }
            m7518b(true, kY[4]);
            m7518b(false, kY[5]);
        }
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: YF */
    public String mo7521YF() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.adZ);
        arrayList.add(this.bjk);
        arrayList.add(this.mVersionName);
        arrayList.add(Integer.valueOf(this.ads));
        arrayList.add(m7517dH(true));
        arrayList.add(m7517dH(false));
        return m7535bO(arrayList);
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: ah */
    public void mo7519ah(int i, int i2) {
        switch (i) {
            case 1:
                if (this.bjL == 0) {
                    this.bjB += i2;
                    return;
                } else {
                    this.bjG += i2;
                    return;
                }
            case 2:
                if (this.bjL == 0) {
                    this.bjC += i2;
                    return;
                } else {
                    this.bjH += i2;
                    return;
                }
            case 3:
                if (this.bjL == 0) {
                    this.bjD += i2;
                    return;
                } else {
                    this.bjI += i2;
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: kZ */
    protected void mo7516kZ(String str) {
    }

    /* renamed from: b */
    protected void m7518b(boolean z, String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(",");
            if (split.length >= 5) {
                try {
                    if (z) {
                        this.bjB = Integer.parseInt(split[0]);
                        this.bjC = Integer.parseInt(split[1]);
                        this.bjD = Integer.parseInt(split[2]);
                        this.bjE = Integer.parseInt(split[3]);
                        this.bjF = Integer.parseInt(split[4]);
                    } else {
                        this.bjG = Integer.parseInt(split[0]);
                        this.bjH = Integer.parseInt(split[1]);
                        this.bjI = Integer.parseInt(split[2]);
                        this.bjJ = Integer.parseInt(split[3]);
                        this.bjK = Integer.parseInt(split[4]);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: YG */
    protected int[] mo7520YG() {
        return null;
    }

    /* renamed from: dH */
    protected int[] m7517dH(boolean z) {
        int[] iArr = new int[5];
        if (z) {
            iArr[0] = this.bjB;
            iArr[1] = this.bjC;
            iArr[2] = this.bjD;
            iArr[3] = this.bjE;
            iArr[4] = this.bjF;
        } else {
            iArr[0] = this.bjG;
            iArr[1] = this.bjH;
            iArr[2] = this.bjI;
            iArr[3] = this.bjJ;
            iArr[4] = this.bjK;
        }
        return iArr;
    }

    /* renamed from: w */
    public void m7514w(int i, boolean z) {
        this.bjL = i;
        if (z) {
            if (this.bjL == 0) {
                this.bjE++;
            } else {
                this.bjJ++;
            }
        } else if (this.bjL == 0) {
            this.bjF++;
        } else {
            this.bjK++;
        }
    }
}
