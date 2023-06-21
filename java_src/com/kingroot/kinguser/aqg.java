package com.kingroot.kinguser;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.kingroot.kinguser.activitys.AppsMarketWellChosenAppsActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqg extends aqh {
    private final int mCount;

    public aqg(int i) {
        this.mCount = i;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_examination_result_item_title);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return String.format(String.valueOf(C3953zi.m1311pr().getText(R.string.apps_market_well_chosen_title)), Integer.valueOf(this.mCount));
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        return !AppsMarketWellChosenAppsActivity.m12634vs();
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
        aks m11143BP = aks.m11143BP();
        m11143BP.m10767eN(m11143BP.m10960FQ() + 1);
        akl.m11257AS().m11209ao(System.currentTimeMillis());
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        if (!AppsMarketWellChosenAppsActivity.m12634vs()) {
            return false;
        }
        return m9589h(akl.m11257AS().m11242Ba(), aks.m11143BP().m10960FQ());
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    public boolean mo9577MH() {
        Activity m12026vt = aft.m12026vt();
        if (m12026vt != null) {
            AppsMarketWellChosenAppsActivity.m12635f(m12026vt, alx.m10508HB().mo10407HD().intValue());
            return true;
        }
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 148;
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.ic_exam_results_apps_market_well_chosen);
    }
}
