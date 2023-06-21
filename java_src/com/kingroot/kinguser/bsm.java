package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bsm {
    public static boolean ahW() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: b */
    public static int m5555b(Context context, String... strArr) {
        return m5556a(context, strArr, new ArrayList());
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    static int m5556a(Context context, String[] strArr, ArrayList<String> arrayList) {
        if (ahW()) {
            if (context == null || strArr == null || strArr.length == 0 || arrayList == null) {
                return -2;
            }
            for (String str : strArr) {
                Log.i("PermissionsUtil", "check permission " + str);
                if (-1 == context.checkCallingOrSelfPermission(str)) {
                    arrayList.add(str);
                    Log.i("PermissionsUtil", "check result - denied");
                } else {
                    Log.i("PermissionsUtil", "check result - granted");
                }
            }
            int size = arrayList.size();
            if (size != 0) {
                return size < strArr.length ? 0 : -1;
            }
            return 1;
        }
        return 1;
    }
}
