package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vq */
/* loaded from: classes.dex */
public class C3796vq {
    /* renamed from: a */
    public static C2037b m1752a(@NonNull C2854da c2854da) {
        C2037b c2037b = new C2037b();
        if (c2854da != null) {
            c2037b.featureId = c2854da.f2414id;
            c2037b.timestamp = c2854da.f2413fY;
            c2037b.count = Integer.parseInt(c2854da.desc);
            c2037b.strValues = m1751de(c2854da.f2416mO);
        }
        return c2037b;
    }

    /* renamed from: C */
    public static List<C2037b> m1753C(List<C2854da> list) {
        ArrayList arrayList = new ArrayList();
        for (C2854da c2854da : C3942yy.m1350e(list)) {
            arrayList.add(m1752a(c2854da));
        }
        return arrayList;
    }

    /* renamed from: de */
    private static ArrayList<String> m1751de(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (!TextUtils.isEmpty(str)) {
            arrayList.addAll(Arrays.asList(str.replaceAll(";", ",").split("\\|")));
        }
        return arrayList;
    }
}
