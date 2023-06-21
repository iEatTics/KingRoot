package com.kingroot.kinguser;

import java.util.HashMap;
/* renamed from: com.kingroot.kinguser.yc */
/* loaded from: classes.dex */
public class C3912yc {
    private static String TAG = "ui_skin_AttrFactory";

    /* renamed from: UR */
    private static HashMap<String, AbstractC3913yd> f4002UR = new HashMap<>();

    static {
        f4002UR.put("background", new C3908xz());
        f4002UR.put("textColor", new C3911yb());
        f4002UR.put("src", new C3910ya());
    }

    /* renamed from: b */
    public static AbstractC3913yd m1428b(String str, int i, String str2, String str3) {
        AbstractC3913yd clone = f4002UR.get(str).clone();
        if (clone == null) {
            return null;
        }
        clone.f4003US = str;
        clone.f4004UT = i;
        clone.f4005UU = str2;
        clone.f4006UV = str3;
        return clone;
    }

    /* renamed from: dr */
    public static boolean m1427dr(String str) {
        return f4002UR.containsKey(str);
    }
}
