package com.kingroot.kinguser;

import android.content.Context;
import android.hardware.SensorManager;
import android.os.Build;
import android.util.SparseArray;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bwm {
    private static final int[] bRs = {1, 5, 4, 8, 9, 2};
    private static int bRt = -1;

    /* renamed from: a */
    public static byi m5301a(int i, int i2, Context context, int i3, SparseArray<bwu> sparseArray, List<bww> list) {
        byi byiVar = new byi();
        byiVar.bTW = 0L;
        byiVar.bTX = "";
        byiVar.bTZ = bza.m5151S(context, context.getPackageName()).versionCode;
        byiVar.f2165lc = "6D8B583F2D1668E0";
        byiVar.bUa = 105008;
        byiVar.bQZ = i3;
        byiVar.bUb = m5299nu(context.getPackageName());
        ArrayList<byt> arrayList = new ArrayList<>();
        for (int i4 = 0; i4 < sparseArray.size(); i4++) {
            arrayList.addAll(sparseArray.valueAt(i4).m5279cu(list));
        }
        if (arrayList.size() <= 0 || arrayList.get(0) == null) {
            throw new IllegalArgumentException("invalid stateUnits");
        }
        byr byrVar = new byr();
        byrVar.bUI = arrayList.get(0).bUP;
        byrVar.bUJ = arrayList;
        byrVar.bJE = i;
        byrVar.action = i2;
        ArrayList<byr> arrayList2 = new ArrayList<>();
        arrayList2.add(byrVar);
        byiVar.bTY = arrayList2;
        byiVar.f2159iE = m5299nu(bnl.m6227ae(context));
        byiVar.f2160iF = m5299nu(bnl.m6226ag(context));
        byiVar.f2164kp = m5299nu(Build.BRAND);
        byiVar.f2163ko = m5299nu(Build.MODEL);
        byiVar.bUc = m5299nu(Build.FINGERPRINT);
        byiVar.bUd = m5300bV(context);
        byiVar.sdkVer = Build.VERSION.SDK_INT;
        byiVar.f2161iI = 2;
        byiVar.f2162kj = m5299nu(bnl.m6224eq(true)) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m5299nu(bnl.m6224eq(false)) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m5299nu(bnl.m6225aj(context));
        byiVar.bUg = 12;
        byiVar.bUj = bwy.aji().ajj();
        ArrayList<byl> arrayList3 = new ArrayList<>();
        arrayList3.addAll(bxd.m5250ca(context));
        arrayList3.addAll(bxk.m5234ci(context));
        arrayList3.addAll(byg.m5173ci(context));
        arrayList3.addAll(bxi.m5238ci(context));
        byiVar.bUl = arrayList3;
        return byiVar;
    }

    /* renamed from: nu */
    private static String m5299nu(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: bV */
    private static int m5300bV(Context context) {
        if (bRt == -1) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager == null) {
                return bRt;
            }
            int i = 1;
            for (int i2 = 0; i2 < bRs.length; i2++) {
                i |= (sensorManager.getDefaultSensor(bRs[i2]) == null ? 0 : 1) << i2;
            }
            bRt = i;
        }
        return bRt;
    }
}
