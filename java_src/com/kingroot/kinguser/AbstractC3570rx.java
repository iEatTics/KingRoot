package com.kingroot.kinguser;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.rx */
/* loaded from: classes.dex */
public abstract class AbstractC3570rx extends SQLiteOpenHelper {
    /* renamed from: jd */
    protected abstract List<C3571a> mo2300jd();

    public AbstractC3570rx(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            List<String> m2308jf = m2308jf();
            if (m2308jf != null && sQLiteDatabase != null) {
                for (String str : m2308jf) {
                    if (!TextUtils.isEmpty(str)) {
                        sQLiteDatabase.execSQL(str);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            List<String> m2309je = m2309je();
            if (m2309je != null && sQLiteDatabase != null) {
                for (String str : m2309je) {
                    if (!TextUtils.isEmpty(str)) {
                        sQLiteDatabase.execSQL(str);
                    }
                }
                onCreate(sQLiteDatabase);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: je */
    private List<String> m2309je() {
        try {
            List<C3571a> mo2300jd = mo2300jd();
            if (mo2300jd == null || mo2300jd.size() < 1) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (C3571a c3571a : mo2300jd) {
                if (c3571a != null && c3571a.isValid()) {
                    arrayList.add("DROP TABLE IF EXISTS " + c3571a.f3504Gp);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: jf */
    private List<String> m2308jf() {
        try {
            List<C3571a> mo2300jd = mo2300jd();
            if (mo2300jd == null || mo2300jd.size() < 1) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (C3571a c3571a : mo2300jd) {
                if (c3571a != null && c3571a.isValid()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("create table ");
                    stringBuffer.append(c3571a.f3504Gp);
                    stringBuffer.append(" (");
                    stringBuffer.append(c3571a.f3505Gq);
                    stringBuffer.append(" integer primary key autoincrement, ");
                    for (int i = 0; i < c3571a.f3506Gr.length; i++) {
                        stringBuffer.append(c3571a.f3506Gr[i]);
                        stringBuffer.append(" ");
                        stringBuffer.append(c3571a.f3507Gs[i]);
                        if (i == c3571a.f3506Gr.length - 1) {
                            stringBuffer.append(");");
                        } else {
                            stringBuffer.append(", ");
                        }
                    }
                    arrayList.add(stringBuffer.toString());
                }
            }
            return arrayList;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: com.kingroot.kinguser.rx$a */
    /* loaded from: classes.dex */
    public static class C3571a {

        /* renamed from: Gp */
        protected String f3504Gp;

        /* renamed from: Gq */
        protected String f3505Gq;

        /* renamed from: Gr */
        protected String[] f3506Gr;

        /* renamed from: Gs */
        protected String[] f3507Gs;

        public C3571a(String str, String str2, String[] strArr, String[] strArr2) {
            this.f3504Gp = "";
            this.f3505Gq = "_id";
            this.f3506Gr = null;
            this.f3507Gs = null;
            if (!TextUtils.isEmpty(str)) {
                this.f3504Gp = str;
            }
            if (!TextUtils.isEmpty(str2)) {
                this.f3505Gq = str2;
            }
            this.f3506Gr = strArr;
            this.f3507Gs = strArr2;
        }

        public C3571a(String str, String[] strArr, String[] strArr2) {
            this(str, null, strArr, strArr2);
        }

        boolean isValid() {
            return (TextUtils.isEmpty(this.f3504Gp) || TextUtils.isEmpty(this.f3505Gq) || this.f3506Gr == null || this.f3507Gs == null || this.f3506Gr.length != this.f3507Gs.length) ? false : true;
        }
    }
}
