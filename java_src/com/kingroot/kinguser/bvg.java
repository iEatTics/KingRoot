package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
/* loaded from: classes.dex */
public class bvg {
    private static bvg bPz;
    private bvf bPy = new bvf(bty.aie().getContext());
    private bvm bPA = new bvm();
    private bvl bPB = new bvl();
    private bvi bPC = new bvi();

    public static bvg aiv() {
        if (bPz == null) {
            synchronized (bvg.class) {
                if (bPz == null) {
                    bPz = new bvg();
                }
            }
        }
        return bPz;
    }

    private bvg() {
    }

    public bvm aiw() {
        return this.bPA;
    }

    public bvi aix() {
        return this.bPC;
    }

    /* renamed from: e */
    public synchronized long m5402e(String str, ContentValues contentValues) {
        long j;
        try {
            j = this.bPy.getWritableDatabase().insert(str, null, contentValues);
        } catch (Throwable th) {
            th.printStackTrace();
            j = -1;
        }
        return j;
    }

    /* renamed from: d */
    public synchronized boolean m5403d(String str, String str2, String[] strArr) {
        int i;
        try {
            i = this.bPy.getWritableDatabase().delete(str, str2, strArr);
        } catch (Exception e) {
            e.printStackTrace();
            i = -1;
        }
        return i > 0;
    }

    /* renamed from: nm */
    public synchronized Cursor m5400nm(String str) {
        return m5401e(str, (String[]) null);
    }

    /* renamed from: e */
    public synchronized Cursor m5401e(String str, String[] strArr) {
        Cursor cursor;
        cursor = null;
        try {
            cursor = this.bPy.getReadableDatabase().rawQuery(str, strArr);
        } catch (Exception e) {
            if (0 != 0 && !cursor.isClosed()) {
                cursor.close();
            }
            e.printStackTrace();
        }
        return cursor;
    }

    /* renamed from: a */
    public Cursor m5404a(String str, String[] strArr, String str2, String[] strArr2) {
        Cursor cursor = null;
        try {
            return this.bPy.getReadableDatabase().query(str, strArr, str2, strArr2, null, null, null);
        } catch (Exception e) {
            if (0 != 0 && !cursor.isClosed()) {
                cursor.close();
            }
            e.printStackTrace();
            return null;
        }
    }
}
