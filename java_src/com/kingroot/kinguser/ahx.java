package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahx implements ahp {
    private static final String[] arh = {"_id", "class"};

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        Cursor cursor;
        Cursor cursor2;
        if (i > 99) {
            i = 99;
        }
        Uri parse = Uri.parse("content://com.sec.badge/apps?notify=true");
        ContentResolver contentResolver = context.getContentResolver();
        try {
            cursor = contentResolver.query(parse, arh, "package=?", new String[]{componentName.getPackageName()}, null);
        } catch (Exception e) {
            cursor2 = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            if (cursor != null) {
                String className = componentName.getClassName();
                boolean z = false;
                while (cursor.moveToNext()) {
                    contentResolver.update(parse, m11706a(componentName, i, false), "_id=?", new String[]{String.valueOf(cursor.getInt(0))});
                    if (className.equals(cursor.getString(cursor.getColumnIndex("class")))) {
                        z = true;
                    }
                }
                if (!z) {
                    contentResolver.insert(parse, m11706a(componentName, i, true));
                }
            } else {
                new aht().mo11678a(context, componentName, i);
            }
            aho.m11709e(cursor);
        } catch (Exception e2) {
            cursor2 = cursor;
            try {
                new aht().mo11678a(context, componentName, i);
                aho.m11709e(cursor2);
            } catch (Throwable th2) {
                cursor = cursor2;
                th = th2;
                aho.m11709e(cursor);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            aho.m11709e(cursor);
            throw th;
        }
    }

    /* renamed from: a */
    private ContentValues m11706a(ComponentName componentName, int i, boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("package", componentName.getPackageName());
            contentValues.put("class", componentName.getClassName());
        }
        contentValues.put("badgecount", Integer.valueOf(i));
        return contentValues;
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.sec.android.app.launcher", "com.sec.android.app.twlauncher");
    }
}
