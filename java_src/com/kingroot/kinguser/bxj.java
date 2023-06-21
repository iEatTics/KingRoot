package com.kingroot.kinguser;

import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class bxj {
    private static String[] bTr = {bwo.m5296k(bwo.bSa), bwo.m5296k(bwo.bSb), bwo.m5296k(bwo.bSc), bwo.m5296k(bwo.bSd), bwo.m5296k(bwo.bSe), bwo.m5296k(bwo.bSf), bwo.m5296k(bwo.bSg)};
    private static String[] bTs = {bwo.m5296k(bwo.bSh), bwo.m5296k(bwo.bSi), bwo.m5296k(bwo.bSj), bwo.m5296k(bwo.bSk), bwo.m5296k(bwo.bSl)};

    /* renamed from: n */
    public static Set<String> m5236n(Set<String> set) {
        HashSet hashSet = new HashSet();
        for (String str : set) {
            for (String str2 : bTr) {
                if (Pattern.compile(str2).matcher(str).find()) {
                    hashSet.add(str);
                }
            }
        }
        set.removeAll(hashSet);
        return set;
    }

    /* renamed from: o */
    public static Set<String> m5235o(Set<String> set) {
        HashSet hashSet = new HashSet();
        for (String str : set) {
            for (String str2 : bTs) {
                if (Pattern.compile(str2).matcher(str).find()) {
                    hashSet.add(str);
                }
            }
        }
        return hashSet;
    }
}
