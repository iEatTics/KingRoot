package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.activitys.KmUpdateActivity;
/* loaded from: classes.dex */
public class bar {
    /* renamed from: VI */
    public static boolean m7899VI() {
        return false;
    }

    /* renamed from: VJ */
    public static void m7898VJ() {
        try {
            adw.m12388tb().m12391cD(3);
            adw.m12388tb().m12392cC(3);
            Intent intent = new Intent();
            intent.setClass(KApplication.m13453ge(), KmUpdateActivity.class);
            intent.setFlags(268435456);
            KApplication.m13453ge().startActivity(intent);
        } catch (Exception e) {
        }
    }

    /* renamed from: VK */
    public static void m7897VK() {
        try {
            adw.m12388tb().m12391cD(7);
            adw.m12388tb().m12392cC(9);
            Intent intent = new Intent();
            intent.setClass(KApplication.m13453ge(), KmUpdateActivity.class);
            intent.setFlags(268435456);
            KApplication.m13453ge().startActivity(intent);
        } catch (Exception e) {
        }
    }

    /* renamed from: bf */
    public static void m7896bf(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClass(context, KmUpdateActivity.class);
            intent.setFlags(268435456);
            context.startActivity(intent);
            adw.m12388tb().m12392cC(5);
        } catch (Exception e) {
        }
    }
}
