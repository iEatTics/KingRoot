package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import com.kingroot.kinguser.AbstractC3789vm;
import com.kingroot.master.app.KUApplication;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bam {
    private static final cce<bam> sInstance = new cce<bam>() { // from class: com.kingroot.kinguser.bam.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: VD */
        public bam create() {
            return new bam();
        }
    };
    private final Object avz;
    protected Context mContext;

    /* renamed from: VA */
    public static bam m7909VA() {
        return sInstance.get();
    }

    private bam() {
        this.avz = new Object();
        this.mContext = KUApplication.m13453ge();
    }

    /* renamed from: VB */
    private SharedPreferences m7908VB() {
        AbstractC3789vm.SharedPreferencesC3791b sharedPreferencesC3791b;
        synchronized (this.avz) {
            sharedPreferencesC3791b = new AbstractC3789vm.SharedPreferencesC3791b(C3566rv.m2313i(this.mContext, "CTP_ReportData_Common"));
        }
        return sharedPreferencesC3791b;
    }

    /* renamed from: VC */
    public Map<String, String> m7907VC() {
        Map all;
        synchronized (this.avz) {
            all = m7908VB().getAll();
        }
        return all;
    }

    /* renamed from: aI */
    public void m7906aI(String str, String str2) {
        synchronized (this.avz) {
            m7908VB().edit().putString(str, str2).commit();
        }
    }

    /* renamed from: kl */
    public String m7905kl(String str) {
        String string;
        synchronized (this.avz) {
            string = m7908VB().getString(str, "");
        }
        return string;
    }
}
