package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class atu {
    @WorkerThread
    /* renamed from: OH */
    public static List<ats> m9142OH() {
        ArrayList arrayList = new ArrayList();
        List<String> m9349OH = asw.m9349OH();
        ArrayList arrayList2 = new ArrayList();
        if (m9349OH != null && m9349OH.size() != 0) {
            for (String str : m9349OH) {
                if (C3952zh.m1312pq().m1314du(str)) {
                    arrayList2.add(str);
                }
            }
        }
        arrayList.addAll(m9141bi(arrayList2));
        return arrayList;
    }

    /* renamed from: bi */
    private static List<ats> m9141bi(List<String> list) {
        if (list == null || list.size() == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                ats atsVar = new ats();
                atsVar.adZ = str;
                atsVar.mAppName = m9139jf(str);
                atsVar.mIcon = m9140je(str);
                atsVar.aQc = false;
                atsVar.aQd = null;
                arrayList.add(atsVar);
            }
        }
        return arrayList;
    }

    /* renamed from: je */
    public static Drawable m9140je(String str) {
        PackageManager packageManager = KUApplication.m13453ge().getPackageManager();
        try {
            return packageManager.getApplicationInfo(str, 0).loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: jf */
    public static String m9139jf(String str) {
        PackageManager packageManager = KUApplication.m13453ge().getPackageManager();
        try {
            return packageManager.getApplicationInfo(str, 0).loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /* renamed from: t */
    public static void m9137t(Context context, String str) {
        Intent m7090lq;
        if (!TextUtils.isEmpty(str) && (m7090lq = bgs.m7090lq(str)) != null) {
            Intent intent = new Intent(m7090lq);
            intent.setFlags(270532608);
            context.startActivity(intent);
        }
    }

    /* renamed from: v */
    public static boolean m9136v(Context context, String str) {
        return bgs.m7090lq(str) != null;
    }

    /* renamed from: jg */
    private static void m9138jg(String str) {
        if (!TextUtils.isEmpty(str)) {
            new atx(KUApplication.m13453ge()).m9111jh(str);
        }
    }

    /* renamed from: w */
    public static void m9135w(Context context, String str) {
        m9138jg(str);
        m9137t(context, str);
        GameBoxProcessOptimizer.m3781Os();
    }
}
