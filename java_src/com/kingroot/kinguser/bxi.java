package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public class bxi {
    /* renamed from: ci */
    public static ArrayList<byl> m5238ci(Context context) {
        ArrayList<byl> arrayList = new ArrayList<>();
        Set<String> m5237cj = m5237cj(context);
        if (m5237cj.size() > 0) {
            String m5240a = m5240a(m5237cj, 8);
            byl bylVar = new byl();
            bylVar.bUx = "turingmm_inject";
            bylVar.bUy = m5240a;
            arrayList.add(bylVar);
        }
        return arrayList;
    }

    /* renamed from: a */
    private static String m5240a(Set<String> set, int i) {
        StringBuilder sb = new StringBuilder();
        Set<String> m5235o = bxj.m5235o(set);
        set.removeAll(m5235o);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(set);
        arrayList.addAll(m5235o);
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int i3 = i2 + 1;
            sb.append((String) it.next());
            if (i3 >= i) {
                break;
            }
            if (it.hasNext()) {
                sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            }
            i2 = i3;
        }
        return sb.toString();
    }

    /* renamed from: cj */
    private static Set<String> m5237cj(Context context) {
        HashSet hashSet = new HashSet();
        try {
            String[] split = new String(byy.m5164cy(bwo.m5296k(bwo.bRZ))).split("\\n");
            String packageName = context.getPackageName();
            for (String str : split) {
                String m5239ba = m5239ba(str, packageName);
                if (m5239ba != null) {
                    hashSet.add(m5239ba);
                }
            }
        } catch (IOException e) {
        }
        return bxj.m5236n(hashSet);
    }

    /* renamed from: ba */
    private static String m5239ba(String str, String str2) {
        int indexOf;
        String m5167R;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        String trim = str.substring(indexOf).trim();
        if (trim.startsWith("/data/")) {
            String str3 = "/data/data/" + str2 + "/";
            if (trim.startsWith(str3)) {
                return null;
            }
            boolean endsWith = trim.endsWith(".so");
            boolean z = !endsWith && trim.endsWith(".jar");
            if (endsWith || z) {
                if (endsWith && ((m5167R = byy.m5167R(new File(str3 + KlConst.PLUGIN_LIB_DIR_NAME))) == null || trim.startsWith(m5167R))) {
                    return null;
                }
                return trim;
            }
            return null;
        }
        return null;
    }
}
