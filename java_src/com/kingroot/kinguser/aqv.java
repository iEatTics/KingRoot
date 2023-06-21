package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqv extends aqs {
    public aqv(are areVar) {
        this.aLu.add(areVar);
        this.aLu.add(new arh());
        this.aLu.add(new arb(R.string.examination_file_protect_summary, 4));
        this.aLu.add(new arc(R.string.examination_system_reinforce_summary));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MS */
    public String mo9555MS() {
        return C3953zi.m1311pr().getString(R.string.examination_module_examining_sys_defence);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MT */
    public String mo9554MT() {
        return C3953zi.m1311pr().getString(R.string.examination_module_optimizing_sys_defence);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: ME */
    public String mo9557ME() {
        return C3953zi.m1311pr().getQuantityString(R.plurals.examination_module_showing_sys_defence, this.aLy, Integer.valueOf(this.aLy));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MF */
    public String mo9556MF() {
        return this.aLx == 0 ? C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_optimized) : String.format(C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_fixed_risk_format), Integer.valueOf(this.aLx));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MU */
    public String mo9553MU() {
        return C3953zi.m1311pr().getString(R.string.examination_module_result_safe);
    }

    @Override // com.kingroot.kinguser.aqs
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.icon_sys_def);
    }
}
