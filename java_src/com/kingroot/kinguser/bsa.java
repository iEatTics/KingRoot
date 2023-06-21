package com.kingroot.kinguser;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
/* loaded from: classes.dex */
public class bsa {
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m5598e(sQLiteDatabase);
        m5599d(sQLiteDatabase);
    }

    /* renamed from: d */
    private void m5599d(SQLiteDatabase sQLiteDatabase) {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE IF NOT EXISTS ").append("discovery_advertise_action_table").append(" (");
        sb.append("auto_increate_index").append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        sb.append("activity_id").append(" TEXT,");
        sb.append("position_id").append(" INTEGER,");
        sb.append("context").append(" BLOB,");
        sb.append("timestamp").append(" LONG,");
        sb.append("phase").append(" INTEGER,");
        sb.append("specialtime").append(" LONG)");
        String sb2 = sb.toString();
        Log.d("ActionDBCreator", "createTable,sql=" + sb2);
        sQLiteDatabase.execSQL(sb2);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m5598e(sQLiteDatabase);
        m5599d(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m5598e(sQLiteDatabase);
        m5599d(sQLiteDatabase);
    }

    /* renamed from: e */
    private void m5598e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS discovery_advertise_action_table");
    }
}
