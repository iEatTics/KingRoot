package com.kingroot.kinguser;

import android.os.Environment;
import android.os.StatFs;
import android.p003os.Environmenu;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.ru */
/* loaded from: classes.dex */
public class C3565ru {
    /* renamed from: iW */
    public static long m2322iW() {
        if (Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED)) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        }
        return 0L;
    }

    @Deprecated
    /* renamed from: iX */
    public static String m2321iX() {
        return m2320iY();
    }

    /* renamed from: iY */
    public static String m2320iY() {
        return m2318ja();
    }

    /* renamed from: iZ */
    public static boolean m2319iZ() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == null) {
            return false;
        }
        return externalStorageState.equals(Environmenu.MEDIA_MOUNTED);
    }

    @WorkerThread
    /* renamed from: ja */
    public static String m2318ja() {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        if (TextUtils.isEmpty(absolutePath)) {
            return "/mnt/sdcard";
        }
        return absolutePath;
    }
}
