package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class bbz {
    private static final String TAG = aiq.asa + "_RootProcRecycleTools";

    /* renamed from: a */
    public static boolean m7744a(Set<String> set, Set<String> set2) {
        if (set.size() + set2.size() <= 30) {
            return m7743b(set, set2);
        }
        for (List list : m7740g(new ArrayList(set), 30)) {
            if (m7743b(new HashSet(list), Collections.EMPTY_SET)) {
                return true;
            }
        }
        for (List list2 : m7740g(new ArrayList(set2), 30)) {
            if (m7743b(Collections.EMPTY_SET, new HashSet(list2))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    static <T> List<List<T>> m7740g(List<T> list, int i) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            arrayList.add(new ArrayList(list.subList(i2, Math.min(size, i2 + i))));
            i2 += i;
        }
        return arrayList;
    }

    /* renamed from: b */
    private static boolean m7743b(Set<String> set, Set<String> set2) {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            StringBuilder sb = new StringBuilder();
            sb.append(aba.m12853qH());
            sb.append(" rpr ");
            if (set != null && set.size() > 0) {
                sb.append(" -a ");
                sb.append(m7739i(set));
            }
            if (set2 != null && set2.size() > 0) {
                sb.append(" -c ");
                sb.append(m7739i(set2));
            }
            sb.append(" -d ");
            String str = m12845qK.m12846el(sb.toString()).mStdOut;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return "1".equals(str);
        }
        return false;
    }

    /* renamed from: c */
    public static void m7742c(Set<String> set, Set<String> set2) {
        if (m7744a(set, set2)) {
            ady.m12308tK().mo1746bi(100393);
            if (set.size() + set2.size() <= 30) {
                m7741d(set, set2);
                return;
            }
            for (List list : m7740g(new ArrayList(set), 30)) {
                m7741d(new HashSet(list), Collections.EMPTY_SET);
            }
            for (List list2 : m7740g(new ArrayList(set2), 30)) {
                m7741d(Collections.EMPTY_SET, new HashSet(list2));
            }
        }
    }

    /* renamed from: d */
    private static void m7741d(Set<String> set, Set<String> set2) {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            StringBuilder sb = new StringBuilder();
            sb.append(aba.m12853qH());
            sb.append(" rpr ");
            if (set != null && set.size() > 0) {
                sb.append(" -a ");
                sb.append(m7739i(set));
            }
            if (set2 != null && set2.size() > 0) {
                sb.append(" -c ");
                sb.append(m7739i(set2));
            }
            m12845qK.m12846el(sb.toString());
        }
    }

    /* renamed from: i */
    private static String m7739i(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        sb.append("\"");
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(";");
            }
        }
        sb.append("\"");
        return sb.toString();
    }
}
