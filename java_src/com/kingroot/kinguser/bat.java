package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.kingmaster.network.updata.ICheckIPCListener;
import com.kingroot.kinguser.activitys.WiFiSettingActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bat {
    public static boolean isAvailable() {
        return true;
    }

    /* renamed from: l */
    public static void m7892l(@NonNull Activity activity) {
        try {
            ady.m12308tK().mo1746bi(100190);
            Intent intent = new Intent();
            intent.setClass(activity, WiFiSettingActivity.class);
            activity.startActivity(intent);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public static void m7893b(ICheckIPCListener iCheckIPCListener) {
        if (!aeg.m12265um().mo12234a(iCheckIPCListener)) {
            HandlerC3839wk.m1559bE(R.string.version_update_check_updating_background);
        }
    }
}
