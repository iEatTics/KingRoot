package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.kinguser.aae;
import java.util.List;
/* renamed from: com.kingroot.kinguser.sx */
/* loaded from: classes.dex */
public class C3613sx {

    /* renamed from: Bk */
    public String f3534Bk;

    /* renamed from: GM */
    public int f3535GM;

    /* renamed from: GN */
    public boolean f3536GN;

    /* renamed from: GO */
    public String[] f3537GO;
    public long mId;
    public long mTime;

    public C3613sx(int i, long j, String[] strArr) {
        this(i, j, strArr, false);
    }

    public C3613sx(int i, long j, String[] strArr, boolean z) {
        this(-1L, i, j, strArr, z);
    }

    public C3613sx(long j, int i, long j2, String[] strArr, boolean z) {
        this.mId = -1L;
        this.f3534Bk = "1";
        this.f3536GN = false;
        this.f3537GO = new String[10];
        this.mId = j;
        this.f3535GM = i;
        this.mTime = j2;
        this.f3536GN = z;
        if (strArr != null) {
            for (int i2 = 0; i2 < this.f3537GO.length && i2 < strArr.length; i2++) {
                this.f3537GO[i2] = strArr[i2];
            }
        }
    }

    public C3613sx() {
        this.mId = -1L;
        this.f3534Bk = "1";
        this.f3536GN = false;
        this.f3537GO = new String[10];
    }

    /* renamed from: L */
    public ContentValues m2220L(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(RootConst.KEY_EMID, Integer.valueOf(this.f3535GM));
        contentValues.put("time", Long.valueOf(this.mTime));
        contentValues.put("independent", Integer.valueOf(this.f3536GN ? 1 : 0));
        m2218a(contentValues, "desc", this.f3534Bk, z);
        m2218a(contentValues, "data0", this.f3537GO[0], z);
        m2218a(contentValues, "data1", this.f3537GO[1], z);
        m2218a(contentValues, "data2", this.f3537GO[2], z);
        m2218a(contentValues, "data3", this.f3537GO[3], z);
        m2218a(contentValues, "data4", this.f3537GO[4], z);
        m2218a(contentValues, "data5", this.f3537GO[5], z);
        m2218a(contentValues, "data6", this.f3537GO[6], z);
        m2218a(contentValues, "data7", this.f3537GO[7], z);
        m2218a(contentValues, "data8", this.f3537GO[8], z);
        m2218a(contentValues, "data9", this.f3537GO[9], z);
        return contentValues;
    }

    /* renamed from: a */
    public static C3613sx m2219a(ContentValues contentValues) {
        C3613sx c3613sx;
        if (contentValues == null) {
            return null;
        }
        try {
            c3613sx = new C3613sx(contentValues.getAsInteger(RootConst.KEY_EMID).intValue(), contentValues.getAsLong("time").longValue(), new String[]{contentValues.getAsString("data0"), contentValues.getAsString("data1"), contentValues.getAsString("data2"), contentValues.getAsString("data3"), contentValues.getAsString("data4"), contentValues.getAsString("data5"), contentValues.getAsString("data6"), contentValues.getAsString("data7"), contentValues.getAsString("data8"), contentValues.getAsString("data9")}, contentValues.getAsInteger("independent").intValue() == 1);
        } catch (Throwable th) {
            c3613sx = null;
        }
        return c3613sx;
    }

    /* renamed from: a */
    private void m2218a(ContentValues contentValues, String str, String str2, boolean z) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (z) {
                str2 = m2215cO(str2);
            }
            contentValues.put(str, str2);
        }
    }

    /* renamed from: a */
    public static void m2216a(List<C3613sx> list, Cursor cursor, boolean z) {
        if (cursor != null && cursor.moveToFirst()) {
            try {
                int columnIndexOrThrow = cursor.getColumnIndexOrThrow("_id");
                int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow(RootConst.KEY_EMID);
                int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow("time");
                int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow("independent");
                int columnIndexOrThrow5 = cursor.getColumnIndexOrThrow("data0");
                int columnIndexOrThrow6 = cursor.getColumnIndexOrThrow("data1");
                int columnIndexOrThrow7 = cursor.getColumnIndexOrThrow("data2");
                int columnIndexOrThrow8 = cursor.getColumnIndexOrThrow("data3");
                int columnIndexOrThrow9 = cursor.getColumnIndexOrThrow("data4");
                int columnIndexOrThrow10 = cursor.getColumnIndexOrThrow("data5");
                int columnIndexOrThrow11 = cursor.getColumnIndexOrThrow("data6");
                int columnIndexOrThrow12 = cursor.getColumnIndexOrThrow("data7");
                int columnIndexOrThrow13 = cursor.getColumnIndexOrThrow("data8");
                int columnIndexOrThrow14 = cursor.getColumnIndexOrThrow("data9");
                do {
                    try {
                        list.add(new C3613sx(cursor.getLong(columnIndexOrThrow), cursor.getInt(columnIndexOrThrow2), cursor.getLong(columnIndexOrThrow3), new String[]{m2217a(cursor, columnIndexOrThrow5, z), m2217a(cursor, columnIndexOrThrow6, z), m2217a(cursor, columnIndexOrThrow7, z), m2217a(cursor, columnIndexOrThrow8, z), m2217a(cursor, columnIndexOrThrow9, z), m2217a(cursor, columnIndexOrThrow10, z), m2217a(cursor, columnIndexOrThrow11, z), m2217a(cursor, columnIndexOrThrow12, z), m2217a(cursor, columnIndexOrThrow13, z), m2217a(cursor, columnIndexOrThrow14, z)}, cursor.getInt(columnIndexOrThrow4) == 1));
                    } catch (Throwable th) {
                    }
                } while (cursor.moveToNext());
            } catch (Throwable th2) {
            }
        }
    }

    /* renamed from: a */
    private static String m2217a(Cursor cursor, int i, boolean z) {
        String string = cursor.getString(i);
        if (z) {
            return m2214cP(string);
        }
        return string;
    }

    /* renamed from: cO */
    public static String m2215cO(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String mo12985N = aae.m13006a(aae.EnumC0610b.XXTEA_OLD).mo12985N(C3971zq.get("a2"), str);
            if (TextUtils.isEmpty(mo12985N)) {
                return "";
            }
            return mo12985N;
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: cP */
    public static String m2214cP(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String mo12984O = aae.m13006a(aae.EnumC0610b.XXTEA_OLD).mo12984O(C3971zq.get("a2"), str);
            if (TextUtils.isEmpty(mo12984O)) {
                return "";
            }
            return mo12984O;
        } catch (Throwable th) {
            return "";
        }
    }
}
