package com.kingroot.kinguser;

import android.text.TextUtils;
/* loaded from: classes.dex */
public abstract class avb {
    protected String aTk;

    /* renamed from: j */
    public abstract int mo8834j(abc abcVar);

    /* renamed from: jo */
    public static boolean m8870jo(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("ku");
    }

    public void parse(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split = str.split(":");
                if (split.length >= 2) {
                    this.aTk = split[1];
                    for (int i = 2; i < split.length; i++) {
                        this.aTk += ":" + split[i];
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
