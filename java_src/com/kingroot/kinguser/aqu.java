package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqu extends aqs {
    public aqu() {
        if (abc.m12845qK().isRootPermition()) {
            this.aLu.add(new aqw());
            this.aLu.add(new aqx());
            this.aLu.add(new arb(R.string.examination_enhance_privacy_summary, 1));
        }
        this.aLu.add(new arb(R.string.examination_intercept_flow_summary, 2));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MS */
    public String mo9555MS() {
        return C3953zi.m1311pr().getString(R.string.examination_module_examining_root_security_mgr);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MT */
    public String mo9554MT() {
        return C3953zi.m1311pr().getString(R.string.examination_module_optimizing_root_security_mgr);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: ME */
    public String mo9557ME() {
        return C3953zi.m1311pr().getQuantityString(R.plurals.examination_module_showing_root_security_mgr, this.aLy, Integer.valueOf(this.aLy));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MF */
    public String mo9556MF() {
        return this.aLx == 0 ? C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_done) : String.format(C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_fixed_risk_format), Integer.valueOf(this.aLx));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MU */
    public String mo9553MU() {
        return C3953zi.m1311pr().getString(R.string.examination_module_result_safe);
    }

    @Override // com.kingroot.kinguser.aqs
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.icon_root_security);
    }
}
