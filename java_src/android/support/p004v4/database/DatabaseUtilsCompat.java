package android.support.p004v4.database;

import android.text.TextUtils;
/* renamed from: android.support.v4.database.DatabaseUtilsCompat */
/* loaded from: classes.dex */
public final class DatabaseUtilsCompat {
    private DatabaseUtilsCompat() {
    }

    public static String concatenateWhere(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return TextUtils.isEmpty(str2) ? str : "(" + str + ") AND (" + str2 + ")";
    }

    public static String[] appendSelectionArgs(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr.length != 0) {
            String[] strArr3 = new String[strArr.length + strArr2.length];
            System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
            System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
            return strArr3;
        }
        return strArr2;
    }
}
