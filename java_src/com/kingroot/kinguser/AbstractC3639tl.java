package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
/* renamed from: com.kingroot.kinguser.tl */
/* loaded from: classes.dex */
public abstract class AbstractC3639tl {
    private Context mContext = null;

    /* renamed from: a */
    public abstract int mo2040a(Uri uri, ContentValues[] contentValuesArr);

    public abstract int delete(Uri uri, String str, String[] strArr);

    public abstract String getType(Uri uri);

    public abstract Uri insert(Uri uri, ContentValues contentValues);

    /* renamed from: jo */
    public abstract String mo2038jo();

    public abstract boolean onCreate();

    public abstract Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2);

    public abstract int update(Uri uri, ContentValues contentValues, String str, String[] strArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContext(Context context) {
        this.mContext = context;
    }

    public Context getContext() {
        return this.mContext;
    }

    @TargetApi(11)
    public Bundle call(String str, String str2, Bundle bundle) {
        return null;
    }
}
