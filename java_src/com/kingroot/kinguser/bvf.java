package com.kingroot.kinguser;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes.dex */
public class bvf extends SQLiteOpenHelper {
    private bvh bPw;
    private bvj bPx;

    public bvf(Context context) {
        super(context, "softwaresdk.db", (SQLiteDatabase.CursorFactory) null, 5);
        this.bPw = new bvh();
        this.bPx = new bvj();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.bPw.onCreate(sQLiteDatabase);
        this.bPx.onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 > i) {
            this.bPw.onUpgrade(sQLiteDatabase, i, i2);
            this.bPx.onUpgrade(sQLiteDatabase, i, i2);
            return;
        }
        this.bPw.onDowngrade(sQLiteDatabase, i, i2);
        this.bPx.onDowngrade(sQLiteDatabase, i, i2);
    }
}
