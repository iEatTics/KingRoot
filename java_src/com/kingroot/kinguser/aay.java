package com.kingroot.kinguser;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class aay {

    /* renamed from: YA */
    private static String f1294YA = "";

    /* renamed from: YB */
    private static String f1295YB = "";

    /* renamed from: YC */
    private static String f1296YC = "Device ID =";

    /* renamed from: YD */
    private static final Object f1297YD = new Object();

    /* renamed from: ac */
    public static List<String> m12883ac(boolean z) {
        String str;
        String str2;
        String str3 = "000000000000000";
        abc m12845qK = abc.m12845qK();
        ArrayList arrayList = new ArrayList();
        if (!m12845qK.isRootPermition(z)) {
            str = "000000000000000";
            str2 = "permition deny!";
        } else if (abd.m12839qb() >= 21) {
            String str4 = abc.m12845qK().m12846el("service call iphonesubinfo 1").mStdOut;
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(str4)) {
                Matcher matcher = Pattern.compile("'.*'").matcher(str4);
                while (matcher.find()) {
                    sb.append(matcher.group());
                }
            }
            if (!TextUtils.isEmpty(sb)) {
                Matcher matcher2 = Pattern.compile("([0-9A-Za-z]\\d*)").matcher(sb);
                StringBuilder sb2 = new StringBuilder();
                while (matcher2.find()) {
                    sb2.append(matcher2.group());
                }
                if (sb2.length() > 0) {
                    str3 = sb2.toString();
                } else {
                    str3 = "000000000000000";
                }
            }
            str = str3;
            str2 = "permition deny!";
        } else {
            VTCmdResult m12846el = m12845qK.m12846el("dumpsys iphonesubinfo");
            if (m12846el.success() && !TextUtils.isEmpty(m12846el.mStdOut)) {
                String str5 = m12846el.mStdOut;
                String[] split = str5.split("\n");
                if (split != null && split.length > 0) {
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        String trim = split[i].trim();
                        if (!trim.toLowerCase().startsWith(f1296YC.toLowerCase())) {
                            i++;
                        } else {
                            String trim2 = trim.substring(f1296YC.length()).trim();
                            if (!TextUtils.isEmpty(trim2)) {
                                str3 = trim2;
                            }
                        }
                    }
                }
                str = str3;
                str2 = str5;
            } else {
                String str6 = m12846el.mStdOut;
                str = "000000000000000";
                str2 = str6;
            }
        }
        arrayList.add(str);
        arrayList.add(str2);
        return arrayList;
    }

    /* renamed from: qx */
    public static String m12877qx() {
        if (TextUtils.isEmpty(f1295YB) || !m12879dX(f1295YB)) {
            new RunnableC3845wo() { // from class: com.kingroot.kinguser.aay.1
                @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
                public void run() {
                    List<String> m12883ac = aay.m12883ac(true);
                    if (m12883ac == null || m12883ac.size() <= 0) {
                        String unused = aay.f1295YB = "000000000000000";
                    } else {
                        String unused2 = aay.f1295YB = m12883ac.get(0);
                    }
                }
            }.m1530ny();
        }
        return f1295YB;
    }

    /* renamed from: ak */
    public static String m12882ak(Context context) {
        try {
            return ((TelephonyManager) KApplication.m13453ge().getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            return "000000000000001";
        }
    }

    /* renamed from: al */
    public static String m12881al(Context context) {
        String str;
        synchronized (f1297YD) {
            if (!TextUtils.isEmpty(f1294YA) && m12879dX(f1294YA)) {
                str = f1294YA;
            } else {
                C3984zy m1231pI = C3984zy.m1231pI();
                String property = m1231pI.getProperty("K2");
                if (!TextUtils.isEmpty(property) && m12879dX(property)) {
                    f1294YA = property;
                    str = f1294YA;
                } else {
                    String m12877qx = m12877qx();
                    if (m12879dX(m12877qx)) {
                        f1294YA = m12877qx;
                    } else {
                        String m12882ak = m12882ak(context);
                        if (!TextUtils.isEmpty(m12882ak)) {
                            f1294YA = m12882ak;
                        }
                    }
                    if (!TextUtils.isEmpty(f1294YA) && m12879dX(f1294YA)) {
                        m1231pI.setProperty("K2", f1294YA);
                        str = f1294YA;
                    } else {
                        str = "000000000000000";
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: am */
    public static String m12880am(Context context) {
        String m12877qx = m12877qx();
        if (!m12879dX(m12877qx)) {
            String m12882ak = m12882ak(context);
            if (TextUtils.isEmpty(m12882ak)) {
                return "000000000000000";
            }
            return m12882ak;
        }
        return m12877qx;
    }

    /* renamed from: dX */
    public static boolean m12879dX(String str) {
        return (TextUtils.isEmpty(str) || str.length() < 14 || str.startsWith("0000")) ? false : true;
    }
}
