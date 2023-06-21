package com.tencent.feedback.proguard;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.feedback.common.C4072d;
import com.tencent.feedback.common.C4073e;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
/* renamed from: com.tencent.feedback.proguard.o */
/* loaded from: classes.dex */
public final class C4134o extends SQLiteOpenHelper {

    /* renamed from: a */
    private Context f4757a;

    public C4134o(Context context) {
        super(context, "eup_db", (SQLiteDatabase.CursorFactory) null, 14);
        this.f4757a = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        String[][] strArr;
        synchronized (this) {
            if (sQLiteDatabase != null) {
                if (C4133n.f4756a != null) {
                    for (String[] strArr2 : C4133n.f4756a) {
                        C4073e.m1015b("rqdp{  table:}%s %s", strArr2[0], strArr2[1]);
                        sQLiteDatabase.execSQL(strArr2[1]);
                    }
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C4073e.m1015b("rqdp{  upgrade a db }[%s]rqdp{   from v}%d rqdp{  to v}%d rqdp{  , deleted all tables!}", "eup_db", Integer.valueOf(i), Integer.valueOf(i2));
        if (m632a(sQLiteDatabase)) {
            C4073e.m1015b("rqdp{  drop all success recreate!}", new Object[0]);
            onCreate(sQLiteDatabase);
        } else {
            C4073e.m1012d("rqdp{  drop all fail try deleted file,may next time will success!}", new Object[0]);
            File databasePath = this.f4757a.getDatabasePath("eup_db");
            if (databasePath != null && databasePath.canWrite()) {
                databasePath.delete();
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @TargetApi(11)
    public final synchronized void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C4072d.m1041a(this.f4757a);
        if (Integer.parseInt(C4072d.m1038c()) >= 11) {
            C4073e.m1015b("rqdp{  downgrade a db} [%s] rqdp{  from v}%d rqdp{  to} v%d rqdp{  , deleted all tables!}", "eup_db", Integer.valueOf(i), Integer.valueOf(i2));
            if (m632a(sQLiteDatabase)) {
                C4073e.m1015b("rqdp{  drop all success recreate!}", new Object[0]);
                onCreate(sQLiteDatabase);
            } else {
                C4073e.m1012d("rqdp{  drop all fail try deleted file,may next time will success!}", new Object[0]);
                File databasePath = this.f4757a.getDatabasePath("eup_db");
                if (databasePath != null && databasePath.canWrite()) {
                    databasePath.delete();
                }
            }
        }
    }

    /* renamed from: a */
    private synchronized boolean m632a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        boolean z;
        try {
            ArrayList<String> arrayList = new ArrayList();
            cursor = sQLiteDatabase.query("sqlite_master", new String[]{"name"}, "type = 'table'", null, null, null, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        arrayList.add(cursor.getString(0));
                    } catch (Throwable th) {
                        th = th;
                        if (!C4073e.m1016a(th)) {
                            th.printStackTrace();
                        }
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        z = false;
                        return z;
                    }
                }
            }
            if (arrayList.size() > 0) {
                for (String str : arrayList) {
                    sQLiteDatabase.execSQL(String.format(Locale.US, "drop table if exists %s", str));
                    C4073e.m1015b("rqdp{  drop }%s", str);
                }
            }
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            z = true;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        return z;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        int i = 0;
        synchronized (this) {
            sQLiteDatabase = null;
            while (sQLiteDatabase == null && i < 5) {
                i++;
                try {
                    sQLiteDatabase = super.getReadableDatabase();
                } catch (Throwable th) {
                    C4073e.m1013c("rqdp{  getReadableDatabase error count} %d", Integer.valueOf(i));
                    if (i == 5) {
                        C4073e.m1012d("rqdp{  error get DB failed}", new Object[0]);
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e) {
                        if (!C4073e.m1016a(th)) {
                            th.printStackTrace();
                        }
                    }
                }
            }
        }
        return sQLiteDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        int i = 0;
        synchronized (this) {
            sQLiteDatabase = null;
            while (sQLiteDatabase == null && i < 5) {
                i++;
                try {
                    sQLiteDatabase = super.getWritableDatabase();
                } catch (Exception e) {
                    C4073e.m1013c("rqdp{  getWritableDatabase error count} %d", Integer.valueOf(i));
                    if (i == 5) {
                        C4073e.m1012d("rqdp{  error get DB failed}", new Object[0]);
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e2) {
                        if (!C4073e.m1016a(e)) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return sQLiteDatabase;
    }
}
