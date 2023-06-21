package com.kingroot.kinguser;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes.dex */
public class bsf extends SQLiteOpenHelper {
    private bse bLq;
    private bsa bLr;

    public bsf(Context context) {
        super(context, "Discovery_DB", (SQLiteDatabase.CursorFactory) null, 3);
        this.bLq = new bse();
        this.bLr = new bsa();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.bLq.onCreate(sQLiteDatabase);
        this.bLr.onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 > i) {
            this.bLq.onUpgrade(sQLiteDatabase, i, i2);
            this.bLr.onUpgrade(sQLiteDatabase, i, i2);
            return;
        }
        this.bLq.onDowngrade(sQLiteDatabase, i, i2);
        this.bLr.onDowngrade(sQLiteDatabase, i, i2);
    }
}
