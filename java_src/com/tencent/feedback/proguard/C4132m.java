package com.tencent.feedback.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.feedback.common.C4073e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.tencent.feedback.proguard.m */
/* loaded from: classes.dex */
public class C4132m {

    /* renamed from: a */
    private long f4746a;

    /* renamed from: b */
    private int f4747b;

    /* renamed from: c */
    private int f4748c;

    /* renamed from: d */
    private long f4749d;

    /* renamed from: e */
    private byte[] f4750e;

    /* renamed from: f */
    private long f4751f;

    /* renamed from: g */
    private String f4752g;

    /* renamed from: h */
    private int f4753h;

    /* renamed from: i */
    private int f4754i;

    /* renamed from: j */
    private int f4755j;

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static java.util.List<com.tencent.feedback.proguard.C4135p> m653a(android.content.Context r14, java.lang.String r15, int r16, int r17) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m653a(android.content.Context, java.lang.String, int, int):java.util.List");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static boolean m652a(android.content.Context r11, java.util.List<com.tencent.feedback.proguard.C4132m> r12) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m652a(android.content.Context, java.util.List):boolean");
    }

    public C4132m() {
        this.f4746a = -1L;
        this.f4747b = -1;
        this.f4748c = -1;
        this.f4749d = -1L;
        this.f4750e = null;
        this.f4751f = 0L;
        this.f4752g = null;
        this.f4753h = 0;
        this.f4754i = 0;
        this.f4755j = -1;
    }

    public C4132m(int i, int i2, long j, byte[] bArr) {
        this.f4746a = -1L;
        this.f4747b = -1;
        this.f4748c = -1;
        this.f4749d = -1L;
        this.f4750e = null;
        this.f4751f = 0L;
        this.f4752g = null;
        this.f4753h = 0;
        this.f4754i = 0;
        this.f4755j = -1;
        this.f4747b = i;
        this.f4748c = 0;
        this.f4749d = j;
        this.f4750e = bArr;
        if (bArr != null) {
            this.f4751f = bArr.length;
        }
    }

    /* renamed from: a */
    public final long m657a() {
        return this.f4746a;
    }

    /* renamed from: a */
    public final C4132m m655a(long j) {
        this.f4746a = j;
        return this;
    }

    /* renamed from: b */
    public final byte[] m642b() {
        return this.f4750e;
    }

    /* renamed from: a */
    public static int m649a(Context context, int[] iArr, long j, long j2) {
        return m648a(context, iArr, j, j2, -1, -1);
    }

    /* renamed from: c */
    public static int m636c(Context context, List<C4135p> list) {
        C4134o c4134o;
        ContentValues contentValues;
        if (context == null || list == null || list.size() == 0) {
            Object[] objArr = new Object[1];
            objArr[0] = list == null ? "null" : new StringBuilder().append(list.size()).toString();
            C4073e.m1013c("rqdp{  FileDAO.insert, context == null || fileList == null || fileList.size() , pls check! fileList }%s ", objArr);
            return -1;
        }
        C4073e.m1015b("rqdp{  FileDAO.insert() start num:}%d", Integer.valueOf(list.size()));
        SQLiteDatabase sQLiteDatabase = null;
        int i = 0;
        try {
            c4134o = new C4134o(context);
            try {
                SQLiteDatabase writableDatabase = c4134o.getWritableDatabase();
                if (writableDatabase == null) {
                    C4073e.m1012d("rqdp{  getWritableDatabase fail, insert fail and return!}", new Object[0]);
                    C4073e.m1015b("rqdp{  Error:insertFile getWritableDatabase fail!}", new Object[0]);
                    if (writableDatabase != null && writableDatabase.isOpen()) {
                        writableDatabase.close();
                    }
                    c4134o.close();
                    C4073e.m1015b("rqdp{  FileDAO.insert() end success }%d", 0);
                    return -1;
                }
                for (C4135p c4135p : list) {
                    if (c4135p == null) {
                        contentValues = null;
                    } else {
                        contentValues = new ContentValues();
                        contentValues.put("_n", c4135p.m631a());
                        contentValues.put("_sa", c4135p.m621d());
                        contentValues.put("_sz", Long.valueOf(c4135p.m624c()));
                        contentValues.put("_ut", Long.valueOf(c4135p.m627b()));
                        contentValues.put("_t", Integer.valueOf(c4135p.m620e()));
                        contentValues.put("_ac", c4135p.m619f());
                    }
                    if (contentValues != null) {
                        long insert = writableDatabase.insert("file", "_id", contentValues);
                        c4135p.m629a(insert);
                        i += insert >= 0 ? 1 : 0;
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = c4135p.m631a();
                        objArr2[1] = Boolean.valueOf(insert >= 0);
                        C4073e.m1015b("rqdp{  insertFile name:}%s rqdp{  result:}%b", objArr2);
                    }
                    i = i;
                }
                if (writableDatabase != null && writableDatabase.isOpen()) {
                    writableDatabase.close();
                }
                c4134o.close();
                C4073e.m1015b("rqdp{  FileDAO.insert() end success }%d", Integer.valueOf(i));
                return i;
            } catch (Throwable th) {
                th = th;
                try {
                    C4073e.m1012d("rqdp{  Error in FileDAO insert!}", new Object[0]);
                    C4073e.m1012d("rqdp{  Error:insertFile }%s", th.getMessage());
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    if (0 != 0 && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    if (c4134o != null) {
                        c4134o.close();
                    }
                    C4073e.m1015b("rqdp{  FileDAO.insert() end success }%d", 0);
                    return 0;
                } catch (Throwable th2) {
                    if (0 != 0 && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    if (c4134o != null) {
                        c4134o.close();
                    }
                    C4073e.m1015b("rqdp{  FileDAO.insert() end success }%d", 0);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            c4134o = null;
        }
    }

    /* renamed from: a */
    public final C4132m m643a(String str) {
        this.f4752g = str;
        return this;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static int m648a(android.content.Context r8, int[] r9, long r10, long r12, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m648a(android.content.Context, int[], long, long, int, int):int");
    }

    /* renamed from: c */
    public final synchronized int m638c() {
        return this.f4753h;
    }

    /* renamed from: a */
    public final synchronized C4132m m656a(int i) {
        this.f4753h = i;
        return this;
    }

    /* renamed from: d */
    public final synchronized int m635d() {
        return this.f4754i;
    }

    /* renamed from: b */
    public final synchronized C4132m m641b(int i) {
        this.f4754i = i;
        return this;
    }

    /* renamed from: e */
    public final synchronized int m633e() {
        return this.f4755j;
    }

    /* renamed from: c */
    public final synchronized C4132m m637c(int i) {
        this.f4755j = i;
        return this;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: d */
    public static int m634d(android.content.Context r11, java.util.List<com.tencent.feedback.proguard.C4135p> r12) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m634d(android.content.Context, java.util.List):int");
    }

    /* renamed from: a */
    public static int m646a(Context context, Long[] lArr) {
        C4134o c4134o;
        SQLiteDatabase sQLiteDatabase = null;
        C4073e.m1015b("rqdp{  AnalyticsDAO.deleteList() start!}", new Object[0]);
        if (context == null) {
            C4073e.m1012d("rqdp{  deleteList() have null args!}", new Object[0]);
            return -1;
        } else if (lArr == null || lArr.length <= 0) {
            return 0;
        } else {
            try {
                c4134o = new C4134o(context);
            } catch (Throwable th) {
                th = th;
                c4134o = null;
            }
            try {
                sQLiteDatabase = c4134o.getWritableDatabase();
                StringBuffer stringBuffer = new StringBuffer();
                int i = 0;
                for (int i2 = 0; i2 < lArr.length; i2++) {
                    stringBuffer.append(" or  _id = " + lArr[i2].longValue());
                    if (i2 > 0 && i2 % 50 == 0) {
                        C4073e.m1015b("rqdp{  current }" + i2, new Object[0]);
                        i += sQLiteDatabase.delete("ao", stringBuffer.substring(4), null);
                        stringBuffer.setLength(0);
                        C4073e.m1015b("rqdp{  current deleteNum: }" + i, new Object[0]);
                    }
                }
                if (stringBuffer.length() > 0) {
                    i += sQLiteDatabase.delete("ao", stringBuffer.substring(4), null);
                    stringBuffer.setLength(0);
                }
                C4073e.m1017a("rqdp{  total deleteNum: }" + i, new Object[0]);
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                c4134o.close();
                C4073e.m1015b("rqdp{  AnalyticsDAO.deleteList() end!}", new Object[0]);
                return i;
            } catch (Throwable th2) {
                th = th2;
                try {
                    C4073e.m1012d(th.getMessage(), new Object[0]);
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    if (c4134o != null) {
                        c4134o.close();
                    }
                    C4073e.m1015b("rqdp{  AnalyticsDAO.deleteList() end!}", new Object[0]);
                    return -1;
                } catch (Throwable th3) {
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    if (c4134o != null) {
                        c4134o.close();
                    }
                    C4073e.m1015b("rqdp{  AnalyticsDAO.deleteList() end!}", new Object[0]);
                    throw th3;
                }
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static int m654a(android.content.Context r11, int r12) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m654a(android.content.Context, int):int");
    }

    /* renamed from: b */
    protected static C4135p m639b(Cursor cursor) {
        if (cursor == null || cursor.isBeforeFirst() || cursor.isAfterLast()) {
            return null;
        }
        C4135p c4135p = new C4135p();
        try {
            c4135p.m628a(cursor.getString(cursor.getColumnIndex("_n")));
            c4135p.m625b(cursor.getString(cursor.getColumnIndex("_sa")));
            c4135p.m629a(cursor.getInt(cursor.getColumnIndex("_id")));
            c4135p.m630a(cursor.getInt(cursor.getColumnIndex("_t")));
            c4135p.m623c(cursor.getLong(cursor.getColumnIndex("_sz")));
            c4135p.m626b(cursor.getLong(cursor.getColumnIndex("_ut")));
            c4135p.m622c(cursor.getString(cursor.getColumnIndex("_ac")));
            return c4135p;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d("rqdp{  Error:getFileBean fail!}", new Object[0]);
            C4073e.m1012d("rqdp{  Error: getFileBean fail!}", new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    protected static List<C4132m> m645a(Cursor cursor) {
        C4073e.m1015b("rqdp{  in AnalyticsDAO.paserCursor() start}", new Object[0]);
        if (cursor == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int columnIndex = cursor.getColumnIndex("_id");
        int columnIndex2 = cursor.getColumnIndex("_prority");
        int columnIndex3 = cursor.getColumnIndex("_time");
        int columnIndex4 = cursor.getColumnIndex("_type");
        int columnIndex5 = cursor.getColumnIndex("_datas");
        int columnIndex6 = cursor.getColumnIndex("_length");
        int columnIndex7 = cursor.getColumnIndex("_key");
        int columnIndex8 = cursor.getColumnIndex("_count");
        int columnIndex9 = cursor.getColumnIndex("_upCounts");
        int columnIndex10 = cursor.getColumnIndex("_state");
        while (cursor.moveToNext()) {
            C4132m c4132m = new C4132m();
            c4132m.f4746a = cursor.getLong(columnIndex);
            c4132m.f4750e = cursor.getBlob(columnIndex5);
            c4132m.f4748c = cursor.getInt(columnIndex2);
            c4132m.f4749d = cursor.getLong(columnIndex3);
            c4132m.f4747b = cursor.getInt(columnIndex4);
            c4132m.f4751f = cursor.getLong(columnIndex6);
            c4132m.f4752g = cursor.getString(columnIndex7);
            c4132m.m656a(cursor.getInt(columnIndex8));
            c4132m.m641b(cursor.getInt(columnIndex9));
            c4132m.m637c(cursor.getInt(columnIndex10));
            arrayList.add(c4132m);
        }
        C4073e.m1015b("rqdp{  in AnalyticsDAO.paserCursor() end}", new Object[0]);
        return arrayList;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static int m647a(android.content.Context r14, int[] r15, long r16, long r18, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m647a(android.content.Context, int[], long, long, java.lang.String):int");
    }

    /* renamed from: b */
    public static boolean m640b(Context context, List<C4132m> list) {
        C4134o c4134o;
        SQLiteDatabase sQLiteDatabase = null;
        C4073e.m1015b("rqdp{  insertOrUpdate alyticsBeans start!}", new Object[0]);
        if (context == null || list == null || list.size() <= 0) {
            C4073e.m1012d("rqdp{  context == null || list == null|| list.size() <= 0 ? pls check!}", new Object[0]);
            return false;
        }
        try {
            c4134o = new C4134o(context);
        } catch (Throwable th) {
            th = th;
            c4134o = null;
        }
        try {
            sQLiteDatabase = c4134o.getWritableDatabase();
            for (C4132m c4132m : list) {
                ContentValues m644a = m644a(c4132m);
                if (m644a == null) {
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    c4134o.close();
                    C4073e.m1015b("rqdp{  insertOrUpdate alyticsBeans end}", new Object[0]);
                    return false;
                }
                long replace = sQLiteDatabase.replace("ao", "_id", m644a);
                if (replace < 0) {
                    C4073e.m1012d("rqdp{  insertOrUpdate alyticsBeans failure! return}", new Object[0]);
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    c4134o.close();
                    C4073e.m1015b("rqdp{  insertOrUpdate alyticsBeans end}", new Object[0]);
                    return false;
                }
                C4073e.m1015b("rqdp{  result id:}" + replace, new Object[0]);
                c4132m.f4746a = replace;
            }
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            c4134o.close();
            C4073e.m1015b("rqdp{  insertOrUpdate alyticsBeans end}", new Object[0]);
            return true;
        } catch (Throwable th2) {
            th = th2;
            try {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                if (c4134o != null) {
                    c4134o.close();
                }
                C4073e.m1015b("rqdp{  insertOrUpdate alyticsBeans end}", new Object[0]);
                return false;
            } catch (Throwable th3) {
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                if (c4134o != null) {
                    c4134o.close();
                }
                C4073e.m1015b("rqdp{  insertOrUpdate alyticsBeans end}", new Object[0]);
                throw th3;
            }
        }
    }

    /* renamed from: a */
    public static ContentValues m644a(C4132m c4132m) {
        ContentValues contentValues = new ContentValues();
        if (c4132m.f4746a > 0) {
            contentValues.put("_id", Long.valueOf(c4132m.f4746a));
        }
        contentValues.put("_prority", Integer.valueOf(c4132m.f4748c));
        contentValues.put("_time", Long.valueOf(c4132m.f4749d));
        contentValues.put("_type", Integer.valueOf(c4132m.f4747b));
        contentValues.put("_datas", c4132m.f4750e);
        contentValues.put("_length", Long.valueOf(c4132m.f4751f));
        contentValues.put("_key", c4132m.f4752g);
        contentValues.put("_count", Integer.valueOf(c4132m.m638c()));
        contentValues.put("_upCounts", Integer.valueOf(c4132m.m635d()));
        contentValues.put("_state", Integer.valueOf(c4132m.m633e()));
        return contentValues;
    }

    /* renamed from: a */
    public static List<C4132m> m651a(Context context, int[] iArr, int i, int i2, long j, int i3, String str, int i4, int i5, int i6, int i7, long j2, long j3) {
        return m650a(context, iArr, -1, -1, j, i3, str, -1, -1, -1, -1, -1L, Long.MAX_VALUE, -1);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    public static java.util.List<com.tencent.feedback.proguard.C4132m> m650a(android.content.Context r18, int[] r19, int r20, int r21, long r22, int r24, java.lang.String r25, int r26, int r27, int r28, int r29, long r30, long r32, int r34) {
        /*
            Method dump skipped, instructions count: 1372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.proguard.C4132m.m650a(android.content.Context, int[], int, int, long, int, java.lang.String, int, int, int, int, long, long, int):java.util.List");
    }
}
