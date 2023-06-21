package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.advance.model.SilentInstallPermInfo;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ahb {
    private static akn anw = akn.m11173BI();

    /* renamed from: a */
    public static void m11842a(final String str, final int i, final long j, final long j2) {
        anw.m11171a(new aik() { // from class: com.kingroot.kinguser.ahb.1
            @Override // com.kingroot.kinguser.aik
            /* renamed from: o */
            public void mo10675o(Object obj) {
                if (obj instanceof SQLiteDatabase) {
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    sQLiteDatabase.execSQL("delete from silent_install_perm where pkgName=?", new Object[]{str});
                    sQLiteDatabase.execSQL("insert into silent_install_perm (pkgName, rule, rtime, vtime) values (?,?,?,?)", new Object[]{str, Integer.valueOf(i), Long.valueOf(j), Long.valueOf(j2)});
                }
            }
        });
    }

    /* renamed from: fI */
    public static void m11839fI(String str) {
        anw.m11164e("delete from silent_install_perm where pkgName=?", new Object[]{str});
    }

    /* renamed from: b */
    public static void m11841b(String str, int i, long j, long j2) {
        if (!m11838fJ(str)) {
            m11842a(str, i, j, j2);
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rule", Integer.valueOf(i));
        contentValues.put("rtime", Long.valueOf(j));
        contentValues.put("vtime", Long.valueOf(j2));
        anw.m11170a("silent_install_perm", contentValues, "pkgName= '" + str + "'", null);
    }

    @NonNull
    /* renamed from: wu */
    public static HashMap<String, SilentInstallPermInfo> m11837wu() {
        HashMap<String, SilentInstallPermInfo> hashMap = new HashMap<>();
        Cursor m11165d = anw.m11165d("select * from silent_install_perm", null);
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                String string = m11165d.getString(m11165d.getColumnIndex("pkgName"));
                int i = m11165d.getInt(m11165d.getColumnIndex("rule"));
                long j = m11165d.getLong(m11165d.getColumnIndex("rtime"));
                SilentInstallPermInfo silentInstallPermInfo = new SilentInstallPermInfo();
                silentInstallPermInfo.mPackageName = string;
                silentInstallPermInfo.mRule = i;
                silentInstallPermInfo.apN = j;
                silentInstallPermInfo.mDuration = m11165d.getInt(m11165d.getColumnIndex("vtime"));
                hashMap.put(string, silentInstallPermInfo);
            }
            m11165d.close();
        }
        return hashMap;
    }

    /* renamed from: dk */
    public static HashMap<String, SilentInstallPermInfo> m11840dk(int i) {
        HashMap<String, SilentInstallPermInfo> hashMap = new HashMap<>();
        Cursor m11165d = anw.m11165d("select * from silent_install_perm where rule=?", new String[]{"" + i});
        if (m11165d != null) {
            while (m11165d.moveToNext()) {
                String string = m11165d.getString(m11165d.getColumnIndex("pkgName"));
                int i2 = m11165d.getInt(m11165d.getColumnIndex("rule"));
                long j = m11165d.getLong(m11165d.getColumnIndex("rtime"));
                SilentInstallPermInfo silentInstallPermInfo = new SilentInstallPermInfo();
                silentInstallPermInfo.mPackageName = string;
                silentInstallPermInfo.mRule = i2;
                silentInstallPermInfo.apN = j;
                silentInstallPermInfo.mDuration = m11165d.getInt(m11165d.getColumnIndex("vtime"));
                hashMap.put(string, silentInstallPermInfo);
            }
            m11165d.close();
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x002a, code lost:
        if (r2.getCount() > 0) goto L6;
     */
    /* renamed from: fJ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m11838fJ(String str) {
        Cursor cursor;
        boolean z = true;
        try {
            try {
                Cursor m11165d = anw.m11165d("select * from silent_install_perm where pkgName=?", new String[]{"" + str});
                if (m11165d != null) {
                    try {
                    } catch (Exception e) {
                        cursor = m11165d;
                        C3945za.m1338d(cursor);
                        return false;
                    }
                }
                z = false;
                C3945za.m1338d(m11165d);
                return z;
            } catch (Throwable th) {
                C3945za.m1338d(null);
                throw th;
            }
        } catch (Exception e2) {
            cursor = null;
        }
    }
}
