package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.kingroot.kinguser.ss */
/* loaded from: classes.dex */
public class C3608ss {
    @NonNull
    /* renamed from: e */
    public static String m2234e(@NonNull String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                sb.append(str + "=?");
            }
        }
        return sb.toString();
    }

    @NonNull
    /* renamed from: c */
    public static Map<String, String> m2235c(@NonNull String str, @NonNull String[] strArr) {
        HashMap hashMap = new HashMap();
        if (str == null || strArr == null) {
            return hashMap;
        }
        Matcher matcher = Pattern.compile("[a-zA-Z_]*(\\s)*=\\?", 2).matcher(str);
        int i = 0;
        while (matcher.find()) {
            hashMap.put(matcher.group(0).split("=")[0], i < strArr.length ? strArr[i] : "");
            i++;
        }
        return hashMap;
    }
}
