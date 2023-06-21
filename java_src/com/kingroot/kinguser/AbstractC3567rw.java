package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.rw */
/* loaded from: classes.dex */
public abstract class AbstractC3567rw {

    /* renamed from: Go */
    private SQLiteOpenHelper f3503Go;

    /* renamed from: com.kingroot.kinguser.rw$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3568a {
        /* renamed from: c */
        void mo1620c(Cursor cursor);
    }

    /* renamed from: com.kingroot.kinguser.rw$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3569b {
        /* renamed from: b */
        void mo2301b(SQLiteDatabase sQLiteDatabase);
    }

    /* renamed from: H */
    protected abstract SQLiteOpenHelper mo2307H(Context context);

    public AbstractC3567rw(Context context) {
        this.f3503Go = mo2307H(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public boolean m2311a(InterfaceC3569b interfaceC3569b) {
        if (interfaceC3569b == null) {
            return false;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = this.f3503Go.getWritableDatabase();
            sQLiteDatabase.beginTransaction();
            interfaceC3569b.mo2301b(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.close();
                } catch (Throwable th2) {
                    return true;
                }
            }
            this.f3503Go.close();
            return true;
        } catch (Throwable th3) {
            try {
                throw new C3580sd(th3);
            } catch (Throwable th4) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th5) {
                }
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.close();
                    } catch (Throwable th6) {
                        throw th4;
                    }
                }
                this.f3503Go.close();
                throw th4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long insert(String str, String str2, ContentValues contentValues) {
        if (TextUtils.isEmpty(str) || contentValues == null || contentValues.size() < 1) {
            return -1L;
        }
        try {
            long insert = this.f3503Go.getWritableDatabase().insert(str, str2, contentValues);
            if (insert < 0) {
                throw new RuntimeException("insert return " + insert + " tableName " + str + " values " + contentValues.toString());
            }
            return insert;
        } catch (Throwable th) {
            throw new C3578sb(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int delete(String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return this.f3503Go.getWritableDatabase().delete(str, str2, strArr);
        } catch (Throwable th) {
            throw new C3575rz(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m2310a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, InterfaceC3568a interfaceC3568a) {
        Cursor cursor;
        try {
            cursor = this.f3503Go.getReadableDatabase().query(str, strArr, str2, strArr2, str3, str4, str5);
            if (interfaceC3568a != null) {
                try {
                    interfaceC3568a.mo1620c(cursor);
                } catch (Throwable th) {
                    th = th;
                    try {
                        throw new C3579sc(th);
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (Throwable th3) {
                            }
                        }
                        throw th2;
                    }
                }
            }
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable th4) {
                }
            }
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str) || contentValues == null || contentValues.size() < 1) {
            return -1;
        }
        try {
            return this.f3503Go.getWritableDatabase().update(str, contentValues, str2, strArr);
        } catch (Throwable th) {
            throw new C3581se(th);
        }
    }
}
