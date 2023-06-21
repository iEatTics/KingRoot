package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.util.UUID;
/* loaded from: classes.dex */
public class bbj {
    private static String bfe = null;

    /* renamed from: kp */
    public static synchronized boolean m7818kp(String str) {
        boolean z;
        synchronized (bbj.class) {
            if (TextUtils.isEmpty(str)) {
                z = false;
            } else {
                bfe = str;
                z = true;
            }
        }
        return z;
    }

    /* renamed from: ac */
    public static synchronized File m7819ac(int i, int i2) {
        File file;
        synchronized (bbj.class) {
            if (TextUtils.isEmpty(bfe)) {
                file = null;
            } else {
                File file2 = new File(bfe);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                file = new File(file2, i + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i2 + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + UUID.randomUUID().toString() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + System.currentTimeMillis());
            }
        }
        return file;
    }
}
