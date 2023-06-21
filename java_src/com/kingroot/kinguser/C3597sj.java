package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.sj */
/* loaded from: classes.dex */
public class C3597sj extends AbstractC3639tl {
    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: jo */
    public String mo2038jo() {
        return "multi_prop";
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public boolean onCreate() {
        return true;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        AbstractC3591sf cG;
        String string;
        if (getContext() == null || TextUtils.isEmpty(str) || strArr2 == null || strArr2.length < 1 || (str3 = strArr2[0]) == null || (cG = C3596si.m2260jn().m2265cG(str)) == null || (string = cG.getString(str3)) == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"value"}, 1);
        matrixCursor.addRow(new Object[]{string});
        return matrixCursor;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: a */
    public int mo2040a(Uri uri, ContentValues[] contentValuesArr) {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (getContext() == null || TextUtils.isEmpty(str) || strArr == null || strArr.length < 2) {
            return 0;
        }
        String str2 = strArr[0];
        String str3 = strArr[1];
        AbstractC3591sf cG = C3596si.m2260jn().m2265cG(str);
        if (cG != null) {
            cG.put(str2, str3);
        }
        return 1;
    }
}
