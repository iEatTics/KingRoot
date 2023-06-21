package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bdo extends bdm {
    private int bjq = 0;
    private int bjr = 0;
    private int bjs = 0;
    private int bjt = 0;
    private int bju = 0;
    private int bjv = 0;
    private int bjw = 0;
    private int bjx = 0;
    int mReqType = -1;
    int bjy = 0;

    public bdo(String str) {
        if (!TextUtils.isEmpty(str)) {
            mo7522la(str);
        }
    }

    /* renamed from: la */
    protected void mo7522la(@NonNull String str) {
        String[] kY = m7531kY(str);
        if (kY != null && kY.length >= 8) {
            this.adZ = kY[0];
            this.bjk = kY[1];
            this.mVersionName = kY[2];
            try {
                this.ads = Integer.parseInt(kY[3]);
                mo7516kZ(kY[4]);
                this.mReqType = Integer.parseInt(kY[5]);
                this.bjy = Integer.parseInt(kY[7]);
            } catch (Exception e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: ah */
    public void mo7519ah(int i, int i2) {
        switch (i) {
            case 1:
                this.bjr++;
                break;
            case 2:
                this.bjs++;
                break;
            case 3:
                this.bjr++;
                this.bjt++;
                break;
            case 4:
                this.bjs++;
                this.bju++;
                break;
            case 5:
                this.bjv++;
                break;
            case 6:
                this.bjw++;
                break;
            case 7:
                this.bjx++;
                break;
        }
        this.bjq = this.bjr + this.bjs;
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: YF */
    public String mo7521YF() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.adZ);
        arrayList.add(this.bjk);
        arrayList.add(this.mVersionName);
        arrayList.add(Integer.valueOf(this.ads));
        arrayList.add(mo7520YG());
        arrayList.add(Integer.valueOf(m7527YI()));
        arrayList.add(Integer.valueOf(m7528YH()));
        arrayList.add(Integer.valueOf(m7526YJ()));
        return m7535bO(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bdm
    /* renamed from: YG */
    public int[] mo7520YG() {
        return new int[]{this.bjq, this.bjr, this.bjs, this.bjt, this.bju, this.bjv, this.bjw, this.bjx};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bdm
    /* renamed from: kZ */
    public void mo7516kZ(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(",");
            if (split.length >= 8) {
                try {
                    this.bjq = Integer.parseInt(split[0]);
                    this.bjr = Integer.parseInt(split[1]);
                    this.bjs = Integer.parseInt(split[2]);
                    this.bjt = Integer.parseInt(split[3]);
                    this.bju = Integer.parseInt(split[4]);
                    this.bjv = Integer.parseInt(split[5]);
                    this.bjw = Integer.parseInt(split[6]);
                    this.bjx = Integer.parseInt(split[7]);
                } catch (Exception e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: YH */
    public int m7528YH() {
        if (TextUtils.isEmpty(this.adZ)) {
            return 2;
        }
        int ruleType = bbt.m7780WG().getRuleType(this.adZ);
        if (1 == ruleType) {
            return 0;
        }
        return ruleType != 0 ? 2 : 1;
    }

    /* renamed from: io */
    public void m7525io(int i) {
        this.mReqType = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: YI */
    public int m7527YI() {
        return this.mReqType;
    }

    /* renamed from: ip */
    public void m7524ip(int i) {
        this.bjy = i;
    }

    /* renamed from: YJ */
    public int m7526YJ() {
        return this.bjy;
    }
}
