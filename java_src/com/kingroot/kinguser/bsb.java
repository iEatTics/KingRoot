package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bsb {
    bsf bLm;

    public bsb(bsf bsfVar) {
        this.bLm = bsfVar;
    }

    /* renamed from: cj */
    public void m5597cj(List<bsc> list) {
        bth.m5541d("ActionDao", "insertAction(): actionModels size=" + list.size());
        SQLiteDatabase writableDatabase = this.bLm.getWritableDatabase();
        if (!btf.m5548cn(list)) {
            if (list.size() == 1) {
                for (bsc bscVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("activity_id", bscVar.activityID);
                    contentValues.put("context", bscVar.bLn);
                    contentValues.put("phase", Integer.valueOf(bscVar.f2064gw));
                    contentValues.put("position_id", Integer.valueOf(bscVar.bJp));
                    contentValues.put("timestamp", Long.valueOf(bscVar.bLo));
                    contentValues.put("specialtime", Long.valueOf(bscVar.bLp));
                    writableDatabase.insert("discovery_advertise_action_table", null, contentValues);
                }
                return;
            }
            writableDatabase.beginTransaction();
            try {
                for (bsc bscVar2 : list) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("activity_id", bscVar2.activityID);
                    contentValues2.put("context", bscVar2.bLn);
                    contentValues2.put("phase", Integer.valueOf(bscVar2.f2064gw));
                    contentValues2.put("position_id", Integer.valueOf(bscVar2.bJp));
                    contentValues2.put("timestamp", Long.valueOf(bscVar2.bLo));
                    contentValues2.put("specialtime", Long.valueOf(bscVar2.bLp));
                    writableDatabase.insert("discovery_advertise_action_table", null, contentValues2);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                bth.m5541d("ActionDao", "insertAction(): end");
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<bsc> getActions() {
        Cursor cursor;
        Exception exc;
        ArrayList arrayList;
        Cursor cursor2 = null;
        try {
            cursor = this.bLm.getReadableDatabase().rawQuery("select * from discovery_advertise_action_table", null);
            if (cursor != null) {
                try {
                    try {
                        ArrayList arrayList2 = new ArrayList();
                        try {
                            cursor.moveToFirst();
                            while (!cursor.isAfterLast()) {
                                bsc bscVar = new bsc();
                                bscVar.activityID = cursor.getString(cursor.getColumnIndex("activity_id"));
                                bscVar.bLn = cursor.getBlob(cursor.getColumnIndex("context"));
                                bscVar.index = cursor.getInt(cursor.getColumnIndex("auto_increate_index"));
                                bscVar.f2064gw = cursor.getInt(cursor.getColumnIndex("phase"));
                                bscVar.bJp = cursor.getInt(cursor.getColumnIndex("position_id"));
                                bscVar.bLo = cursor.getLong(cursor.getColumnIndex("timestamp"));
                                bscVar.bLp = cursor.getLong(cursor.getColumnIndex("specialtime"));
                                arrayList2.add(bscVar);
                                cursor.moveToNext();
                            }
                            arrayList = arrayList2;
                        } catch (Exception e) {
                            cursor2 = cursor;
                            exc = e;
                            arrayList = arrayList2;
                            try {
                                bth.m5541d("ActionDao", "getActions, e: " + exc);
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                return arrayList;
                            } catch (Throwable th) {
                                th = th;
                                cursor = cursor2;
                                if (cursor != null) {
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    arrayList = null;
                    cursor2 = cursor;
                    exc = e2;
                }
            } else {
                arrayList = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            exc = e3;
            arrayList = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        return arrayList;
    }

    /* renamed from: ck */
    public void m5596ck(List<bsc> list) {
        bth.m5541d("ActionDao", "deleteAction(): actionModels size=" + list.size());
        if (!btf.m5548cn(list)) {
            SQLiteDatabase writableDatabase = this.bLm.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                Iterator<bsc> it = list.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete("discovery_advertise_action_table", String.format("%s = %d", "auto_increate_index", Integer.valueOf(it.next().index)), null);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                bth.m5541d("ActionDao", "deleteAction()  end");
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        }
    }
}
