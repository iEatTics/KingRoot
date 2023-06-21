package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.os.Environment;
import java.io.File;
/* loaded from: classes.dex */
public final class bsn {
    @TargetApi(16)
    public static File getExternalStorageDirectory() {
        bsm.m5555b(bre.ahy().getApplicationContext(), "android.permission.READ_EXTERNAL_STORAGE");
        return Environment.getExternalStorageDirectory();
    }
}
