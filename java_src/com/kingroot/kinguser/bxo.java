package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.bxv;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bxo {
    public static boolean ajH() {
        try {
            String str = System.getenv("PATH");
            if (TextUtils.isEmpty(str)) {
                String[] split = str.split(":");
                for (String str2 : split) {
                    if (new File(str2, "su").exists()) {
                        return true;
                    }
                }
            } else if (new File("/system/bin/su").exists() || new File("/system/xbin/su").exists()) {
                return true;
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static boolean ajI() {
        List<bxv.C2664a> m5216qJ = bxv.m5216qJ();
        if (bxr.m5226d(m5216qJ)) {
            return false;
        }
        ArrayList<bxn> arrayList = new ArrayList(3);
        arrayList.add(new bxq());
        if (bxx.ajL()) {
        }
        for (bxv.C2664a c2664a : m5216qJ) {
            if (c2664a != null) {
                for (bxn bxnVar : arrayList) {
                    bxnVar.mo5227a(c2664a);
                }
            }
        }
        for (bxn bxnVar2 : arrayList) {
            if (bxnVar2.ajG()) {
                return true;
            }
        }
        return false;
    }
}
