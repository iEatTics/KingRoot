package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aha {
    private static akn anv = akn.m11173BI();

    /* renamed from: ws */
    public static List<SilentInstallLogInfo> m11844ws() {
        ArrayList arrayList = new ArrayList();
        Cursor m11165d = anv.m11165d("select * from silent_install_log order by time desc", null);
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                arrayList.add(new SilentInstallLogInfo(m11165d.getLong(0), m11165d.getInt(1), m11165d.getString(2), m11165d.getString(3), m11165d.getString(4), m11165d.getString(5), m11165d.getInt(6), m11165d.getLong(7)));
            }
            m11165d.close();
        }
        return arrayList;
    }

    /* renamed from: b */
    public static long m11846b(SilentInstallLogInfo silentInstallLogInfo) {
        return anv.m11166b("silent_install_log", m11845c(silentInstallLogInfo));
    }

    public static List<SilentInstallLogInfo> getAllLogs() {
        ArrayList arrayList = new ArrayList();
        Cursor m11165d = anv.m11165d("select * from silent_install_log order by time asc", null);
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                arrayList.add(new SilentInstallLogInfo(m11165d.getInt(m11165d.getColumnIndex("_id")), m11165d.getInt(m11165d.getColumnIndex("calling_uid")), m11165d.getString(m11165d.getColumnIndex("calling_app_name")), m11165d.getString(m11165d.getColumnIndex("calling_app_name")), m11165d.getString(m11165d.getColumnIndex("install_pkg_name")), m11165d.getString(m11165d.getColumnIndex("install_app_name")), m11165d.getInt(m11165d.getColumnIndex("permstatus")), m11165d.getInt(m11165d.getColumnIndex("time"))));
            }
            m11165d.close();
        }
        return arrayList;
    }

    /* renamed from: wt */
    public static int m11843wt() {
        return anv.m11168a("silent_install_log", null, null);
    }

    /* renamed from: c */
    public static ContentValues m11845c(SilentInstallLogInfo silentInstallLogInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("time", Long.valueOf(silentInstallLogInfo.mTime));
        contentValues.put("calling_pkg_name", silentInstallLogInfo.anE);
        contentValues.put("calling_app_name", silentInstallLogInfo.apJ);
        contentValues.put("install_pkg_name", silentInstallLogInfo.anH);
        contentValues.put("install_app_name", silentInstallLogInfo.apK);
        contentValues.put("permstatus", Integer.valueOf(silentInstallLogInfo.mState));
        return contentValues;
    }
}
