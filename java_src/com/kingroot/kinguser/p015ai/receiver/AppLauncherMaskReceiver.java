package com.kingroot.kinguser.p015ai.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3637tk;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ahm;
import com.kingroot.kinguses.R;
/* renamed from: com.kingroot.kinguser.ai.receiver.AppLauncherMaskReceiver */
/* loaded from: classes.dex */
public class AppLauncherMaskReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        boolean z;
        if (intent == null) {
            str = "";
            z = false;
        } else {
            str = TextUtils.isEmpty(intent.getStringExtra("extra_app_name_string")) ? "" : intent.getStringExtra("extra_app_name_string");
            z = intent.getBooleanExtra("extra_is_only_show_toast", false);
        }
        if (z) {
            C3637tk m2167cS = C3637tk.m2167cS("AppLauncherMaskReceiver#Toast");
            View inflate = LayoutInflater.from(C3636tj.m2169ge()).inflate(R.layout.layout_toast_whit_icon, (ViewGroup) null);
            ((TextView) inflate.findViewById(R.id.toast_text)).setText(String.format(C3953zi.m1311pr().getString(R.string.app_launcher_mask_tip), str));
            Toast toast = new Toast(C3636tj.m2169ge());
            toast.setDuration(0);
            toast.setView(inflate);
            toast.show();
            if (m2167cS != null) {
                m2167cS.m2161s(3000L);
                return;
            }
            return;
        }
        ahm.m11714xs().m11716fU(str);
    }
}
