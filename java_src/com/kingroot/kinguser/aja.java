package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class aja {
    /* renamed from: e */
    public static List<String> m11490e(String str, String str2, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str);
            if (file.exists() && 0 != file.length()) {
                arrayList.addAll(aar.m12944r(str2, false));
                arrayList.add(String.format(Locale.US, "cat %s > %s", str, str2));
                arrayList.add(aas.f1261XW + str2);
                arrayList.add(aas.f1262XX + str2);
                arrayList.add(String.format(Locale.US, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", str2));
                if (z) {
                    arrayList.addAll(aar.m12944r(str2, true));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: ab */
    public static List<String> m11491ab(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            arrayList.addAll(aar.m12944r(str2, false));
            arrayList.add(aas.f1260XV + str2);
            arrayList.add(String.format(Locale.US, "ln -s %s %s", str, str2));
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: o */
    public static String m11489o(String str, String str2, String str3) {
        String format;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        String m11602ya = aip.m11602ya();
        if (TextUtils.isEmpty(m11602ya)) {
            return null;
        }
        if (TextUtils.isEmpty(str3)) {
            format = String.format(Locale.US, "ds %s %s", str, str2);
        } else {
            format = String.format(Locale.US, "ds %s %s '%s'", str, str2, str3);
        }
        return String.format(Locale.US, m11602ya, format);
    }

    @Nullable
    /* renamed from: a */
    public static String m11492a(String str, ArrayList<Integer> arrayList) {
        if (TextUtils.isEmpty(str) || C3942yy.m1351d(arrayList)) {
            return null;
        }
        String m11602ya = aip.m11602ya();
        if (TextUtils.isEmpty(m11602ya)) {
            return null;
        }
        StringBuilder sb = new StringBuilder("dump --su " + str);
        Iterator<Integer> it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append(" ").append(it.next().intValue());
        }
        return String.format(Locale.US, m11602ya, sb.toString());
    }
}
