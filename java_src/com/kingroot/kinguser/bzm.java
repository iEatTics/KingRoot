package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
/* loaded from: classes.dex */
public class bzm implements cch {

    /* renamed from: Lc */
    private SharedPreferences.Editor f2184Lc;
    private boolean bVK;
    private SharedPreferences byb;

    public bzm(Context context, String str, boolean z) {
        this.byb = context.getSharedPreferences(str, 0);
    }

    private SharedPreferences.Editor getEditor() {
        if (this.f2184Lc == null) {
            this.f2184Lc = this.byb.edit();
        }
        return this.f2184Lc;
    }

    @Override // com.kingroot.kinguser.cch
    public int getInt(String str, int i) {
        return this.byb.getInt(str, i);
    }

    @Override // com.kingroot.kinguser.cch
    public long getLong(String str, long j) {
        return this.byb.getLong(str, j);
    }

    @Override // com.kingroot.kinguser.cch
    /* renamed from: W */
    public boolean mo4962W(String str, int i) {
        SharedPreferences.Editor editor = getEditor();
        editor.putInt(str, i);
        if (this.bVK) {
            return true;
        }
        return m5122a(editor);
    }

    @Override // com.kingroot.kinguser.cch
    /* renamed from: p */
    public boolean mo4961p(String str, long j) {
        SharedPreferences.Editor editor = getEditor();
        editor.putLong(str, j);
        if (this.bVK) {
            return true;
        }
        return m5122a(editor);
    }

    /* renamed from: a */
    private boolean m5122a(SharedPreferences.Editor editor) {
        if (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId() && cgu.m4301qb() >= 9) {
            try {
                editor.getClass().getMethod("apply", new Class[0]).invoke(editor, new Object[0]);
                return true;
            } catch (Throwable th) {
                return editor.commit();
            }
        }
        return editor.commit();
    }
}
