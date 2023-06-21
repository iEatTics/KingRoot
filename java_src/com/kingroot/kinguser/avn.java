package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class avn {
    public List<String> aTP;
    public List<String> aTQ;
    public String aTR;
    public int aTS = 0;
    public String adZ;

    /* renamed from: jv */
    public static List<String> m8802jv(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split("\\;")) {
            arrayList.add(str2);
        }
        return arrayList;
    }

    /* renamed from: e */
    public static String m8804e(List<String> list, int i) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (String str : list) {
            if (i2 > 0) {
                sb.append("; ");
            }
            sb.append(str);
            int i3 = i2 + 1;
            if (i3 >= 4 && i != -1) {
                break;
            }
            i2 = i3;
        }
        String sb2 = sb.toString();
        sb.delete(0, sb.length());
        return sb2;
    }

    /* renamed from: f */
    public static String m8803f(List<String> list, int i) {
        if (list == null || list.size() == 0) {
            return "";
        }
        int i2 = 0;
        String str = "<html> <body> ";
        Iterator<String> it = list.iterator();
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (i3 > 0) {
                str = str + "<br>";
            }
            str = str + "· " + next;
            i2 = i3 + 1;
            if (i2 >= i && i != -1) {
                break;
            }
        }
        return str + " </body> </html>";
    }
}
