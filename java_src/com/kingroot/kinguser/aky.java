package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aky {
    private akn anv = akn.m11173BI();

    public List<RootMgrLogInfo> getLogs() {
        ArrayList arrayList = new ArrayList();
        Cursor m11165d = this.anv.m11165d("select * from permission_log", null);
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                arrayList.add(new RootMgrLogInfo(m11165d.getLong(0), m11165d.getLong(1), m11165d.getString(2), m11165d.getString(3), m11165d.getInt(4), m11165d.getInt(5)));
            }
            m11165d.close();
        }
        return arrayList;
    }

    /* renamed from: a */
    public long m10673a(RootMgrLogInfo rootMgrLogInfo) {
        return this.anv.m11166b("permission_log", m10671c(rootMgrLogInfo));
    }

    /* renamed from: b */
    public int m10672b(RootMgrLogInfo rootMgrLogInfo) {
        return this.anv.m11168a("permission_log", "_id=" + rootMgrLogInfo.m3045PG(), null);
    }

    /* renamed from: GI */
    public int m10674GI() {
        return this.anv.m11163gW("permission_log");
    }

    /* renamed from: c */
    public static ContentValues m10671c(RootMgrLogInfo rootMgrLogInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("time", Long.valueOf(rootMgrLogInfo.mTime));
        contentValues.put("pkgname", rootMgrLogInfo.adZ);
        contentValues.put("appname", rootMgrLogInfo.mAppName);
        contentValues.put("permtype", Integer.valueOf(rootMgrLogInfo.mType));
        contentValues.put("permstate", Integer.valueOf(rootMgrLogInfo.mState));
        return contentValues;
    }
}
