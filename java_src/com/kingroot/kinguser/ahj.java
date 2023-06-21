package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteOpenHelper;
import com.kingroot.kinguser.AbstractC3567rw;
import com.kingroot.kinguser.AbstractC3570rx;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class ahj extends AbstractC3567rw {
    private final Object apU;

    public ahj(Context context) {
        super(context);
        this.apU = new Object();
    }

    @Override // com.kingroot.kinguser.AbstractC3567rw
    /* renamed from: H */
    protected SQLiteOpenHelper mo2307H(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AbstractC3570rx.C3571a("ai_log", AntiInjectLogModel.C0953a.COLUMNS, AntiInjectLogModel.C0953a.f1441GK));
        return new C0943a(context, "ai_info", 1, arrayList);
    }

    /* renamed from: com.kingroot.kinguser.ahj$a */
    /* loaded from: classes.dex */
    static class C0943a extends AbstractC3570rx {

        /* renamed from: Gw */
        private List<AbstractC3570rx.C3571a> f1437Gw;

        public C0943a(Context context, String str, int i, List<AbstractC3570rx.C3571a> list) {
            super(context, str, i);
            this.f1437Gw = new ArrayList();
            this.f1437Gw.addAll(list);
        }

        @Override // com.kingroot.kinguser.AbstractC3570rx
        /* renamed from: jd */
        protected List<AbstractC3570rx.C3571a> mo2300jd() {
            return this.f1437Gw;
        }
    }

    /* renamed from: a */
    public void m11747a(String str, ContentValues contentValues) {
        synchronized (this.apU) {
            try {
                insert("ai_log", str, contentValues);
            } catch (C3578sb e) {
            }
        }
    }

    /* renamed from: dt */
    public void m11746dt(int i) {
        synchronized (this.apU) {
            try {
                delete("ai_log", "_id = ?", new String[]{"" + i});
            } catch (C3575rz e) {
            }
        }
    }

    public List<AntiInjectLogModel> getAllLogs() {
        final ArrayList arrayList;
        synchronized (this.apU) {
            arrayList = new ArrayList();
            try {
                m2310a("ai_log", null, null, null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.ahj.1
                    @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
                    /* renamed from: c */
                    public void mo1620c(Cursor cursor) {
                        AntiInjectLogModel.m11704b(arrayList, cursor);
                    }
                });
            } catch (C3579sc e) {
            }
        }
        return arrayList;
    }
}
