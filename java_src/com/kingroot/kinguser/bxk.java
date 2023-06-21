package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class bxk {
    private static Map<String, Set<String>> bTt = new HashMap();
    private static Map<String, Integer> bTu = new HashMap();

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("18C867F0717AA67B2AB7347505BA07ED");
        bTt.put(bwo.m5296k(bwo.bSm), hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add("31223B0BDF1DEF1FE8252971ADA3B577");
        hashSet2.add("CCD4AD38DC6669F875BC37E3F8840648");
        hashSet2.add("AA3978F41FD96FF9914A669E186474C7");
        hashSet2.add("775E696D09856872FDD8AB4F3F06B1E0");
        hashSet2.add("A6B745BF24A2C277527716F6F36EB68D");
        hashSet2.add("A01EECAB85E9E3BA2B0F6A158C855C29");
        bTt.put(bwo.m5296k(bwo.bSn), hashSet2);
        HashSet hashSet3 = new HashSet();
        hashSet3.add("191240FCB048127DB9110D1B30537FDE");
        bTt.put(bwo.m5296k(bwo.bSo), hashSet3);
        bTu.put(bwo.m5296k(bwo.bSm), 105118);
        bTu.put(bwo.m5296k(bwo.bSn), 105178);
        bTu.put(bwo.m5296k(bwo.bSo), 105008);
    }

    /* renamed from: ci */
    public static ArrayList<byl> m5234ci(Context context) {
        ArrayList<byl> arrayList = new ArrayList<>();
        arrayList.addAll(m5232cl(context));
        arrayList.addAll(m5233ck(context));
        return arrayList;
    }

    /* renamed from: ck */
    private static ArrayList<byl> m5233ck(Context context) {
        boolean z;
        ArrayList<byl> arrayList = new ArrayList<>();
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            return arrayList;
        }
        Set<String> set = bTt.get(packageName);
        if (set == null || set.size() == 0) {
            return arrayList;
        }
        String m5148U = bza.m5148U(context, packageName);
        if (TextUtils.isEmpty(m5148U)) {
            return arrayList;
        }
        Iterator<String> it = set.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().equals(m5148U)) {
                z = true;
                break;
            }
        }
        if (!z) {
            byl bylVar = new byl();
            bylVar.bUx = "turingmm_repack";
            bylVar.bUy = packageName + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m5148U;
            arrayList.add(bylVar);
        }
        return arrayList;
    }

    /* renamed from: cl */
    private static ArrayList<byl> m5232cl(Context context) {
        ArrayList<byl> arrayList = new ArrayList<>();
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            return arrayList;
        }
        Integer num = bTu.get(packageName);
        if (num != null) {
            if (num.intValue() == 105008) {
                return arrayList;
            }
            String m5148U = bza.m5148U(context, packageName);
            byl bylVar = new byl();
            bylVar.bUx = "turingmm_repack";
            bylVar.bUy = packageName + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m5148U;
            arrayList.add(bylVar);
        }
        return arrayList;
    }
}
