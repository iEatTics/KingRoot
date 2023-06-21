package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class bxv {
    /* renamed from: qJ */
    public static List<C2664a> m5216qJ() {
        C2664a m5217kO;
        ArrayList arrayList = new ArrayList();
        String[] list = new File("/proc").list();
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        char charAt = str.charAt(0);
                        if (charAt <= '9' && charAt >= '0' && (m5217kO = m5217kO(Integer.parseInt(str))) != null) {
                            arrayList.add(m5217kO);
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: cd */
    private static String m5218cd(int i) {
        byte[] m5224h;
        try {
            String str = "";
            byte[] m5224h2 = bxs.m5224h(String.format(Locale.ENGLISH, "/proc/%d/cmdline", Integer.valueOf(i)), 100);
            if (m5224h2 != null) {
                str = new String(m5224h2, 0, m5219a(m5224h2, 0, (char) 0));
            }
            if (TextUtils.isEmpty(str) && (m5224h = bxs.m5224h(String.format(Locale.ENGLISH, "/proc/%d/status", Integer.valueOf(i)), 150)) != null) {
                int m5219a = m5219a(m5224h, 7, '\n');
                if (m5219a == 0) {
                    return "";
                }
                return new String(m5224h, 6, m5219a - 6);
            }
            return str;
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    private static int m5219a(byte[] bArr, int i, char c) {
        int i2 = i - 1;
        while (true) {
            int i3 = i2 + 1;
            if (i2 >= bArr.length) {
                return 0;
            }
            if (i3 == bArr.length || bArr[i3] == c) {
                return i3;
            }
            i2 = i3;
        }
    }

    @Nullable
    /* renamed from: kO */
    public static C2664a m5217kO(int i) {
        int i2;
        String str;
        int i3;
        String str2;
        int i4;
        try {
            str2 = m5218cd(i);
            try {
                String str3 = new String(bxs.m5225cy(String.format(Locale.ENGLISH, "/proc/%d/status", Integer.valueOf(i))));
                HashMap hashMap = new HashMap();
                for (String str4 : str3.split("\n")) {
                    String[] split = str4.split(":");
                    if (split.length >= 2) {
                        hashMap.put(split[0].trim(), split[1].trim());
                    }
                }
                i4 = Integer.parseInt((String) hashMap.get("PPid"));
                try {
                    i3 = Integer.parseInt(((String) hashMap.get("Uid")).split("\\s+")[0]);
                } catch (Throwable th) {
                    i2 = i4;
                    str = str2;
                    i3 = -1;
                    str2 = str;
                    i4 = i2;
                    if (str2 != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                i2 = -1;
                str = str2;
            }
        } catch (Throwable th3) {
            i2 = -1;
            str = null;
        }
        if (str2 != null || i4 == -1 || i3 == -1) {
            return null;
        }
        return new C2664a(i, i4, str2, i3, null);
    }

    /* renamed from: com.kingroot.kinguser.bxv$a */
    /* loaded from: classes.dex */
    public static class C2664a {

        /* renamed from: WP */
        public String f2142WP;
        public String name;
        public int pid;
        public int ppid;
        public int uid;

        C2664a(int i, int i2, String str, int i3, String str2) {
            this.name = "";
            this.pid = i;
            this.ppid = i2;
            this.name = str;
            this.uid = i3;
            this.f2142WP = str2;
        }
    }
}
