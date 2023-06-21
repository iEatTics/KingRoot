package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqt extends aqs {
    public aqt() {
        this.aLu.add(new aqz());
        this.aLu.add(new arf());
        this.aLu.add(new ara());
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MS */
    public String mo9555MS() {
        return C3953zi.m1311pr().getString(R.string.examination_module_examining_enhance_efficiency);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MT */
    public String mo9554MT() {
        return C3953zi.m1311pr().getString(R.string.examination_module_optimizing_enhance_efficiency);
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: ME */
    public String mo9557ME() {
        return C3953zi.m1311pr().getQuantityString(R.plurals.examination_module_showing_enhance_efficiency, this.aLy, Integer.valueOf(this.aLy));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MF */
    public String mo9556MF() {
        aqb m9524a = arq.m9524a(aro.class, false);
        if (m9524a == null || !(m9524a instanceof aro) || m9524a.mo9529My()) {
            return this.aLx == 0 ? C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_optimized) : String.format(C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_optimize_num_format), Integer.valueOf(this.aLx));
        }
        return String.format(C3953zi.m1311pr().getString(R.string.examination_module_sub_showing_fix_running_slow_num_format), Integer.valueOf(this.aLx));
    }

    @Override // com.kingroot.kinguser.aqs
    /* renamed from: MU */
    public String mo9553MU() {
        return C3953zi.m1311pr().getString(R.string.examination_module_result_safe);
    }

    @Override // com.kingroot.kinguser.aqs
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.main_exam_scan_icon);
    }
}
