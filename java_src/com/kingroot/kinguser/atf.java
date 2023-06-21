package com.kingroot.kinguser;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class atf implements ate {
    private static final cce<atf> sInstance = new cce<atf>() { // from class: com.kingroot.kinguser.atf.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: OW */
        public atf create() {
            return new atf();
        }
    };
    private SharedPreferences aNM;
    private SharedPreferences aNN;
    private SharedPreferences avA;

    private atf() {
        this.aNM = C3566rv.m2313i(KUApplication.m13453ge(), "game_start_time_record ");
        this.aNN = C3566rv.m2313i(KUApplication.m13453ge(), "game_show_guide_pkg");
        this.avA = C3566rv.m2313i(KUApplication.m13453ge(), "game_box_setting");
    }

    /* renamed from: OV */
    public static atf m9303OV() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: d */
    public synchronized void mo9299d(List<String> list, String str) {
        if (list != null) {
            if (list.size() != 0) {
                List<String> m9291jd = m9291jd(str);
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2) && !m9291jd.contains(str2)) {
                        m9291jd.add(str2);
                    }
                }
                StringBuilder sb = new StringBuilder();
                for (String str3 : m9291jd) {
                    if (!TextUtils.isEmpty(str3)) {
                        sb.append(str3).append(";");
                    }
                }
                C3566rv.m2313i(KUApplication.m13453ge(), str).edit().putString("packages", sb.toString()).commit();
            }
        }
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: e */
    public synchronized void mo9298e(List<String> list, String str) {
        if (list != null) {
            if (list.size() != 0) {
                List<String> m9291jd = m9291jd(str);
                StringBuilder sb = new StringBuilder();
                for (String str2 : m9291jd) {
                    if (!TextUtils.isEmpty(str2) && !list.contains(str2)) {
                        sb.append(str2).append(";");
                    }
                }
                C3566rv.m2313i(KUApplication.m13453ge(), str).edit().putString("packages", sb.toString()).commit();
            }
        }
    }

    /* renamed from: jd */
    private List<String> m9291jd(String str) {
        ArrayList arrayList = new ArrayList();
        String[] split = C3566rv.m2313i(KUApplication.m13453ge(), str).getString("packages", "").split(";");
        if (split != null) {
            for (String str2 : split) {
                if (!TextUtils.isEmpty(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: OH */
    public synchronized List<String> mo9306OH() {
        return m9291jd("gb_localAdded");
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: OI */
    public synchronized List<String> mo9305OI() {
        return m9291jd("gb_localDeleted");
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: av */
    public synchronized void mo9302av(String str, String str2) {
        List<String> m9291jd = m9291jd(str2);
        if (!m9291jd.contains(str)) {
            m9291jd.add(str);
            StringBuilder sb = new StringBuilder();
            for (String str3 : m9291jd) {
                if (!TextUtils.isEmpty(str3)) {
                    sb.append(str3).append(";");
                }
            }
            C3566rv.m2313i(KUApplication.m13453ge(), str2).edit().putString("packages", sb.toString()).commit();
        }
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: aw */
    public synchronized void mo9301aw(String str, String str2) {
        List<String> m9291jd = m9291jd(str2);
        StringBuilder sb = new StringBuilder();
        for (String str3 : m9291jd) {
            if (!TextUtils.isEmpty(str3) && !str3.equals(str)) {
                sb.append(str3).append(";");
            }
        }
        C3566rv.m2313i(KUApplication.m13453ge(), str2).edit().putString("packages", sb.toString()).commit();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iW */
    public synchronized void mo9297iW(String str) {
        String string = this.aNM.getString(str, "");
        if (TextUtils.isEmpty(string)) {
            this.aNM.edit().putString(str, "" + System.currentTimeMillis()).commit();
        } else {
            this.aNM.edit().putString(str, string + "|" + System.currentTimeMillis()).commit();
        }
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iX */
    public synchronized void mo9296iX(String str) {
        this.aNM.edit().putString(str, "");
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iY */
    public synchronized List<Long> mo9295iY(String str) {
        List<Long> arrayList;
        arrayList = new ArrayList<>();
        String string = this.aNM.getString(str, "");
        if (TextUtils.isEmpty(string)) {
            arrayList = Collections.emptyList();
        } else {
            String[] split = string.split("\\|");
            if (split == null) {
                arrayList = Collections.emptyList();
            } else {
                try {
                    for (String str2 : split) {
                        arrayList.add(Long.valueOf(str2));
                    }
                } catch (Exception e) {
                    arrayList = Collections.emptyList();
                }
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iZ */
    public synchronized void mo9294iZ(String str) {
        this.aNN.edit().putBoolean(str, true).apply();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: ja */
    public synchronized boolean mo9293ja(String str) {
        return this.aNN.getBoolean(str, false);
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: bW */
    public void mo9300bW(long j) {
        this.avA.edit().putLong("Last_Optimize_Memory_Time", j).apply();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: OP */
    public long mo9304OP() {
        return this.avA.getLong("Last_Optimize_Memory_Time", 0L);
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: jb */
    public synchronized void mo9292jb(String str) {
        this.aNN.edit().putBoolean(str, false).apply();
    }
}
