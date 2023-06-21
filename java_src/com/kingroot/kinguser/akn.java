package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class akn extends SQLiteOpenHelper {
    private static volatile akn avC = null;
    private static final Object avD = new Object();

    private akn(Context context) {
        super(context, "permissions.sqlite", (SQLiteDatabase.CursorFactory) null, 4);
        try {
            getWritableDatabase().setLockingEnabled(false);
        } catch (Exception e) {
        }
    }

    /* renamed from: BI */
    public static akn m11173BI() {
        if (avC == null) {
            synchronized (akn.class) {
                if (avC == null) {
                    avC = new akn(KUApplication.m13453ge());
                }
            }
        }
        return avC;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m11172a(sQLiteDatabase, "CREATE TABLE IF NOT EXISTS apps (pkgName varchar(300) primary key,appName varchar(200),rtime integer,rule integer,vtime LONG)");
        m11172a(sQLiteDatabase, "CREATE TABLE IF NOT EXISTS permission_log (_id INTEGER PRIMARY KEY,time INTEGER,pkgname TEXT,appname TEXT,permtype INTEGER,permstate INTEGER)");
        m11172a(sQLiteDatabase, "CREATE TABLE IF NOT EXISTS silent_install_log (_id INTEGER PRIMARY KEY AUTOINCREMENT,calling_uid INTEGER,calling_pkg_name TEXT,calling_app_name TEXT,install_pkg_name TEXT,install_app_name TEXT,permstatus INTEGER,time INTEGER)");
        m11172a(sQLiteDatabase, "CREATE TABLE IF NOT EXISTS silent_install_perm (pkgName varchar(300) primary key,rtime LONG,rule integer,vtime integer)");
        m11172a(sQLiteDatabase, "CREATE TABLE IF NOT EXISTS url_check_log (_id INTEGER PRIMARY KEY AUTOINCREMENT,attr_evil_type INTEGER,attr_url_str TEXT,attr_intercept_count INTEGER,attr_intercept_time INTEGER,attr_has_handle INTEGER,attr_host TEXT)");
        m11172a(sQLiteDatabase, "CREATE TABLE IF NOT EXISTS url_check_user_rule (_id INTEGER PRIMARY KEY AUTOINCREMENT,attr_type INTEGER,attr_data TEXT,attr_flag INTEGER,attr_allow INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < i2) {
            m11169a("permission_log", sQLiteDatabase);
            onCreate(sQLiteDatabase);
            sQLiteDatabase.setVersion(4);
        }
    }

    /* renamed from: a */
    private void m11169a(String str, SQLiteDatabase sQLiteDatabase) {
        m11172a(sQLiteDatabase, "DROP TABLE IF EXISTS " + str);
    }

    /* renamed from: e */
    public void m11164e(String str, Object[] objArr) {
        synchronized (avD) {
            execSQL(str, objArr);
        }
    }

    /* renamed from: a */
    public void m11172a(SQLiteDatabase sQLiteDatabase, String str) {
        synchronized (avD) {
            m11167b(sQLiteDatabase, str);
        }
    }

    /* renamed from: d */
    public Cursor m11165d(String str, String[] strArr) {
        Cursor cursor = null;
        synchronized (avD) {
            try {
                cursor = getReadableDatabase().rawQuery(str, strArr);
            } catch (Exception e) {
            }
        }
        return cursor;
    }

    /* renamed from: b */
    public long m11166b(String str, ContentValues contentValues) {
        long j = 0;
        synchronized (avD) {
            try {
                j = getWritableDatabase().insert(str, null, contentValues);
            } catch (Exception e) {
            }
        }
        return j;
    }

    /* renamed from: a */
    public int m11168a(String str, String str2, String[] strArr) {
        int i = 0;
        synchronized (avD) {
            try {
                i = getWritableDatabase().delete(str, str2, strArr);
            } catch (Exception e) {
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m11170a(String str, ContentValues contentValues, String str2, String[] strArr) {
        int i = 0;
        synchronized (avD) {
            try {
                i = getWritableDatabase().update(str, contentValues, str2, strArr);
            } catch (Exception e) {
            }
        }
        return i;
    }

    /* renamed from: gW */
    public int m11163gW(String str) {
        int i = 0;
        synchronized (avD) {
            try {
                i = getWritableDatabase().delete(str, null, null);
            } catch (Exception e) {
            }
        }
        return i;
    }

    /* renamed from: a */
    public boolean m11171a(aik aikVar) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        boolean z = false;
        synchronized (avD) {
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                try {
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    try {
                        writableDatabase.beginTransaction();
                        aikVar.mo10675o(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        z = true;
                        if (writableDatabase != null) {
                            try {
                                writableDatabase.endTransaction();
                            } catch (Exception e) {
                            }
                        }
                    } catch (Throwable th2) {
                        sQLiteDatabase = writableDatabase;
                        th = th2;
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Exception e2) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    if (0 != 0) {
                        try {
                            sQLiteDatabase2.endTransaction();
                        } catch (Exception e4) {
                        }
                    }
                }
            } catch (Throwable th3) {
                sQLiteDatabase = null;
                th = th3;
            }
        }
        return z;
    }

    private void execSQL(String str, Object[] objArr) {
        try {
            getWritableDatabase().execSQL(str, objArr);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    private void m11167b(SQLiteDatabase sQLiteDatabase, String str) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.execSQL(str);
            } catch (Exception e) {
            }
        }
    }
}
