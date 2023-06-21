package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bfv {
    private static akn anv = akn.m11173BI();

    public static List<UrlCheckRule> aaJ() {
        ArrayList arrayList = new ArrayList();
        Cursor m11165d = anv.m11165d("select * from url_check_user_rule", null);
        if (m11165d == null) {
            return arrayList;
        }
        while (m11165d.moveToNext()) {
            arrayList.add(new UrlCheckRule(m11165d.getInt(1), m11165d.getString(2), m11165d.getInt(3), m11165d.getInt(4) == 1));
        }
        m11165d.close();
        return arrayList;
    }

    /* renamed from: a */
    public static long m7214a(UrlCheckRule urlCheckRule) {
        if (urlCheckRule == null) {
            return 0L;
        }
        return !m7211d(urlCheckRule) ? anv.m11166b("url_check_user_rule", m7212c(urlCheckRule)) : anv.m11170a("url_check_user_rule", m7212c(urlCheckRule), "attr_type=? and attr_data=?", new String[]{"" + urlCheckRule.type, urlCheckRule.f3652nE});
    }

    /* renamed from: b */
    public static long m7213b(UrlCheckRule urlCheckRule) {
        if (urlCheckRule == null || TextUtils.isEmpty(urlCheckRule.f3652nE)) {
            return 0L;
        }
        return anv.m11168a("url_check_user_rule", "attr_type=? and attr_data=?", new String[]{"" + urlCheckRule.type, urlCheckRule.f3652nE});
    }

    public static int aaR() {
        return anv.m11168a("url_check_user_rule", null, null);
    }

    /* renamed from: c */
    public static ContentValues m7212c(UrlCheckRule urlCheckRule) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("attr_type", Integer.valueOf(urlCheckRule.type));
        contentValues.put("attr_data", urlCheckRule.f3652nE);
        contentValues.put("attr_flag", Integer.valueOf(urlCheckRule.flag));
        contentValues.put("attr_allow", Integer.valueOf(urlCheckRule.bnp ? 1 : 0));
        return contentValues;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0044, code lost:
        if (r2.getCount() > 0) goto L6;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m7211d(UrlCheckRule urlCheckRule) {
        Cursor cursor;
        boolean z = true;
        try {
            try {
                Cursor m11165d = anv.m11165d("select * from url_check_user_rule where attr_type =? and attr_data =?", new String[]{"" + urlCheckRule.type, "" + urlCheckRule.f3652nE});
                if (m11165d != null) {
                    try {
                    } catch (Exception e) {
                        cursor = m11165d;
                        C3945za.m1338d(cursor);
                        return false;
                    }
                }
                z = false;
                C3945za.m1338d(m11165d);
                return z;
            } catch (Throwable th) {
                C3945za.m1338d(null);
                throw th;
            }
        } catch (Exception e2) {
            cursor = null;
        }
    }
}
