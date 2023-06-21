package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import cloudsdk.ext.p008kr.RootConst;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ahw implements ahp {
    @Override // com.kingroot.kinguser.ahp
    /* renamed from: a */
    public void mo11678a(Context context, ComponentName componentName, int i) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(RootConst.KEY_TAG, componentName.getPackageName() + "/" + componentName.getClassName());
            contentValues.put(RootConst.KEY_PROGRESS_COUNT, Integer.valueOf(i));
            context.getContentResolver().insert(Uri.parse("content://com.teslacoilsw.notifier/unread_count"), contentValues);
        } catch (Exception e) {
        }
    }

    @Override // com.kingroot.kinguser.ahp
    /* renamed from: xv */
    public List<String> mo11677xv() {
        return Arrays.asList("com.teslacoilsw.launcher");
    }
}
