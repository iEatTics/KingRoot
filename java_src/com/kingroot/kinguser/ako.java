package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Set;
/* loaded from: classes.dex */
public class ako implements SharedPreferences.Editor {

    /* renamed from: Lc */
    private SharedPreferences.Editor f1464Lc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ako(SharedPreferences.Editor editor) {
        this.f1464Lc = null;
        if (editor == null) {
            throw new RuntimeException("editor can not be null");
        }
        this.f1464Lc = editor;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String str, String str2) {
        this.f1464Lc.putString(str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    @TargetApi(11)
    public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
        if (Build.VERSION.SDK_INT >= 11) {
            this.f1464Lc.putStringSet(str, set);
        }
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String str, int i) {
        this.f1464Lc.putInt(str, i);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String str, long j) {
        this.f1464Lc.putLong(str, j);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String str, float f) {
        return this.f1464Lc.putFloat(str, f);
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String str, boolean z) {
        this.f1464Lc.putBoolean(str, z);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String str) {
        this.f1464Lc.remove(str);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        this.f1464Lc.clear();
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public boolean commit() {
        if (Build.VERSION.SDK_INT < 9 || !C3697uj.m2032kA()) {
            return this.f1464Lc.commit();
        }
        this.f1464Lc.apply();
        return true;
    }

    @Override // android.content.SharedPreferences.Editor
    public void apply() {
        if (Build.VERSION.SDK_INT >= 9) {
            this.f1464Lc.apply();
        }
    }
}
