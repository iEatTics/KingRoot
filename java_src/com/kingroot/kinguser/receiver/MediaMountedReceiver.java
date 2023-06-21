package com.kingroot.kinguser.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.p003os.Environmenu;
import com.kingroot.kinguser.bgr;
/* loaded from: classes.dex */
public class MediaMountedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
                bgr.m7091lp(Environmenu.MEDIA_MOUNTED);
            } else if ("android.intent.action.MEDIA_REMOVED".equals(action)) {
                bgr.m7091lp(Environmenu.MEDIA_REMOVED);
            } else if ("android.intent.action.MEDIA_UNMOUNTED".equals(action)) {
                bgr.m7091lp(Environmenu.MEDIA_UNMOUNTED);
            } else if ("android.intent.action.MEDIA_CHECKING".equals(action)) {
                bgr.m7091lp(Environmenu.MEDIA_CHECKING);
            } else if ("android.intent.action.MEDIA_BAD_REMOVAL".equals(action)) {
                bgr.m7091lp(Environmenu.MEDIA_BAD_REMOVAL);
            }
        }
    }
}
