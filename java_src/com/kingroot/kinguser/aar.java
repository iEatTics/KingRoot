package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCommand;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aar {

    /* renamed from: XJ */
    public static final String f1248XJ = AbstractC3976zt.get("cdpm7");

    /* renamed from: XK */
    private static final String f1249XK = AbstractC3976zt.get("cdpm8");

    /* renamed from: XL */
    private static final String f1250XL = AbstractC3976zt.get("cdpm9");

    /* renamed from: XM */
    private static final String f1251XM = AbstractC3976zt.get("cdpm10");

    /* renamed from: XN */
    private static final String f1252XN = AbstractC3976zt.get("cdpm11");

    /* renamed from: pQ */
    public static String m12946pQ() {
        return aba.m12855qF() + " " + f1248XJ;
    }

    /* renamed from: b */
    public static String m12948b(String str, String str2, boolean z) {
        if (str == null) {
            str = aba.m12855qF() + " " + f1248XJ;
        }
        return z ? String.format(f1250XL, str, str2) : String.format(f1249XK, str, str2);
    }

    /* renamed from: q */
    private static String m12945q(String str, boolean z) {
        String str2 = aba.m12855qF() + " " + f1248XJ;
        return z ? String.format(f1252XN, str2, str) : String.format(f1251XM, str2, str);
    }

    /* renamed from: r */
    public static List<String> m12944r(String str, boolean z) {
        File file;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            if (!z && (file = new File(str)) != null && file.exists() && file.isFile()) {
                String parent = file.getParent();
                if (!TextUtils.isEmpty(parent) && !parent.equalsIgnoreCase("/")) {
                    arrayList.add(m12945q(parent, z));
                }
            }
            arrayList.add(m12948b(null, str, z));
        }
        return arrayList;
    }

    /* renamed from: c */
    public static List<VTCommand> m12947c(String str, String str2, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (String str3 : m12944r(str2, z)) {
            arrayList.add(new VTCommand(str, str3));
        }
        return arrayList;
    }
}
