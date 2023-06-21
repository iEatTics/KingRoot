package com.kingroot.kinguser;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.activitys.AppsMarketShortcutActivity;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class ane {
    private static String TAG = "ku_utils__AppMarketShortcut";
    private static bed aAy = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ane.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            if (!ane.m10301IS()) {
                ane.m10300IT();
            }
        }
    });

    /* renamed from: IR */
    public static void m10302IR() {
        akl m11257AS = akl.m11257AS();
        if (!m11257AS.m11250AZ()) {
            m11257AS.m11251AY();
            ady.m12308tK().mo1746bi(100608);
            beg.m7461Zj().m7450c(aAy);
        }
    }

    /* renamed from: IS */
    public static boolean m10301IS() {
        return bgx.m7080aL(C3953zi.m1311pr().getString(R.string.app_market_name), KUApplication.m13453ge().getApplicationInfo().packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: IT */
    public static void m10300IT() {
        String string = C3953zi.m1311pr().getString(R.string.app_market_shortcut_name);
        Bitmap decodeResource = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.apps_market_shortcut);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClass(KApplication.m13453ge(), AppsMarketShortcutActivity.class);
        bgx.m7082a("com.android.launcher.action.INSTALL_SHORTCUT", string, decodeResource, intent);
    }
}
