package com.kingroot.kinguser;

import android.content.SharedPreferences;
import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class afz {

    /* renamed from: Mt */
    private SharedPreferences f1415Mt;
    private SharedPreferences.Editor ajz;

    private afz() {
        this.f1415Mt = null;
        this.ajz = null;
        m12006vH();
    }

    /* renamed from: com.kingroot.kinguser.afz$a */
    /* loaded from: classes.dex */
    static class C0837a {
        private static final afz ajA = new afz();
    }

    /* renamed from: vG */
    public static afz m12007vG() {
        return C0837a.ajA;
    }

    /* renamed from: vH */
    private void m12006vH() {
        this.f1415Mt = (SharedPreferences) C3948zd.m1327k(C3566rv.m2313i(KApplication.m13453ge(), "KR_ad_file"));
        this.ajz = (SharedPreferences.Editor) C3948zd.m1327k(this.f1415Mt.edit());
    }

    /* renamed from: fl */
    public void m12009fl(String str) {
        String str2 = "VER:_20170511_02:12:17.629" + str;
        this.ajz.putInt(str2, this.f1415Mt.getInt(str2, 0) + 1).commit();
    }

    /* renamed from: fm */
    public int m12008fm(String str) {
        return this.f1415Mt.getInt("VER:_20170511_02:12:17.629" + str, 0);
    }

    public void clearAll() {
        this.ajz.clear();
        this.ajz.commit();
    }
}
