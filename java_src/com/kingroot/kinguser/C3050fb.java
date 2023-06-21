package com.kingroot.kinguser;

import android.content.Context;
import com.tencent.tps.client.AbsTPSClientBase;
import java.io.File;
/* renamed from: com.kingroot.kinguser.fb */
/* loaded from: classes.dex */
public final class C3050fb {

    /* renamed from: Q */
    public static String f2651Q;

    /* renamed from: R */
    public static String f2652R;

    /* renamed from: S */
    public static String f2653S;

    /* renamed from: T */
    public static String f2654T;

    /* renamed from: ae */
    public static void m3868ae() {
        Context context;
        if (AbsTPSClientBase.getContext() != null) {
            f2651Q = context.getFilesDir().getPath() + "/tps";
            f2652R = f2651Q + "/stat";
            f2653S = f2652R + "/daily";
            f2654T = f2651Q + "/shark";
            for (String str : new String[]{f2651Q, f2652R, f2653S, "/data/data-lib/tps"}) {
                File file = new File(str);
                try {
                    if (file.exists() && !file.isDirectory()) {
                        file.delete();
                    }
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                } catch (Throwable th) {
                }
            }
        }
    }
}
