package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: com.kingroot.kinguser.rv */
/* loaded from: classes.dex */
public class C3566rv {

    /* renamed from: Gn */
    private static byte[] f3502Gn = new byte[0];

    /* renamed from: h */
    public static SharedPreferences m2314h(Context context, String str) {
        return m2317b(context, str, 0);
    }

    /* renamed from: cD */
    public static InterfaceC3598sk m2316cD(String str) {
        return C3603sp.m2251cH(str);
    }

    /* renamed from: cE */
    public static InterfaceC3598sk m2315cE(String str) {
        return C3599sl.m2259cH(str);
    }

    /* renamed from: i */
    public static SharedPreferences m2313i(Context context, String str) {
        return C3605sr.m2242h(context, str);
    }

    /* renamed from: b */
    public static SharedPreferences m2317b(Context context, String str, int i) {
        return context.getSharedPreferences(str, i);
    }

    /* renamed from: jc */
    public static InterfaceC3610su m2312jc() {
        return C3614sy.m2213jv();
    }
}
