package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.kingroot.loader.sdk.KlConfig;
import com.kingroot.loader.sdk.KlInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bka extends SQLiteOpenHelper {
    private static volatile bka byR = null;
    private static final Object byG = new Object();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private bka(Context context) {
        super(context, "kingloaderv2.db", (SQLiteDatabase.CursorFactory) null, 1);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            sQLiteDatabase.setLockingEnabled(false);
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.close();
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
            try {
                bkq.m6550d(th2);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.close();
                    } catch (Throwable th3) {
                    }
                }
            } catch (Throwable th4) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.close();
                    } catch (Throwable th5) {
                    }
                }
                throw th4;
            }
        }
    }

    /* renamed from: bA */
    public static bka m6589bA(Context context) {
        if (byR == null) {
            synchronized (bka.class) {
                if (byR == null) {
                    byR = new bka(context);
                }
            }
        }
        return byR;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS kl_info_table_1 (xl INTEGER PRIMARY KEY,xa TEXT,xb INTEGER,xc TEXT,xd TEXT,xe TEXT,xf TEXT,xg INTEGER,xi TEXT,xj INTEGER,xk INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS kl_config_1(xa INTEGER PRIMARY KEY,xb INTEGER,xc INTEGER,xd INTEGER,xe INTEGER,xf LONG,xg LONG,xh TEXT,xi TEXT,xj TEXT)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m6591a(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @SuppressLint({"Override"})
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m6591a(sQLiteDatabase, i, i2);
    }

    /* renamed from: a */
    private void m6591a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.beginTransaction();
        onCreate(sQLiteDatabase);
        for (KlInfo klInfo : m6590b(sQLiteDatabase, i, i2)) {
            try {
                sQLiteDatabase.insert("kl_info_table_1", null, klInfo.transferToContentValues());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        for (KlConfig klConfig : m6588c(sQLiteDatabase, i, i2)) {
            try {
                sQLiteDatabase.insert("kl_config_1", null, klConfig.transferToContentValues());
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS kl_info_table_" + i);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS kl_config_" + i);
        sQLiteDatabase.setTransactionSuccessful();
        sQLiteDatabase.endTransaction();
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List<KlInfo> m6590b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Cursor cursor;
        Cursor cursor2 = null;
        ArrayList arrayList = new ArrayList();
        if (i > 2) {
            try {
                cursor = sQLiteDatabase.query("kl_info_table_" + i, new String[]{KlInfo.KlInfoEntry.COLUMN_PLUGIN_ID, "xa", "xb", "xc", "xd", "xe", "xf", "xg", "xi", "xj", KlInfo.KlInfoEntry.COLUMN_PLUGIN_BUILD_HOST_VERSION}, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        cursor.moveToFirst();
                        do {
                            try {
                                KlInfo klInfo = new KlInfo();
                                klInfo.pluginId = cursor.getInt(cursor.getColumnIndexOrThrow(KlInfo.KlInfoEntry.COLUMN_PLUGIN_ID));
                                klInfo.packageName = cursor.getString(cursor.getColumnIndexOrThrow("xa"));
                                klInfo.versionCode = cursor.getInt(cursor.getColumnIndexOrThrow("xb"));
                                klInfo.buildHostId = cursor.getInt(cursor.getColumnIndexOrThrow("xj"));
                                klInfo.buildHostVersion = cursor.getInt(cursor.getColumnIndexOrThrow(KlInfo.KlInfoEntry.COLUMN_PLUGIN_BUILD_HOST_VERSION));
                                klInfo.backEntryClass = cursor.getString(cursor.getColumnIndexOrThrow("xc"));
                                klInfo.foreEntryClass = cursor.getString(cursor.getColumnIndexOrThrow("xd"));
                                klInfo.packageMd5 = cursor.getString(cursor.getColumnIndexOrThrow("xe"));
                                klInfo.rawPluginPath = cursor.getString(cursor.getColumnIndexOrThrow("xf"));
                                klInfo.installState = cursor.getInt(cursor.getColumnIndexOrThrow("xg"));
                                klInfo.versionName = cursor.getString(cursor.getColumnIndexOrThrow("xi"));
                                arrayList.add(klInfo);
                            } catch (Throwable th) {
                            }
                        } while (cursor.moveToNext());
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (Throwable th2) {
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            bkq.m6550d(th);
                            return arrayList;
                        } finally {
                            if (cursor2 != null) {
                                try {
                                    cursor2.close();
                                } catch (Throwable th4) {
                                }
                            }
                        }
                    }
                } else if (cursor != null) {
                }
            } catch (Throwable th5) {
                th = th5;
                cursor = null;
            }
        } else if (i == 1) {
            try {
                cursor2 = sQLiteDatabase.query("kl_info_table_" + i, new String[]{"xa", "xb", "xc", "xd", "xi"}, null, null, null, null, null);
                if (cursor2 != null) {
                    cursor2.moveToFirst();
                    do {
                        try {
                            KlInfo klInfo2 = new KlInfo();
                            klInfo2.packageName = cursor2.getString(cursor2.getColumnIndexOrThrow("xa"));
                            klInfo2.versionCode = cursor2.getInt(cursor2.getColumnIndexOrThrow("xb"));
                            klInfo2.backEntryClass = cursor2.getString(cursor2.getColumnIndexOrThrow("xc"));
                            klInfo2.foreEntryClass = cursor2.getString(cursor2.getColumnIndexOrThrow("xd"));
                            klInfo2.versionName = cursor2.getString(cursor2.getColumnIndexOrThrow("xi"));
                            klInfo2.installState = 3;
                            arrayList.add(klInfo2);
                        } catch (Throwable th6) {
                        }
                    } while (cursor2.moveToNext());
                }
            } catch (Throwable th7) {
                try {
                    bkq.m6550d(th7);
                    if (cursor2 != null) {
                        try {
                            cursor2.close();
                        } catch (Throwable th8) {
                        }
                    }
                } finally {
                    if (cursor2 != null) {
                        try {
                            cursor2.close();
                        } catch (Throwable th9) {
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List<KlConfig> m6588c(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = sQLiteDatabase.query("kl_config_" + i, new String[]{"xa", "xb"}, null, null, null, null, null);
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        if (cursor != null) {
            try {
                cursor.moveToFirst();
                do {
                    try {
                        arrayList.add(new KlConfig(cursor.getInt(cursor.getColumnIndexOrThrow("xa")), cursor.getInt(cursor.getColumnIndexOrThrow("xb"))));
                    } catch (Throwable th2) {
                    }
                } while (cursor.moveToNext());
            } catch (Throwable th3) {
                th = th3;
                try {
                    bkq.m6550d(th);
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Throwable th4) {
                        }
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Throwable th5) {
                        }
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: d */
    public void m6585d(String str, ContentValues contentValues) {
        synchronized (byG) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.insert(str, null, contentValues);
            if (writableDatabase != null) {
                try {
                    writableDatabase.close();
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: c */
    public void m6586c(String str, String str2, String[] strArr) {
        synchronized (byG) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.delete(str, str2, strArr);
            if (writableDatabase != null) {
                try {
                    writableDatabase.close();
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: c */
    public void m6587c(String str, ContentValues contentValues, String str2, String[] strArr) {
        synchronized (byG) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.update(str, contentValues, str2, strArr);
            if (writableDatabase != null) {
                try {
                    writableDatabase.close();
                } catch (Throwable th) {
                }
            }
        }
    }
}
