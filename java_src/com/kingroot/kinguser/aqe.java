package com.kingroot.kinguser;

import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqe {
    /* renamed from: MD */
    public static String m9598MD() {
        int i = 0;
        for (aqc aqcVar : aqd.m9603MA()) {
            if (aqcVar.aKZ instanceof aqi) {
                return C3953zi.m1311pr().getString(R.string.examination_status_untreated_risk_software);
            }
            if (aqcVar.type != 0 && aqcVar.type != 3) {
                break;
            }
            i++;
        }
        return i > 0 ? C3953zi.m1311pr().getQuantityString(R.plurals.examination_status_manually_manage, i, Integer.valueOf(i)) : C3953zi.m1311pr().getString(R.string.examination_status_optimized_two);
    }
}
