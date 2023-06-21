package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.Nullable;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3959zm;
import com.tencent.feedback.anr.ANRReport;
import com.tencent.feedback.eup.CrashReport;
import java.io.File;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.wa */
/* loaded from: classes.dex */
public class C3821wa {
    public static void initCrashReport(Context context, boolean z) {
        CrashReport.initCrashReport(context, z);
        CrashReport.setProductVersion(context, m1595mZ());
    }

    /* renamed from: W */
    public static void m1597W(Context context) {
        m1596a(context, null);
    }

    /* renamed from: a */
    public static void m1596a(final Context context, @Nullable final File[] fileArr) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.wa.1
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                File[] fileArr2;
                String str = C3958zl.m1295pw().getAbsolutePath() + File.separator;
                String str2 = abd.m12840qO() ? "librqd.arm64" : "librqd";
                File file = new File(str + str2 + ".so");
                C3959zm.m1291b(new C3959zm.C3962a(file.getAbsolutePath(), str2, 1));
                String absolutePath = KApplication.m13453ge().getDir("tomb", 0).getAbsolutePath();
                ArrayList arrayList = new ArrayList();
                arrayList.add(file);
                if (fileArr != null) {
                    for (File file2 : fileArr) {
                        if (file2 != null) {
                            arrayList.add(file2);
                        }
                    }
                }
                arrayList.add(new File(str + (abd.m12840qO() ? AbstractC3976zt.get("fn6") : AbstractC3976zt.get("fn3"))));
                CrashReport.initNativeCrashReport(context, absolutePath, true, arrayList, file);
            }
        }.m1530ny();
    }

    /* renamed from: mZ */
    private static String m1595mZ() {
        return KApplication.m13454dG() + "." + KApplication.m13435ij() + "." + KApplication.m13444hZ() + ("".equals(KApplication.m13431in()) ? "" : "." + KApplication.m13431in());
    }

    public static void startANRMonitor(Context context) {
        ANRReport.startANRMonitor(context);
    }
}
