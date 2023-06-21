package com.kingroot.kinguser;

import com.kingroot.common.utils.system.VTCmdResult;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class abk {

    /* renamed from: YW */
    private static Boolean f1325YW = null;

    /* renamed from: YY */
    private static String[] f1326YY = {null, null};

    /* renamed from: ae */
    public static synchronized String m12814ae(boolean z) {
        String str;
        String str2;
        synchronized (abk.class) {
            char c = z ? (char) 0 : (char) 1;
            if (f1326YY[c] == null) {
                String str3 = null;
                if (z) {
                    str2 = "su -V";
                } else {
                    str2 = "su -v";
                }
                VTCmdResult m12827Q = abj.m12827Q("sh", str2);
                if (m12827Q != null && m12827Q.success()) {
                    String[] split = m12827Q.mStdOut.split("\n");
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        String str4 = split[i];
                        if (!z) {
                            if (str4.contains(".")) {
                                str3 = str4;
                                break;
                            }
                            i++;
                        } else {
                            try {
                            } catch (NumberFormatException e) {
                                str3 = "0";
                            }
                            if (Integer.parseInt(str4) > 0) {
                                str3 = str4;
                                break;
                            }
                            str3 = "0";
                            i++;
                        }
                    }
                }
                f1326YY[c] = str3;
            }
            str = f1326YY[c];
        }
        return str;
    }

    /* renamed from: es */
    private static String m12812es(String str) {
        String trim = str.trim();
        if (trim.startsWith("su -c")) {
            String trim2 = trim.substring("su -c".length()).trim();
            if (trim2.length() >= 2) {
                if (trim2.charAt(0) == '\"' || trim2.charAt(0) == '\'') {
                    return trim2.substring(1, trim2.length() - 1).trim();
                }
                return trim2;
            }
            return trim2;
        }
        return str;
    }

    /* renamed from: et */
    private static int m12811et(String str) {
        String[] split = str.trim().split(" ");
        if (split.length <= 1) {
            return 0;
        }
        try {
            return Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /* renamed from: eu */
    private static String m12810eu(String str) {
        String[] strArr = {"pm", "u:r:system_app:s0"};
        for (int i = 0; i < strArr.length; i += 2) {
            if (str.startsWith(strArr[i])) {
                return strArr[i + 1];
            }
        }
        return null;
    }

    /* renamed from: c */
    public static String m12813c(String str, int i, String str2, String str3) {
        if (str != null && abd.m12839qb() >= 21) {
            String m12814ae = m12814ae(false);
            String m12814ae2 = m12814ae(true);
            str3 = (str3 == null || str3.equals("")) ? "su" : "su";
            if (m12814ae != null && m12814ae2 != null) {
                if ((!m12814ae.endsWith("SUPERSU") || Integer.valueOf(m12814ae2).intValue() < 190) && (!m12814ae.endsWith("kinguser_su") || Integer.valueOf(m12814ae2).intValue() < 340)) {
                    return str2;
                }
                return i > 0 ? String.format(Locale.ENGLISH, "%s --context %s %d \"%s\"", str3, str, Integer.valueOf(i), str2) : String.format(Locale.ENGLISH, "%s --context %s -c \"%s\"", str3, str, str2);
            }
            return str2;
        }
        return str2;
    }

    /* renamed from: R */
    public static String m12816R(String str, String str2) {
        if (abd.m12839qb() >= 21) {
            return m12813c(m12810eu(m12812es(str)), m12811et(str), str, str2);
        }
        return str;
    }

    /* renamed from: ev */
    public static String m12809ev(String str) {
        return m12816R(str, null);
    }

    /* renamed from: a */
    public static List<String> m12815a(List<String> list, String str) {
        if (abd.m12839qb() >= 21) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                arrayList.add(m12816R(str2, str));
            }
            return arrayList;
        }
        return list;
    }

    /* renamed from: Q */
    public static List<String> m12817Q(List<String> list) {
        return m12815a(list, null);
    }
}
