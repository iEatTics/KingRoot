package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class akm {
    protected final SharedPreferences avA;
    protected final ako avB;

    @SuppressLint({"CommitPrefEdits"})
    public akm(String str) {
        this.avA = C3566rv.m2313i(KUApplication.m13453ge(), str);
        this.avB = new ako(this.avA.edit());
    }
}
