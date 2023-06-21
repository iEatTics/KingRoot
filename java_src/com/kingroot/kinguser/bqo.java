package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
/* loaded from: classes.dex */
public final class bqo {

    /* renamed from: a */
    private static Context f2037a;

    public static final Context agA() {
        if (f2037a == null) {
            return null;
        }
        return f2037a;
    }

    /* renamed from: a */
    public static final void m5781a(Context context) {
        f2037a = context;
    }

    /* renamed from: b */
    public static final String m5780b() {
        return agA() == null ? "" : agA().getPackageName();
    }

    public static final File ahj() {
        if (agA() == null) {
            return null;
        }
        return agA().getFilesDir();
    }
}
