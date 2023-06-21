package com.kingroot.kinguser;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.kingroot.kinguser.gamebox.foreground.GameBoxMainActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqn extends aqh {
    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return C3953zi.m1311pr().getString(R.string.examination_manual_entry_showing_gamebox);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return C3953zi.m1311pr().getString(R.string.examination_manual_entry_sub_showing_gamebox);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        if (aii.m11642xL().m11640xN()) {
            return aks.m11143BP().m10995Eh();
        }
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
        aks m11143BP = aks.m11143BP();
        m11143BP.m10807by(System.currentTimeMillis());
        m11143BP.m10770eK(m11143BP.m10940Fk() + 1);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        aks m11143BP = aks.m11143BP();
        return m9589h(m11143BP.m10939Fl(), m11143BP.m10940Fk());
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    public boolean mo9577MH() {
        Activity m12026vt = aft.m12026vt();
        if (m12026vt != null) {
            GameBoxMainActivity.m3762c(m12026vt);
            return true;
        }
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 150;
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.icon_gamebox);
    }
}
