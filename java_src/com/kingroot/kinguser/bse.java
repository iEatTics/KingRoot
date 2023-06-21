package com.kingroot.kinguser;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
/* loaded from: classes.dex */
public class bse {
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m5580e(sQLiteDatabase);
        m5581d(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m5580e(sQLiteDatabase);
        m5581d(sQLiteDatabase);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m5580e(sQLiteDatabase);
        m5581d(sQLiteDatabase);
    }

    /* renamed from: d */
    private void m5581d(SQLiteDatabase sQLiteDatabase) {
        Log.d("CommonAdvertiseDBCreator", "CREATE_GAME_LIST_DB_SQL:CREATE TABLE IF NOT EXISTS common_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,jump_type INTEGER,persentspent INTEGER,uniquekey TEXT,ad_phase INTEGER,is_shareable TEXT,pos_id INTEGER,activity_id TEXT,template_type INTEGER,text1 TEXT,text2 TEXT,text3 TEXT,text4 TEXT,image_url1 TEXT,image_url2 TEXT,image_url3 TEXT,content_type INTEGER,jump_url TEXT,packagename TEXT,expire_time INTEGER,context BLOB,max_display_time INTEGER,max_click_time INTEGER,effective_time INTEGER,continuousExposureTime INTEGER,exposureInterval INTEGER,scenes INTEGER,weight INTEGER,predisplaytime INTEGER,videoUrl TEXT,zipUrl TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS common_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,jump_type INTEGER,persentspent INTEGER,uniquekey TEXT,ad_phase INTEGER,is_shareable TEXT,pos_id INTEGER,activity_id TEXT,template_type INTEGER,text1 TEXT,text2 TEXT,text3 TEXT,text4 TEXT,image_url1 TEXT,image_url2 TEXT,image_url3 TEXT,content_type INTEGER,jump_url TEXT,packagename TEXT,expire_time INTEGER,context BLOB,max_display_time INTEGER,max_click_time INTEGER,effective_time INTEGER,continuousExposureTime INTEGER,exposureInterval INTEGER,scenes INTEGER,weight INTEGER,predisplaytime INTEGER,videoUrl TEXT,zipUrl TEXT)");
    }

    /* renamed from: e */
    private void m5580e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS common_advertise_table");
    }
}
