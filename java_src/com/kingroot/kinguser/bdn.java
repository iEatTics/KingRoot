package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bdn extends bdm {
    private String bjm;
    private int bjn;
    private int bjo;
    private int bjp;

    public bdn() {
    }

    public bdn(String str) {
        if (!TextUtils.isEmpty(str)) {
            m7529la(str);
        }
    }

    /* renamed from: la */
    protected void m7529la(String str) {
        String[] kY = m7531kY(str);
        if (kY != null && kY.length >= 4) {
            this.bjm = kY[1];
            try {
                this.bjn = Integer.parseInt(kY[0]);
                this.bjo = Integer.parseInt(kY[2]);
                this.bjp = Integer.parseInt(kY[3]);
            } catch (Exception e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: ah */
    public void mo7519ah(int i, int i2) {
        if (i == 0) {
            this.bjo += i2;
        } else {
            this.bjp += i2;
        }
    }

    /* renamed from: R */
    public void m7530R(String str, int i) {
        this.bjm = str;
        this.bjn = i;
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: YF */
    public String mo7521YF() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.bjn));
        arrayList.add(this.bjm);
        arrayList.add(Integer.valueOf(this.bjo));
        arrayList.add(Integer.valueOf(this.bjp));
        return m7535bO(arrayList);
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: YG */
    protected int[] mo7520YG() {
        return null;
    }

    @Override // com.kingroot.kinguser.bdm
    /* renamed from: kZ */
    protected void mo7516kZ(String str) {
    }
}
