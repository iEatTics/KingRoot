package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aeh {
    /* renamed from: un */
    public static int m12256un() {
        byte m1921O = C3748vb.m1921O(KApplication.m13453ge());
        if (m1921O == 0) {
            return 1;
        }
        return m1921O == -1 ? 3 : 2;
    }

    /* renamed from: a */
    public static void m12262a(@NonNull CheckResult checkResult) {
        ady.m12308tK().mo1748a(100410, 0, m12263a(1, 1, 0, 0, checkResult), true);
    }

    /* renamed from: a */
    public static void m12261a(@NonNull CheckResult checkResult, int i, int i2) {
        ady.m12308tK().mo1748a(100410, 0, m12263a(2, 0, i, i2, checkResult), true);
    }

    /* renamed from: a */
    public static void m12260a(@NonNull CheckResult checkResult, int i, int i2, int i3) {
        ady.m12308tK().mo1748a(100410, 0, m12263a(3, i, i2, i3, checkResult), true);
    }

    /* renamed from: b */
    public static void m12259b(@NonNull CheckResult checkResult, int i) {
        ady.m12308tK().mo1748a(100410, 0, m12263a(4, 0, i, aks.m11143BP().m11014EO(), checkResult), true);
    }

    /* renamed from: f */
    public static void m12257f(long j, int i) {
        ady.m12308tK().mo1748a(100410, 0, m12264a(5, 1, i, aks.m11143BP().m11014EO(), j, KApplication.m13436ii(), KApplication.m13444hZ()), true);
    }

    /* renamed from: c */
    public static void m12258c(@NonNull CheckResult checkResult, int i) {
        ady.m12308tK().mo1748a(100410, 0, m12263a(5, 2, i, aks.m11143BP().m11014EO(), checkResult), true);
    }

    @NonNull
    /* renamed from: a */
    private static List<Object> m12263a(int i, int i2, int i3, int i4, @NonNull CheckResult checkResult) {
        UpdateInfo updateInfo = null;
        if (!C3942yy.m1352c(checkResult.mUpdateInfoList)) {
            updateInfo = checkResult.mUpdateInfoList.get(0);
        }
        return updateInfo == null ? m12264a(i, i2, i3, i4, checkResult.mTaskId, "", 0) : m12264a(i, i2, i3, i4, checkResult.mTaskId, updateInfo.version, updateInfo.buildNum);
    }

    @NonNull
    /* renamed from: a */
    private static List<Object> m12264a(int i, int i2, int i3, int i4, long j, String str, int i5) {
        ArrayList arrayList = new ArrayList();
        String m11053Db = aks.m11143BP().m11053Db();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        arrayList.add(Integer.valueOf(i4));
        arrayList.add(Long.valueOf(j));
        arrayList.add(m11053Db);
        arrayList.add(str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i5);
        return arrayList;
    }
}
