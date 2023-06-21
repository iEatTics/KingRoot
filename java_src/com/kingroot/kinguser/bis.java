package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteOpenHelper;
import com.kingroot.kinguser.AbstractC3567rw;
import com.kingroot.kinguser.AbstractC3570rx;
import com.kingroot.kinguser.xmod.dao.ExploitLog;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bis extends AbstractC3567rw {
    private final Object apU;

    /* renamed from: com.kingroot.kinguser.bis$b */
    /* loaded from: classes.dex */
    public static class C2347b {
        public static final String[] COLUMNS = {"aa", "ab", "ac", "ad"};

        /* renamed from: GK */
        public static final String[] f1688GK = {MethodReflectParams.LONG, "integer", "text", "text"};
    }

    public bis(Context context) {
        super(context);
        this.apU = new Object();
    }

    @Override // com.kingroot.kinguser.AbstractC3567rw
    /* renamed from: H */
    protected SQLiteOpenHelper mo2307H(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AbstractC3570rx.C3571a("exploit_log", C2347b.COLUMNS, C2347b.f1688GK));
        return new C2346a(context, "xmod_db", 1, arrayList);
    }

    /* renamed from: com.kingroot.kinguser.bis$a */
    /* loaded from: classes.dex */
    static class C2346a extends AbstractC3570rx {

        /* renamed from: Gw */
        private List<AbstractC3570rx.C3571a> f1687Gw;

        public C2346a(Context context, String str, int i, List<AbstractC3570rx.C3571a> list) {
            super(context, str, i);
            this.f1687Gw = new ArrayList();
            this.f1687Gw.addAll(list);
        }

        @Override // com.kingroot.kinguser.AbstractC3570rx
        /* renamed from: jd */
        protected List<AbstractC3570rx.C3571a> mo2300jd() {
            return this.f1687Gw;
        }
    }

    /* renamed from: a */
    public void m6837a(ExploitLog exploitLog) {
        if (exploitLog != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("aa", Long.valueOf(exploitLog.mTimeStamp));
            contentValues.put("ab", Integer.valueOf(exploitLog.bux));
            contentValues.put("ac", exploitLog.mPackageName);
            contentValues.put("ad", exploitLog.akw);
            synchronized (this.apU) {
                try {
                    insert("exploit_log", null, contentValues);
                } catch (C3578sb e) {
                }
            }
        }
    }

    public List<ExploitLog> adj() {
        final ArrayList arrayList = new ArrayList();
        synchronized (this.apU) {
            try {
                m2310a("exploit_log", null, null, null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.bis.1
                    @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
                    /* renamed from: c */
                    public void mo1620c(Cursor cursor) {
                        bis.this.m6839a(cursor, arrayList);
                    }
                });
            } catch (C3579sc e) {
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6839a(Cursor cursor, List<ExploitLog> list) {
        if (cursor != null && cursor.moveToFirst()) {
            try {
                cursor.getColumnIndex("_id");
                int columnIndexOrThrow = cursor.getColumnIndexOrThrow("aa");
                int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow("ab");
                int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow("ac");
                int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow("ad");
                do {
                    try {
                        list.add(new ExploitLog(cursor.getLong(columnIndexOrThrow), cursor.getInt(columnIndexOrThrow2), cursor.getString(columnIndexOrThrow3), cursor.getString(columnIndexOrThrow4)));
                    } catch (Throwable th) {
                    }
                } while (cursor.moveToNext());
            } catch (Throwable th2) {
            }
        }
    }
}
