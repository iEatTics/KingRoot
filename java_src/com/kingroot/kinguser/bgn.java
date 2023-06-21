package com.kingroot.kinguser;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.master.app.KUApplication;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;
/* loaded from: classes.dex */
public class bgn {
    /* renamed from: a */
    private static void m7101a(StringBuilder sb, bhh bhhVar, String str) {
        m7100a(sb, bhhVar, str, false);
    }

    /* renamed from: a */
    private static void m7100a(StringBuilder sb, bhh bhhVar, String str, boolean z) {
        String str2 = TextUtils.isEmpty(str) ? "" : str;
        if (z) {
            try {
                str2 = bhhVar.encode(str2);
            } catch (Throwable th) {
            }
        } else {
            try {
                str2 = URLEncoder.encode(str2, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                str2 = "";
            }
        }
        sb.append(str2);
    }

    /* renamed from: a */
    public static String m7099a(boolean z, boolean z2, boolean z3) {
        return "http://fb.kingroot.net/i?" + m7098b(z, z2, z3);
    }

    /* renamed from: b */
    private static String m7098b(boolean z, boolean z2, boolean z3) {
        bhh bhhVar = new bhh();
        StringBuilder sb = new StringBuilder();
        String str = "&";
        if (z3) {
            str = "\\&";
        }
        sb.append("productId=");
        m7101a(sb, bhhVar, abP());
        sb.append(str + "language=");
        m7101a(sb, bhhVar, abQ());
        sb.append(str + "BuildBrand=");
        m7100a(sb, bhhVar, Build.BRAND, true);
        sb.append(str + "BuildModel=");
        m7100a(sb, bhhVar, Build.MODEL, true);
        sb.append(str + "Release=");
        m7100a(sb, bhhVar, String.valueOf(Build.VERSION.RELEASE), true);
        sb.append(str + "VersionName=");
        m7100a(sb, bhhVar, abN(), true);
        sb.append(str + "Buildno=");
        m7101a(sb, bhhVar, String.valueOf(KApplication.m13444hZ()));
        sb.append(str + "imei=");
        m7100a(sb, bhhVar, aav.m12929ae(KUApplication.m13453ge()), true);
        sb.append(str + "guid=");
        m7100a(sb, bhhVar, abO(), true);
        sb.append(str + "channel=");
        m7100a(sb, bhhVar, KApplication.m13442ib(), true);
        sb.append(str + "BuildID=");
        m7100a(sb, bhhVar, Build.ID, true);
        sb.append(str + "Root=");
        if (z) {
            m7101a(sb, bhhVar, "1");
        } else {
            m7101a(sb, bhhVar, "2");
        }
        sb.append(str + "uninstall=");
        if (z2) {
            m7101a(sb, bhhVar, "2");
        } else {
            m7101a(sb, bhhVar, "1");
        }
        return sb.toString();
    }

    public static void abM() {
        C3637tk.m2167cS("commonFeedBackUtils").m2161s(300000L);
        if (baq.m7900VH()) {
            aty.m9108x(null, null);
            return;
        }
        bav.m7881VV();
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(m7099a(abc.m12845qK().isRootPermition(false), false, false)));
            if (C3952zh.m1312pq().queryIntentActivities(intent, 32).size() > 0) {
                intent.setFlags(335544320);
                KUApplication.m13453ge().startActivity(intent);
            }
        } catch (Throwable th) {
        }
    }

    private static String abN() {
        String m13436ii = KApplication.m13436ii();
        try {
            int lastIndexOf = m13436ii.lastIndexOf(46);
            if (lastIndexOf > 0) {
                return new StringBuffer(m13436ii).deleteCharAt(lastIndexOf).toString();
            }
            return m13436ii;
        } catch (Exception e) {
            return "";
        }
    }

    private static String abO() {
        try {
            return aav.getSharkGuid();
        } catch (abn e) {
            return "00000000000000000000000000000000";
        }
    }

    private static String abP() {
        return C3946zb.m1332pj() ? "17" : "117";
    }

    private static String abQ() {
        if (C3946zb.m1332pj()) {
            return "zh_CN";
        }
        String language = Locale.getDefault().getLanguage();
        return ("es".equals(language) || "hi".equals(language) || "in".equals(language) || "it".equals(language) || "pt".equals(language) || "ru".equals(language)) ? language : "en";
    }
}
