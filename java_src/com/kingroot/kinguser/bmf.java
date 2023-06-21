package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import cloudsdk.CloudSdk;
import cloudsdk.ILoadResult;
import cloudsdk.IModule;
import com.kingx.cloudsdk.C4016aq;
import java.util.ArrayList;
import java.util.Locale;
/* loaded from: classes.dex */
public final class bmf extends bmq {
    private static bmf bBw;
    private Context mContext;

    private bmf(Context context) {
        this.mContext = context;
    }

    /* renamed from: bB */
    public static bmf m6409bB(Context context) {
        if (bBw == null) {
            synchronized (bmf.class) {
                if (bBw == null) {
                    bBw = new bmf(context);
                }
            }
        }
        return bBw;
    }

    public final void afI() {
        String format;
        SharedPreferences sharedPreferences;
        int i;
        IModule module;
        ArrayList<C4016aq> afD = blz.afA().afD();
        for (int i2 = 0; i2 < afD.size(); i2++) {
            C4016aq c4016aq = afD.get(i2);
            if (c4016aq != null && !c4016aq.f4141bj && (i = (sharedPreferences = this.mContext.getSharedPreferences("cloudsdk", 0)).getInt((format = String.format(Locale.US, "mod_%d_%d_auto_run_times", Integer.valueOf(c4016aq.f4138aH), Integer.valueOf(c4016aq.versionCode))), 0)) <= 0) {
                ILoadResult loadModule = CloudSdk.getInstance().loadModule(c4016aq.f4138aH, false);
                if (loadModule.success() && (module = loadModule.getModule()) != null && module.execute(0, null).success()) {
                    sharedPreferences.edit().putInt(format, i + 1).commit();
                }
            }
        }
    }
}
