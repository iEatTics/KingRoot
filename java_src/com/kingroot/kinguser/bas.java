package com.kingroot.kinguser;

import android.content.Context;
import cloudsdk.ext.p008kr.RootInitConfig;
import cloudsdk.ext.p008kr.RootSdk;
import com.kingroot.common.app.KApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bas {
    public static boolean isAvailable() {
        return false;
    }

    /* renamed from: g */
    public static boolean m7894g(List<String> list, List<String> list2) {
        String m11573a = ait.m11573a(list, list2, 1);
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(m11573a);
        return RootSdk.getInstance().cleanRoot(arrayList) == 1;
    }

    /* renamed from: bg */
    public static boolean m7895bg(Context context) {
        RootInitConfig rootInitConfig = new RootInitConfig();
        rootInitConfig.setLogSwitchOn(false);
        rootInitConfig.setUseTestServer(false);
        rootInitConfig.setChannel(KApplication.m13442ib());
        rootInitConfig.setKdPath(abu.f1372ZP + File.separator + "kd," + abu.f1371ZO + File.separator + "kd," + abu.f1373ZQ + ",/system/usr/ikm/ikmsu");
        rootInitConfig.setWillKinguserSdkCleanApp(false);
        rootInitConfig.setKinguserSdkCleanListPath(avs.m8774RY().m8832Rx());
        rootInitConfig.setKinguserBuildNo(640);
        return RootSdk.getInstance().initialize(context, rootInitConfig, bbw.m7757WU());
    }
}
