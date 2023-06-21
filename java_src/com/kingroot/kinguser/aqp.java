package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.Locale;
/* loaded from: classes.dex */
public class aqp extends aqh {
    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        return ais.m11585ye().m11583yg();
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
        aks m11143BP = aks.m11143BP();
        m11143BP.m10809bx(System.currentTimeMillis());
        m11143BP.m10771eJ(m11143BP.m10941Fj() + 1);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        aks m11143BP = aks.m11143BP();
        return m9589h(m11143BP.m10942Fi(), m11143BP.m10941Fj());
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    public boolean mo9577MH() {
        Context ge = KUApplication.m13453ge();
        adw.m12388tb().m12391cD(4);
        if (!ais.m11585ye().m11584yf()) {
            bar.m7896bf(ge);
        } else {
            String m11578yl = ais.m11585ye().m11578yl();
            ApplicationInfo applicationInfo = null;
            try {
                applicationInfo = C3952zh.m1312pq().getApplicationInfo(m11578yl, 0);
            } catch (PackageManager.NameNotFoundException e) {
            }
            if (applicationInfo != null && !applicationInfo.enabled) {
                abc.m12845qK().m12846el(String.format(Locale.US, "pm enable %s", m11578yl));
            }
            ais.m11582yh();
        }
        aks.m11143BP().m11036Ds();
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return C3953zi.m1311pr().getString(R.string.examination_manual_entry_showing_purify);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return C3953zi.m1311pr().getString(R.string.examination_manual_entry_sub_showing_purify);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MK */
    public int mo9576MK() {
        return 3;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 99;
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.icon_purify_entry);
    }
}
