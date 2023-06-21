package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bfu {
    private static akn anv = akn.m11173BI();

    /* renamed from: li */
    public static UrlCheckLog m7217li(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            Cursor m11165d = anv.m11165d("select * from url_check_log where attr_url_str=?", new String[]{"" + str});
            if (m11165d != null) {
                try {
                    if (m11165d.moveToNext()) {
                        UrlCheckLog urlCheckLog = new UrlCheckLog(m11165d.getLong(0), m11165d.getInt(1), m11165d.getString(2), m11165d.getInt(3), m11165d.getLong(4), m11165d.getInt(5) == 1, m11165d.getString(6));
                        C3945za.m1338d(m11165d);
                        return urlCheckLog;
                    }
                } catch (Exception e) {
                    cursor = m11165d;
                    C3945za.m1338d(cursor);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = m11165d;
                    C3945za.m1338d(cursor2);
                    throw th;
                }
            }
            C3945za.m1338d(m11165d);
        } catch (Exception e2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return null;
    }

    /* renamed from: ws */
    public static List<UrlCheckLog> m7215ws() {
        ArrayList arrayList = new ArrayList();
        Cursor m11165d = anv.m11165d("select * from url_check_log order by attr_intercept_time desc", null);
        if (m11165d == null) {
            return arrayList;
        }
        while (m11165d.moveToNext()) {
            arrayList.add(new UrlCheckLog(m11165d.getLong(0), m11165d.getInt(1), m11165d.getString(2), m11165d.getInt(3), m11165d.getLong(4), m11165d.getInt(5) == 1, m11165d.getString(6)));
        }
        m11165d.close();
        return arrayList;
    }

    /* renamed from: f */
    public static long m7221f(UrlCheckLog urlCheckLog) {
        if (urlCheckLog != null && m7217li(urlCheckLog.url) == null) {
            return anv.m11166b("url_check_log", m7218i(urlCheckLog));
        }
        return 0L;
    }

    /* renamed from: g */
    public static long m7220g(UrlCheckLog urlCheckLog) {
        if (urlCheckLog != null) {
            String str = "attr_url_str= '" + urlCheckLog.url + "'";
            ContentValues contentValues = new ContentValues();
            contentValues.put("attr_has_handle", Boolean.valueOf(urlCheckLog.bnx));
            contentValues.put("attr_intercept_count", Integer.valueOf(urlCheckLog.bnu));
            contentValues.put("attr_intercept_time", Long.valueOf(System.currentTimeMillis()));
            if (contentValues.size() <= 0) {
                return 0L;
            }
            return anv.m11170a("url_check_log", contentValues, str, null);
        }
        return 0L;
    }

    /* renamed from: h */
    public static int m7219h(UrlCheckLog urlCheckLog) {
        return anv.m11168a("url_check_log", "attr_url_str=?", new String[]{urlCheckLog.url});
    }

    /* renamed from: lj */
    public static int m7216lj(String str) {
        return anv.m11168a("url_check_log", "attr_host=?", new String[]{str});
    }

    /* renamed from: dR */
    public static int m7222dR(boolean z) {
        return anv.m11168a("url_check_log", "attr_has_handle=" + (z ? 1 : 0), null);
    }

    /* renamed from: i */
    public static ContentValues m7218i(UrlCheckLog urlCheckLog) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("attr_evil_type", Integer.valueOf(urlCheckLog.bno));
        contentValues.put("attr_url_str", urlCheckLog.url);
        contentValues.put("attr_intercept_count", Integer.valueOf(urlCheckLog.bnu));
        contentValues.put("attr_intercept_time", Long.valueOf(urlCheckLog.bnv));
        contentValues.put("attr_has_handle", Integer.valueOf(urlCheckLog.bnx ? 1 : 0));
        contentValues.put("attr_host", urlCheckLog.f3653GY);
        return contentValues;
    }
}
