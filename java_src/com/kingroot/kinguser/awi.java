package com.kingroot.kinguser;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.List;
/* loaded from: classes.dex */
public class awi {

    /* renamed from: Mt */
    private static SharedPreferences f1620Mt = C3566rv.m2313i(KApplication.m13453ge(), "b_d_pre");

    /* renamed from: bE */
    public static void m8653bE(List<String> list) {
        String[] split;
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                try {
                    split = str.split(";");
                } catch (Throwable th) {
                }
                switch (awk.m8636dK(split[0])) {
                    case 139:
                        m8645jK(str);
                        continue;
                    case 141:
                        m8647jI(str);
                        continue;
                    case 163:
                        m8646jJ(str);
                        if (awk.m8636dK(split[1]) == 0) {
                            awj.m8637jN(awm.getPath());
                        } else {
                            continue;
                        }
                    default:
                        continue;
                }
            }
        }
    }

    /* renamed from: ho */
    public static awh m8648ho(int i) {
        String m8654SS;
        awh awhVar;
        switch (i) {
            case 139:
                m8654SS = m8654SS();
                break;
            case 141:
                m8654SS = m8660SM();
                break;
            case 163:
                m8654SS = m8658SO();
                break;
            default:
                m8654SS = null;
                break;
        }
        if (TextUtils.isEmpty(m8654SS)) {
            return null;
        }
        try {
            String[] split = m8654SS.split(";");
            awhVar = new awh();
            try {
                awhVar.aUQ = awk.m8636dK(split[0]);
                awhVar.aUR = awk.m8636dK(split[1]) == 1;
                if (split.length >= 3) {
                    awhVar.aUS = awk.m8636dK(split[2]);
                }
                if (split.length >= 4) {
                    awhVar.aUT = split[3];
                }
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            awhVar = null;
        }
        return awhVar;
    }

    /* renamed from: jI */
    public static void m8647jI(String str) {
        f1620Mt.edit().putString("aaa", str).apply();
    }

    /* renamed from: SM */
    static String m8660SM() {
        return f1620Mt.getString("aaa", "141;1;;;");
    }

    /* renamed from: ck */
    public static void m8652ck(long j) {
        f1620Mt.edit().putLong("aaar", j).apply();
    }

    /* renamed from: SN */
    public static long m8659SN() {
        return f1620Mt.getLong("aaar", -1L);
    }

    /* renamed from: jJ */
    public static void m8646jJ(String str) {
        f1620Mt.edit().putString("g", str).apply();
    }

    /* renamed from: SO */
    public static String m8658SO() {
        return f1620Mt.getString("g", "163;1;1;1;");
    }

    /* renamed from: cl */
    public static void m8651cl(long j) {
        f1620Mt.edit().putLong("ga", j).apply();
    }

    /* renamed from: SP */
    public static long m8657SP() {
        return f1620Mt.getLong("ga", -1L);
    }

    /* renamed from: cm */
    public static void m8650cm(long j) {
        f1620Mt.edit().putLong("gb", j).apply();
    }

    /* renamed from: SQ */
    public static long m8656SQ() {
        return f1620Mt.getLong("gb", -1L);
    }

    /* renamed from: cn */
    public static void m8649cn(long j) {
        f1620Mt.edit().putLong("gc", j).apply();
    }

    /* renamed from: SR */
    public static long m8655SR() {
        return f1620Mt.getLong("gc", -1L);
    }

    /* renamed from: jK */
    public static void m8645jK(String str) {
        f1620Mt.edit().putString("h", str).apply();
    }

    /* renamed from: SS */
    static String m8654SS() {
        return f1620Mt.getString("h", "139;1;;;");
    }
}
