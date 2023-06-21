package com.kingroot.kinguser;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class bjg {
    private File mFile;

    public bjg(String str) {
        this.mFile = new File(C3958zl.getFilesDir(), str);
    }

    public Object adJ() {
        if (this.mFile.exists() && this.mFile.canRead()) {
            return C3604sq.m2244u(this.mFile);
        }
        return null;
    }

    /* renamed from: t */
    public boolean m6736t(Object obj) {
        if (obj == null) {
            return false;
        }
        C3604sq.m2250a(obj, this.mFile);
        return true;
    }

    /* renamed from: u */
    public static HashMap<String, Integer> m6735u(Object obj) {
        HashMap hashMap;
        if (obj == null || ((HashMap) obj).size() == 0) {
            hashMap = new HashMap();
        } else {
            HashMap hashMap2 = null;
            for (Map.Entry entry : ((HashMap) obj).entrySet()) {
                if (entry.getValue() != null) {
                    Object value = entry.getValue();
                    if (value instanceof Boolean) {
                        if (hashMap2 == null) {
                            hashMap2 = new HashMap();
                        }
                        hashMap2.put(entry.getKey(), Integer.valueOf(((Boolean) value).booleanValue() ? 0 : 1));
                    }
                }
            }
            hashMap = hashMap2 != null ? hashMap2 : obj;
        }
        return hashMap;
    }
}
