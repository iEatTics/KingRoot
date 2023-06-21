package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import com.kingroot.kinguser.urlcheck.p017ui.UrlCheckMainActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aqq extends aqh {
    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return C3953zi.m1311pr().getString(R.string.urlcheck_main_page_option_enable);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return C3953zi.m1311pr().getString(R.string.url_main_page_tips_protect);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        if (!bfw.aaS().abe() || bfw.aaS().abg() >= 2) {
            return true;
        }
        return bfw.aaS().aaU() && bfp.aay().isEnable();
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
        aks m11143BP = aks.m11143BP();
        m11143BP.m10805bz(System.currentTimeMillis());
        m11143BP.m10769eL(m11143BP.m10938Fm() + 1);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        aks m11143BP = aks.m11143BP();
        long m10937Fn = m11143BP.m10937Fn();
        if (m11143BP.m10938Fm() == 2) {
            return false;
        }
        return acu.m12573b(m10937Fn, System.currentTimeMillis(), 432000000L);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    public boolean mo9577MH() {
        UrlCheckMainActivity.m1989f(null, true);
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MK */
    public int mo9576MK() {
        return 3;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 98;
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.icon_root_sec_def);
    }
}
