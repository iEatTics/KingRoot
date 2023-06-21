package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class bsd {
    bsf bLm;

    public bsd(bsf bsfVar) {
        bth.m5539i("CommonAdvertiseDao()");
        this.bLm = bsfVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00af A[Catch: all -> 0x00b9, TRY_ENTER, TryCatch #6 {, blocks: (B:4:0x0004, B:6:0x000f, B:9:0x001b, B:14:0x003d, B:22:0x0060, B:23:0x0063, B:65:0x0117, B:10:0x0030, B:11:0x0034, B:13:0x003a, B:28:0x006c, B:36:0x00af, B:38:0x00b4, B:53:0x00d8, B:47:0x00cb, B:45:0x00c0, B:15:0x0049, B:16:0x004d, B:18:0x0053, B:19:0x0057, B:21:0x005d, B:60:0x00ff, B:55:0x00dd), top: B:79:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00b4 A[SYNTHETIC] */
    /* renamed from: cl */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void m5592cl(List<bso> list) {
        Cursor cursor;
        boolean z;
        bth.m5539i("CommonAdvertiseDao save(List<DbUnifiedData> datas) beigin");
        if (list.size() == 1) {
            m5593c(list.get(0));
        } else {
            ArrayList<bso> arrayList = new ArrayList(5);
            ArrayList<bso> arrayList2 = new ArrayList(5);
            SQLiteDatabase readableDatabase = this.bLm.getReadableDatabase();
            readableDatabase.beginTransaction();
            for (bso bsoVar : list) {
                String str = "select * from common_advertise_table where uniquekey = '" + bsoVar.bLV.uniqueKey + "'";
                bth.m5541d("CommonAdvertiseDao", "query sql::" + str);
                try {
                    cursor = readableDatabase.rawQuery(str, null);
                } catch (Throwable th) {
                    th = th;
                    cursor = null;
                }
                if (cursor != null) {
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                        bth.m5541d("CommonAdvertiseDao", Log.getStackTraceString(th));
                        if (cursor != null) {
                            cursor.close();
                            z = false;
                        } else {
                            z = false;
                        }
                        if (z) {
                        }
                    }
                    if (cursor.moveToNext()) {
                        z = true;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (z) {
                            arrayList.add(bsoVar);
                        } else {
                            arrayList2.add(bsoVar);
                        }
                    }
                }
                z = false;
                if (cursor != null) {
                }
                if (z) {
                }
            }
            readableDatabase.setTransactionSuccessful();
            readableDatabase.endTransaction();
            SQLiteDatabase writableDatabase = this.bLm.getWritableDatabase();
            writableDatabase.beginTransaction();
            for (bso bsoVar2 : arrayList) {
                readableDatabase.update("common_advertise_table", m5587f(bsoVar2), "uniquekey =?", new String[]{bsoVar2.bLV.uniqueKey});
            }
            for (bso bsoVar3 : arrayList2) {
                readableDatabase.insert("common_advertise_table", null, m5587f(bsoVar3));
            }
            writableDatabase.setTransactionSuccessful();
            try {
                writableDatabase.endTransaction();
            } catch (SQLiteException e) {
                e.printStackTrace();
            }
            bth.m5539i("CommonAdvertiseDao save(List<DbUnifiedData> datas) end");
        }
    }

    /* renamed from: c */
    public synchronized void m5593c(bso bsoVar) {
        bth.m5539i("CommonAdvertiseDao save(DbUnifiedData data) beign");
        if (m5582mZ(bsoVar.bLV.uniqueKey) != null) {
            m5589e(bsoVar);
        } else {
            m5590d(bsoVar);
        }
        bth.m5539i("CommonAdvertiseDao save(DbUnifiedData data) end");
    }

    /* renamed from: a */
    public void m5594a(String str, brl brlVar) {
        SQLiteDatabase writableDatabase = this.bLm.getWritableDatabase();
        ContentValues m5595V = m5595V("ad_phase", brlVar.getState());
        m5595V.put("max_display_time", Integer.valueOf(brlVar.bKd));
        m5595V.put("max_click_time", Integer.valueOf(brlVar.bKe));
        m5595V.put("expire_time", Integer.valueOf(brlVar.bKb));
        m5595V.put("weight", Integer.valueOf(brlVar.bKf));
        m5595V.put("predisplaytime", Long.valueOf(brlVar.bKg));
        try {
            writableDatabase.update("common_advertise_table", m5595V, "uniquekey =?", new String[]{str});
        } catch (SQLiteDiskIOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private void m5590d(bso bsoVar) {
        bth.m5539i("CommonAdvertiseDao insert() beign");
        bth.m5539i("rowid=" + this.bLm.getWritableDatabase().insert("common_advertise_table", null, m5587f(bsoVar)));
        bth.m5539i("CommonAdvertiseDao insert() end");
    }

    /* renamed from: e */
    private void m5589e(bso bsoVar) {
        bth.m5539i("CommonAdvertiseDao update() beign");
        this.bLm.getWritableDatabase().update("common_advertise_table", m5587f(bsoVar), "uniquekey =?", new String[]{bsoVar.bLV.uniqueKey});
        bth.m5539i("CommonAdvertiseDao update() end");
    }

    /* renamed from: cm */
    public synchronized void m5591cm(List<bsp> list) {
        bth.m5539i("CommonAdvertiseDao delete(List<DbUnifiedData> datas) beign");
        if (list.size() == 1) {
            m5584hs(list.get(0).uniqueKey);
        } else {
            SQLiteDatabase writableDatabase = this.bLm.getWritableDatabase();
            writableDatabase.beginTransaction();
            Iterator<bsp> it = list.iterator();
            while (it.hasNext()) {
                writableDatabase.delete("common_advertise_table", "uniquekey =? ", new String[]{it.next().uniqueKey});
            }
            writableDatabase.setTransactionSuccessful();
            try {
                writableDatabase.endTransaction();
            } catch (SQLiteException e) {
                e.printStackTrace();
            }
            bth.m5539i("CommonAdvertiseDao delete(List<DbUnifiedData> datas) end");
        }
    }

    /* renamed from: hs */
    public void m5584hs(String str) {
        this.bLm.getWritableDatabase().delete("common_advertise_table", "uniquekey =? ", new String[]{str});
    }

    /* renamed from: j */
    public List<bso> m5583j(int i, List<Integer> list) {
        String str;
        Cursor cursor = null;
        StringBuilder sb = new StringBuilder();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append(list.get(i2));
                if (i2 != size - 1) {
                    sb.append(",");
                }
            }
            str = "select * from common_advertise_table where pos_id = " + i + " and template_type IN (" + sb.toString() + " )";
        } else {
            str = "select * from common_advertise_table where pos_id = " + i;
        }
        bth.m5541d("CommonAdvertiseDao", "query sql::" + str);
        ArrayList arrayList = new ArrayList();
        try {
            cursor = this.bLm.getReadableDatabase().rawQuery(str, null);
            while (cursor != null) {
                if (!cursor.moveToNext()) {
                    break;
                }
                arrayList.add(m5586g(cursor));
            }
        } catch (Throwable th) {
            try {
                bth.m5541d("CommonAdvertiseDao", Log.getStackTraceString(th));
                if (cursor != null) {
                    cursor.close();
                }
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: mZ */
    public bso m5582mZ(String str) {
        Cursor cursor;
        bso bsoVar = null;
        String str2 = "select * from common_advertise_table where uniquekey = '" + str + "'";
        bth.m5541d("CommonAdvertiseDao", "query sql::" + str2);
        try {
            cursor = this.bLm.getReadableDatabase().rawQuery(str2, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToNext()) {
                        bsoVar = m5586g(cursor);
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        bth.m5541d("CommonAdvertiseDao", Log.getStackTraceString(th));
                        if (cursor != null) {
                            cursor.close();
                        }
                        bth.m5541d("CommonAdvertiseDao", "query():" + str + " dbData=" + bsoVar);
                        return bsoVar;
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        bth.m5541d("CommonAdvertiseDao", "query():" + str + " dbData=" + bsoVar);
        return bsoVar;
    }

    /* renamed from: f */
    bsp m5588f(Cursor cursor) {
        bsp bspVar = new bsp();
        bspVar.uniqueKey = cursor.getString(cursor.getColumnIndex("uniquekey"));
        try {
            bspVar.bLX = Boolean.getBoolean(cursor.getString(cursor.getColumnIndex("is_shareable")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        bspVar.jumpType = cursor.getInt(cursor.getColumnIndex("jump_type"));
        bspVar.bJA = cursor.getInt(cursor.getColumnIndex("persentspent"));
        bspVar.bJp = cursor.getInt(cursor.getColumnIndex("pos_id"));
        bspVar.activityId = cursor.getString(cursor.getColumnIndex("activity_id"));
        bspVar.bJq = cursor.getInt(cursor.getColumnIndex("template_type"));
        bspVar.bJr = cursor.getString(cursor.getColumnIndex("text1"));
        bspVar.bJs = cursor.getString(cursor.getColumnIndex("text2"));
        bspVar.bJt = cursor.getString(cursor.getColumnIndex("text3"));
        bspVar.bJu = cursor.getString(cursor.getColumnIndex("text4"));
        bspVar.bJv = cursor.getString(cursor.getColumnIndex("image_url1"));
        bspVar.bJw = cursor.getString(cursor.getColumnIndex("image_url2"));
        bspVar.bJx = cursor.getString(cursor.getColumnIndex("image_url3"));
        bspVar.bLY = cursor.getInt(cursor.getColumnIndex("content_type"));
        bspVar.jumpUrl = cursor.getString(cursor.getColumnIndex("jump_url"));
        bspVar.packageName = cursor.getString(cursor.getColumnIndex("packagename"));
        bspVar.bKb = cursor.getInt(cursor.getColumnIndex("expire_time"));
        bspVar.bLn = cursor.getBlob(cursor.getColumnIndex("context"));
        bspVar.bJB = cursor.getInt(cursor.getColumnIndex("effective_time"));
        bspVar.bJC = cursor.getInt(cursor.getColumnIndex("continuousExposureTime"));
        bspVar.bJD = cursor.getInt(cursor.getColumnIndex("exposureInterval"));
        bspVar.bJE = cursor.getInt(cursor.getColumnIndex("scenes"));
        bspVar.bJG = cursor.getLong(cursor.getColumnIndex("predisplaytime"));
        bspVar.videoUrl = cursor.getString(cursor.getColumnIndex("videoUrl"));
        bspVar.bJJ = cursor.getString(cursor.getColumnIndex("videoUrl"));
        return bspVar;
    }

    /* renamed from: g */
    bso m5586g(Cursor cursor) {
        bso bsoVar = new bso();
        bsoVar.bLV = m5588f(cursor);
        bsoVar.f2068gw = cursor.getInt(cursor.getColumnIndex("ad_phase"));
        bsoVar.bLT = cursor.getInt(cursor.getColumnIndex("max_display_time"));
        bsoVar.bLU = cursor.getInt(cursor.getColumnIndex("max_click_time"));
        bsoVar.weight = cursor.getInt(cursor.getColumnIndex("weight"));
        return bsoVar;
    }

    /* renamed from: f */
    private ContentValues m5587f(bso bsoVar) {
        ContentValues m5585g = m5585g(bsoVar.bLV);
        m5585g.put("max_display_time", Integer.valueOf(bsoVar.bLT));
        m5585g.put("max_click_time", Integer.valueOf(bsoVar.bLU));
        m5585g.put("ad_phase", (Integer) 2);
        return m5585g;
    }

    /* renamed from: g */
    private ContentValues m5585g(bsp bspVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("jump_type", Integer.valueOf(bspVar.jumpType));
        contentValues.put("persentspent", Integer.valueOf(bspVar.bJA));
        contentValues.put("uniquekey", bspVar.uniqueKey);
        contentValues.put("is_shareable", Boolean.valueOf(bspVar.bLX));
        contentValues.put("pos_id", Integer.valueOf(bspVar.bJp));
        contentValues.put("activity_id", bspVar.activityId);
        contentValues.put("template_type", Integer.valueOf(bspVar.bJq));
        contentValues.put("text1", bspVar.bJr);
        contentValues.put("text2", bspVar.bJs);
        contentValues.put("text3", bspVar.bJt);
        contentValues.put("text4", bspVar.bJu);
        contentValues.put("image_url1", bspVar.bJv);
        contentValues.put("image_url2", bspVar.bJw);
        contentValues.put("image_url3", bspVar.bJx);
        contentValues.put("content_type", Integer.valueOf(bspVar.bLY));
        contentValues.put("jump_url", bspVar.jumpUrl);
        contentValues.put("packagename", bspVar.packageName);
        contentValues.put("expire_time", Integer.valueOf(bspVar.bKb));
        contentValues.put("context", bspVar.bLn);
        contentValues.put("effective_time", Integer.valueOf(bspVar.bJB));
        contentValues.put("continuousExposureTime", Integer.valueOf(bspVar.bJC));
        contentValues.put("exposureInterval", Integer.valueOf(bspVar.bJD));
        contentValues.put("scenes", Integer.valueOf(bspVar.bJE));
        contentValues.put("predisplaytime", Long.valueOf(bspVar.bJG));
        contentValues.put("videoUrl", bspVar.videoUrl);
        contentValues.put("zipUrl", bspVar.bJJ);
        return contentValues;
    }

    /* renamed from: V */
    private ContentValues m5595V(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(str, Integer.valueOf(i));
        return contentValues;
    }
}
