package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.kingroot.kinguser.AbstractC3567rw;
import com.kingroot.kinguser.AbstractC3570rx;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ry */
/* loaded from: classes.dex */
public abstract class AbstractC3572ry extends AbstractC3567rw {

    /* renamed from: Gt */
    private AbstractC3570rx.C3571a f3508Gt;

    /* renamed from: jg */
    protected abstract String mo1625jg();

    /* renamed from: jh */
    protected abstract int mo1624jh();

    /* renamed from: ji */
    protected abstract AbstractC3570rx.C3571a mo1623ji();

    public AbstractC3572ry(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3567rw
    /* renamed from: H */
    protected SQLiteOpenHelper mo2307H(Context context) {
        this.f3508Gt = mo1623ji();
        return new C3574a(context, mo1625jg(), mo1624jh(), this.f3508Gt);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public synchronized boolean m2302s(final List<ContentValues> list) {
        boolean z = false;
        synchronized (this) {
            if (list != null) {
                try {
                    z = m2311a(new AbstractC3567rw.InterfaceC3569b() { // from class: com.kingroot.kinguser.ry.1
                        @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3569b
                        /* renamed from: b */
                        public void mo2301b(SQLiteDatabase sQLiteDatabase) {
                            String str = AbstractC3572ry.this.f3508Gt != null ? AbstractC3572ry.this.f3508Gt.f3504Gp : null;
                            for (ContentValues contentValues : list) {
                                if (contentValues != null) {
                                    sQLiteDatabase.insertOrThrow(str, null, contentValues);
                                }
                            }
                        }
                    });
                } catch (C3580sd e) {
                    e.m2299jj();
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized long insert(ContentValues contentValues) {
        long j;
        synchronized (this) {
            try {
                j = super.insert(this.f3508Gt != null ? this.f3508Gt.f3504Gp : null, null, contentValues);
            } catch (C3578sb e) {
                e.m2299jj();
                j = -1;
            }
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public synchronized int m2306a(ContentValues contentValues, String str, String[] strArr) {
        int i;
        try {
            i = super.update(this.f3508Gt != null ? this.f3508Gt.f3504Gp : null, contentValues, str, strArr);
        } catch (C3581se e) {
            e.m2299jj();
            i = -1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public synchronized int m2303b(String str, String[] strArr) {
        int i;
        try {
            i = super.delete(this.f3508Gt != null ? this.f3508Gt.f3504Gp : null, str, strArr);
        } catch (C3575rz e) {
            e.m2299jj();
            i = -1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public synchronized void m2304a(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, AbstractC3567rw.InterfaceC3568a interfaceC3568a) {
        try {
            super.m2310a(this.f3508Gt != null ? this.f3508Gt.f3504Gp : null, strArr, str, strArr2, str2, str3, str4, interfaceC3568a);
        } catch (C3579sc e) {
            e.m2299jj();
        }
    }

    /* renamed from: com.kingroot.kinguser.ry$a */
    /* loaded from: classes.dex */
    class C3574a extends AbstractC3570rx {

        /* renamed from: Gw */
        private List<AbstractC3570rx.C3571a> f3512Gw;

        public C3574a(Context context, String str, int i, AbstractC3570rx.C3571a c3571a) {
            super(context, str, i);
            this.f3512Gw = new ArrayList();
            this.f3512Gw.add(c3571a);
        }

        @Override // com.kingroot.kinguser.AbstractC3570rx
        /* renamed from: jd */
        protected List<AbstractC3570rx.C3571a> mo2300jd() {
            return this.f3512Gw;
        }
    }
}
