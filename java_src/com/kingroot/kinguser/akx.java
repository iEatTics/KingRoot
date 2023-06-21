package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.model.AppRuleEntity;
import java.util.HashMap;
/* loaded from: classes.dex */
public class akx {
    private akn anw = akn.m11173BI();

    /* renamed from: a */
    public void m10679a(final long j, final String str, final String str2, final int i, final long j2) {
        this.anw.m11171a(new aik() { // from class: com.kingroot.kinguser.akx.1
            @Override // com.kingroot.kinguser.aik
            /* renamed from: o */
            public void mo10675o(Object obj) {
                if (obj instanceof SQLiteDatabase) {
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    sQLiteDatabase.execSQL("delete from apps where pkgName=?", new Object[]{str2});
                    sQLiteDatabase.execSQL("insert into apps (pkgName, appName, rtime, rule, vtime) values (?,?,?,?,?)", new Object[]{str2, str, Long.valueOf(j), Integer.valueOf(i), Long.valueOf(j2)});
                }
            }
        });
    }

    /* renamed from: hs */
    public void m10676hs(String str) {
        this.anw.m11164e("delete from apps where pkgName=?", new Object[]{str});
    }

    /* renamed from: c */
    public void m10678c(String str, int i, long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("rule", Integer.valueOf(i));
        contentValues.put("rtime", Long.valueOf(j));
        contentValues.put("vtime", Long.valueOf(j2));
        this.anw.m11170a("apps", contentValues, "pkgName= '" + str + "'", null);
    }

    @NonNull
    /* renamed from: GF */
    public HashMap<String, AppRuleEntity> m10682GF() {
        HashMap<String, AppRuleEntity> hashMap = new HashMap<>();
        Cursor m11165d = this.anw.m11165d("select * from apps order by rule asc, rtime desc", null);
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                String string = m11165d.getString(m11165d.getColumnIndex("appName"));
                String string2 = m11165d.getString(m11165d.getColumnIndex("pkgName"));
                int i = m11165d.getInt(m11165d.getColumnIndex("rtime"));
                long j = m11165d.getInt(m11165d.getColumnIndex("vtime"));
                int i2 = m11165d.getInt(m11165d.getColumnIndex("rule"));
                AppRuleEntity appRuleEntity = new AppRuleEntity();
                appRuleEntity.mAppName = string;
                appRuleEntity.mPackageName = string2;
                appRuleEntity.mTime = i;
                appRuleEntity.mRule = i2;
                appRuleEntity.aQN = j;
                hashMap.put(string2, appRuleEntity);
            }
            m11165d.close();
        }
        return hashMap;
    }

    /* renamed from: GG */
    public HashMap<String, AppRuleEntity> m10681GG() {
        return m10677eU(1);
    }

    /* renamed from: GH */
    public HashMap<String, AppRuleEntity> m10680GH() {
        return m10677eU(0);
    }

    /* renamed from: eU */
    private HashMap<String, AppRuleEntity> m10677eU(int i) {
        HashMap<String, AppRuleEntity> hashMap = new HashMap<>();
        Cursor m11165d = this.anw.m11165d("select * from apps where rule=?", new String[]{"" + i});
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                String string = m11165d.getString(m11165d.getColumnIndex("appName"));
                String string2 = m11165d.getString(m11165d.getColumnIndex("pkgName"));
                int i2 = m11165d.getInt(m11165d.getColumnIndex("rtime"));
                long j = m11165d.getInt(m11165d.getColumnIndex("vtime"));
                int i3 = m11165d.getInt(m11165d.getColumnIndex("rule"));
                AppRuleEntity appRuleEntity = new AppRuleEntity();
                appRuleEntity.mAppName = string;
                appRuleEntity.mPackageName = string2;
                appRuleEntity.mTime = i2;
                appRuleEntity.mRule = i3;
                appRuleEntity.aQN = j;
                hashMap.put(string2, appRuleEntity);
            }
            m11165d.close();
        }
        return hashMap;
    }
}
