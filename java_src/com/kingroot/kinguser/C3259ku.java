package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.HashMap;
/* renamed from: com.kingroot.kinguser.ku */
/* loaded from: classes.dex */
public class C3259ku {

    /* renamed from: ur */
    private static HashMap<String, String> f2972ur = new HashMap<>();

    static {
        f2972ur.put("com.kingroot.kinguser", "105511");
        f2972ur.put("com.kingroot.master", "105512");
        f2972ur.put("com.tencent.qqpimsecure", "105513");
    }

    /* renamed from: aS */
    public static String m3239aS(String str) {
        String str2 = f2972ur.get(str);
        if (TextUtils.isEmpty(str2)) {
            return "105510";
        }
        return str2;
    }
}
