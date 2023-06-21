package com.kingroot.kinguser;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes.dex */
public class bvj {
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m5393h(sQLiteDatabase);
    }

    /* renamed from: h */
    private void m5393h(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY AUTOINCREMENT,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,downloadCount TEXT,ctyId TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT,sw_type TEXT,top_flag TEXT,plugintype TEXT,likepercent TEXT,jumpUrl TEXT,ifSelected INTEGER,jumptype TEXT,categoryid TEXT,adType INTEGER,productID INTEGER,fileID INTEGER,SoftID INTEGER,source INTEGER,channelid TEXT,custom_title TEXT,custom_sub_title TEXT,dest_category_id TEXT,default_show_type INTEGER,pic_icon_url TEXT,pic_btn_url TEXT,apkfileMd5 TEXT,bannerId INTEGER,str_extend BLOB,trans_data BLOB,business_data BLOB,business_type INTEGER)", "tb_software_info"));
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 > i) {
            m5392i(sQLiteDatabase);
            m5393h(sQLiteDatabase);
        }
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 < i) {
            m5392i(sQLiteDatabase);
            m5393h(sQLiteDatabase);
        }
    }

    /* renamed from: i */
    private void m5392i(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS tb_software_info");
    }
}
