package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
/* loaded from: classes.dex */
public class aao {
    /* renamed from: a */
    public static C0615a m12962a(ComponentName componentName, boolean z) {
        int indexOf;
        C0615a c0615a = new C0615a();
        c0615a.componentName = componentName;
        c0615a.f1241XD = z;
        if (z && abd.m12839qb() < 18) {
            c0615a.retCode = -2;
            return c0615a;
        } else if (!m12958b(componentName)) {
            c0615a.retCode = -3;
            return c0615a;
        } else if (!abc.m12845qK().isRootPermition(true)) {
            c0615a.retCode = -1;
            return c0615a;
        } else {
            VTCmdResult m12846el = abc.m12845qK().m12846el("content query --uri content://settings/secure  --projection value --where \"name='enabled_accessibility_services'\"");
            String flattenToString = componentName.flattenToString();
            if (z && m12846el.mStdOut.contains(flattenToString)) {
                c0615a.retCode = 1;
                return c0615a;
            }
            String[] split = m12846el.mStdOut.split("\\n");
            String str = "";
            for (String str2 : split) {
                if (!TextUtils.isEmpty(str2) && str2.startsWith("Row: 0") && (indexOf = str2.indexOf("value=")) != -1) {
                    str = str2.substring("value=".length() + indexOf, str2.length());
                }
            }
            m12960a(c0615a, m12959a(z, flattenToString, str));
            m12961a(c0615a);
            return c0615a;
        }
    }

    @NonNull
    /* renamed from: a */
    private static String m12959a(boolean z, String str, String str2) {
        String[] split;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(str2).append(TextUtils.isEmpty(str2) ? "" : ":").append(str);
        } else {
            for (String str3 : str2.split(":")) {
                if (!str.equals(str3)) {
                    sb.append(str3);
                    sb.append(":");
                }
            }
            int length = sb.length();
            if (length > 0) {
                sb.deleteCharAt(length - 1);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m12960a(C0615a c0615a, String str) {
        String str2;
        String str3;
        int i = 0;
        if (abd.m12839qb() >= 18) {
            str2 = "content call --uri content://settings/secure  --method PUT_secure --arg enabled_accessibility_services --extra value:s:" + str + " --extra _user:i:" + Integer.toString(0);
            str3 = "content call --uri content://settings/secure  --method PUT_secure --arg accessibility_enabled --extra value:s:" + Integer.toString(str.length() <= 0 ? 0 : 1) + " --extra _user:i:" + Integer.toString(0);
        } else {
            str2 = "content insert --uri content://settings/secure  --bind name:s:enabled_accessibility_services --bind value:s:" + str;
            str3 = "content insert --uri content://settings/secure  --bind name:s:accessibility_enabled --bind value:s:" + Integer.toString(str.length() <= 0 ? 0 : 1);
        }
        c0615a.retCode = (abc.m12845qK().m12846el(str2).success() && abc.m12845qK().m12846el(str3).success()) ? -4 : -4;
    }

    /* renamed from: a */
    private static void m12961a(C0615a c0615a) {
        c0615a.f1242XE = abc.m12845qK().m12846el("content query --uri content://settings/secure  --projection value --where \"name='enabled_accessibility_services'\"").mStdOut;
        c0615a.f1243XF = abc.m12845qK().m12846el("content query --uri content://settings/secure  --projection value --where \"name='accessibility_enabled'\"").mStdOut;
    }

    /* renamed from: b */
    private static boolean m12958b(ComponentName componentName) {
        Intent intent = new Intent();
        intent.setClassName(componentName.getPackageName(), componentName.getClassName());
        return !C3942yy.m1352c(C3952zh.m1312pq().queryIntentServices(intent, 0));
    }

    /* renamed from: com.kingroot.kinguser.aao$a */
    /* loaded from: classes.dex */
    public static class C0615a {
        ComponentName componentName;

        /* renamed from: XD */
        boolean f1241XD = false;
        public int retCode = -10;

        /* renamed from: XE */
        public String f1242XE = "";

        /* renamed from: XF */
        public String f1243XF = "";

        /* renamed from: XG */
        public boolean f1244XG = false;

        public String toString() {
            return "";
        }
    }
}
