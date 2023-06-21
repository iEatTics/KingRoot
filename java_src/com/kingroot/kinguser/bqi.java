package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class bqi extends SQLiteOpenHelper {
    protected static final String[] bIo = {"key"};
    protected static bqi bIp;

    public static synchronized bqi ahm() {
        bqi bqiVar;
        synchronized (bqi.class) {
            if (bIp == null) {
                bIp = new bqi(bqo.agA());
            }
            bqiVar = bIp;
        }
        return bqiVar;
    }

    public bqi(Context context) {
        super(context, "sdk_report.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS via_cgi_report");
        onCreate(sQLiteDatabase);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e A[Catch: Exception -> 0x0092, all -> 0x00d9, TRY_ENTER, TryCatch #17 {Exception -> 0x0092, all -> 0x00d9, blocks: (B:15:0x0031, B:17:0x0037, B:18:0x003a, B:22:0x0056, B:23:0x0059, B:25:0x005e, B:26:0x0061, B:46:0x008b, B:47:0x008e, B:48:0x0091, B:38:0x007c, B:39:0x007f), top: B:123:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069 A[Catch: all -> 0x00ab, TRY_ENTER, TRY_LEAVE, TryCatch #9 {, blocks: (B:4:0x0002, B:9:0x0014, B:29:0x0069, B:31:0x006e, B:33:0x0073, B:63:0x00af, B:53:0x009d, B:55:0x00a2, B:57:0x00a7, B:65:0x00b4, B:69:0x00bc, B:71:0x00c1, B:73:0x00c6, B:74:0x00c9, B:76:0x00cb), top: B:110:0x0002, inners: #3, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0073 A[Catch: all -> 0x00ab, TRY_ENTER, TRY_LEAVE, TryCatch #9 {, blocks: (B:4:0x0002, B:9:0x0014, B:29:0x0069, B:31:0x006e, B:33:0x0073, B:63:0x00af, B:53:0x009d, B:55:0x00a2, B:57:0x00a7, B:65:0x00b4, B:69:0x00bc, B:71:0x00c1, B:73:0x00c6, B:74:0x00c9, B:76:0x00cb), top: B:110:0x0002, inners: #3, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bc A[Catch: all -> 0x00ab, TRY_LEAVE, TryCatch #9 {, blocks: (B:4:0x0002, B:9:0x0014, B:29:0x0069, B:31:0x006e, B:33:0x0073, B:63:0x00af, B:53:0x009d, B:55:0x00a2, B:57:0x00a7, B:65:0x00b4, B:69:0x00bc, B:71:0x00c1, B:73:0x00c6, B:74:0x00c9, B:76:0x00cb), top: B:110:0x0002, inners: #3, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00c6 A[Catch: all -> 0x00ab, TRY_ENTER, TryCatch #9 {, blocks: (B:4:0x0002, B:9:0x0014, B:29:0x0069, B:31:0x006e, B:33:0x0073, B:63:0x00af, B:53:0x009d, B:55:0x00a2, B:57:0x00a7, B:65:0x00b4, B:69:0x00bc, B:71:0x00c1, B:73:0x00c6, B:74:0x00c9, B:76:0x00cb), top: B:110:0x0002, inners: #3, #10, #12 }] */
    /* renamed from: mQ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized List<Serializable> m5807mQ(String str) {
        Cursor cursor;
        Cursor cursor2;
        List<Serializable> list;
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        Serializable serializable;
        List<Serializable> synchronizedList = Collections.synchronizedList(new ArrayList());
        if (TextUtils.isEmpty(str)) {
            list = synchronizedList;
        } else {
            SQLiteDatabase readableDatabase = getReadableDatabase();
            if (readableDatabase == null) {
                list = synchronizedList;
            } else {
                ObjectInputStream objectInputStream3 = null;
                try {
                    cursor = readableDatabase.query("via_cgi_report", null, "type = ?", new String[]{str}, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.getCount() > 0) {
                                cursor.moveToFirst();
                                do {
                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(cursor.getBlob(cursor.getColumnIndex("blob")));
                                    try {
                                        objectInputStream = new ObjectInputStream(byteArrayInputStream);
                                        try {
                                            serializable = (Serializable) objectInputStream.readObject();
                                            if (objectInputStream != null) {
                                                try {
                                                    objectInputStream.close();
                                                } catch (IOException e) {
                                                }
                                            }
                                            try {
                                                byteArrayInputStream.close();
                                            } catch (IOException e2) {
                                            }
                                        } catch (Exception e3) {
                                            objectInputStream2 = objectInputStream;
                                            if (objectInputStream2 != null) {
                                                try {
                                                    objectInputStream2.close();
                                                } catch (IOException e4) {
                                                }
                                            }
                                            try {
                                                byteArrayInputStream.close();
                                                serializable = null;
                                            } catch (IOException e5) {
                                                serializable = null;
                                            }
                                            if (serializable != null) {
                                            }
                                            if (!cursor.moveToNext()) {
                                                if (cursor != null) {
                                                }
                                                if (0 != 0) {
                                                }
                                                if (readableDatabase != null) {
                                                }
                                                list = synchronizedList;
                                                return list;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            if (objectInputStream != null) {
                                                try {
                                                    objectInputStream.close();
                                                } catch (IOException e6) {
                                                }
                                            }
                                            try {
                                                byteArrayInputStream.close();
                                            } catch (IOException e7) {
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e8) {
                                        objectInputStream2 = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        objectInputStream = null;
                                    }
                                    if (serializable != null) {
                                        synchronizedList.add(serializable);
                                    }
                                } while (!cursor.moveToNext());
                            }
                        } catch (Exception e9) {
                            e = e9;
                            cursor2 = cursor;
                            try {
                                bpy.m5843b("openSDK_LOG.ReportDatabaseHelper", "getReportItemFromDB has exception.", e);
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                if (0 != 0) {
                                    try {
                                        objectInputStream3.close();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                if (readableDatabase != null) {
                                    readableDatabase.close();
                                }
                                list = synchronizedList;
                                return list;
                            } catch (Throwable th3) {
                                th = th3;
                                cursor = cursor2;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (0 != 0) {
                                    try {
                                        objectInputStream3.close();
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                                if (readableDatabase != null) {
                                    readableDatabase.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            if (cursor != null) {
                            }
                            if (0 != 0) {
                            }
                            if (readableDatabase != null) {
                            }
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (0 != 0) {
                        try {
                            objectInputStream3.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    if (readableDatabase != null) {
                        readableDatabase.close();
                    }
                } catch (Exception e13) {
                    e = e13;
                    cursor2 = null;
                } catch (Throwable th5) {
                    th = th5;
                    cursor = null;
                }
                list = synchronizedList;
            }
        }
        return list;
    }

    /* renamed from: f */
    public synchronized void m5808f(String str, List<Serializable> list) {
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        synchronized (this) {
            int size = list.size();
            if (size != 0) {
                int i = size <= 20 ? size : 20;
                if (!TextUtils.isEmpty(str)) {
                    m5809b(str);
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    if (writableDatabase != null) {
                        writableDatabase.beginTransaction();
                        try {
                            ContentValues contentValues = new ContentValues();
                            for (int i2 = 0; i2 < i; i2++) {
                                Serializable serializable = list.get(i2);
                                if (serializable != null) {
                                    contentValues.put("type", str);
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
                                    try {
                                        ObjectOutputStream objectOutputStream3 = new ObjectOutputStream(byteArrayOutputStream);
                                        try {
                                            objectOutputStream3.writeObject(serializable);
                                            if (objectOutputStream3 != null) {
                                                try {
                                                    objectOutputStream3.close();
                                                } catch (IOException e) {
                                                }
                                            }
                                            try {
                                                byteArrayOutputStream.close();
                                            } catch (IOException e2) {
                                            }
                                        } catch (IOException e3) {
                                            objectOutputStream = objectOutputStream3;
                                            if (objectOutputStream != null) {
                                                try {
                                                    objectOutputStream.close();
                                                } catch (IOException e4) {
                                                }
                                            }
                                            try {
                                                byteArrayOutputStream.close();
                                            } catch (IOException e5) {
                                            }
                                            contentValues.put("blob", byteArrayOutputStream.toByteArray());
                                            writableDatabase.insert("via_cgi_report", null, contentValues);
                                            contentValues.clear();
                                        } catch (Throwable th) {
                                            th = th;
                                            objectOutputStream2 = objectOutputStream3;
                                            if (objectOutputStream2 != null) {
                                                try {
                                                    objectOutputStream2.close();
                                                } catch (IOException e6) {
                                                }
                                            }
                                            try {
                                                byteArrayOutputStream.close();
                                            } catch (IOException e7) {
                                            }
                                            throw th;
                                        }
                                    } catch (IOException e8) {
                                        objectOutputStream = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    contentValues.put("blob", byteArrayOutputStream.toByteArray());
                                    writableDatabase.insert("via_cgi_report", null, contentValues);
                                }
                                contentValues.clear();
                            }
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                            if (writableDatabase != null) {
                                writableDatabase.close();
                            }
                        } catch (Exception e9) {
                            bpy.m5840e("openSDK_LOG.ReportDatabaseHelper", "saveReportItemToDB has exception.");
                            writableDatabase.endTransaction();
                            if (writableDatabase != null) {
                                writableDatabase.close();
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public synchronized void m5809b(String str) {
        SQLiteDatabase writableDatabase;
        if (!TextUtils.isEmpty(str) && (writableDatabase = getWritableDatabase()) != null) {
            try {
                writableDatabase.delete("via_cgi_report", "type = ?", new String[]{str});
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
            } catch (Exception e) {
                bpy.m5843b("openSDK_LOG.ReportDatabaseHelper", "clearReportItem has exception.", e);
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }
}
