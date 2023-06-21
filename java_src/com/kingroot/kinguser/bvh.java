package com.kingroot.kinguser;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes.dex */
public class bvh {
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m5398g(sQLiteDatabase);
        m5399f(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m5398g(sQLiteDatabase);
        m5399f(sQLiteDatabase);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m5398g(sQLiteDatabase);
        m5399f(sQLiteDatabase);
    }

    /* renamed from: f */
    private void m5399f(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS software_sdk_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,server_id Long,model_id INTEGER,type INTEGER,title TEXT,category_id INTEGER,content TEXT,button_text TEXT,icon_Url TEXT,icon_big_url TEXT,background_url TEXT,applist BLOB,destination_url TEXT,expire_Time LONG,priority INTEGER,package_Name TEXT,jump_Type INTEGER,jump_Param TEXT,view_id TEXT,topic_id TEXT,is_push TEXT,auto_run TEXT,need_guide INTEGER)");
    }

    /* renamed from: g */
    private void m5398g(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS software_sdk_advertise_table");
    }
}
