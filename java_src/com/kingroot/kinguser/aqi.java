package com.kingroot.kinguser;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.kingroot.kinguser.activitys.SecurityProtectActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqi extends aqh {
    private int aKc = 0;

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        C3953zi m1311pr = C3953zi.m1311pr();
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(this.aKc < 13 ? this.aKc : 13);
        return m1311pr.getString(R.string.examination_risk_found_risk, objArr);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return C3953zi.m1311pr().getString(R.string.examination_risk_warning_desc);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        this.aKc = 0;
        this.aKc += bcr.m7604XT().m7610dF(true).size();
        this.aKc += bcs.m7594Yc().m7610dF(true).size();
        if (biq.ada().adb() && !aks.m11143BP().m10965FL()) {
            this.aKc++;
        }
        return this.aKc == 0;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    public boolean mo9577MH() {
        Activity m12026vt = aft.m12026vt();
        if (m12026vt != null) {
            try {
                SecurityProtectActivity.m12606f(m12026vt, true);
            } catch (Exception e) {
            }
        }
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MK */
    public int mo9576MK() {
        return 30;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 97;
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.icon_manual_entry_warning);
    }
}
