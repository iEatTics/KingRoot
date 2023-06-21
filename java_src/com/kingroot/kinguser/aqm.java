package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import com.kingroot.kinguser.activitys.DefaultAppSettingsActivity;
import com.kingroot.kinguses.R;
import java.util.Locale;
/* loaded from: classes.dex */
public class aqm extends aqh {
    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        return !enable();
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    protected boolean mo9577MH() {
        aks.m11143BP().m10951FZ();
        DefaultAppSettingsActivity.start(true);
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
        aks.m11143BP().m10954FW();
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        return enable();
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return String.format(Locale.ENGLISH, C3953zi.m1311pr().getString(R.string.def_setting_manual_entry_tips), Integer.valueOf(ahg.m11770wT().m11768wV()));
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return C3953zi.m1311pr().getString(R.string.advance_perm_noroot_default_settings_sub_title);
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return C3953zi.m1311pr().getDrawable(R.drawable.per_default_white);
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 149;
    }

    private boolean enable() {
        return abc.m12845qK().isRootPermition(false) && ahg.m11770wT().m11768wV() > 0 && !aks.m11143BP().m10953FX();
    }
}
