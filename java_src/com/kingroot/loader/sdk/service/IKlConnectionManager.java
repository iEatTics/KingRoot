package com.kingroot.loader.sdk.service;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import com.kingroot.loader.sdk.KlContext;
/* loaded from: classes.dex */
public interface IKlConnectionManager {
    int delete(int i, @NonNull Uri uri, String str, String[] strArr);

    IBinder getService(int i, Intent intent);

    String getType(int i, @NonNull Uri uri);

    Uri insert(int i, @NonNull Uri uri, ContentValues contentValues);

    Cursor query(int i, @NonNull Uri uri, String[] strArr, String str, String[] strArr2, String str2);

    Bundle talkWithHost(@NonNull KlContext klContext, Bundle bundle);

    Bundle talkWithPlugin(int i, Bundle bundle);

    int update(int i, @NonNull Uri uri, ContentValues contentValues, String str, String[] strArr);
}
