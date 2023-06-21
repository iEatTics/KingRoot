package com.kingroot.kinguser;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* renamed from: com.kingroot.kinguser.mk */
/* loaded from: classes.dex */
public class C3311mk {
    /* renamed from: f */
    public static String m3071f(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, m3072bt(arrayList.get(i)));
        }
        Collections.reverse(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str = arrayList.get(i2);
            if (str.equals("list")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, arrayList.get(0) + ">");
            } else if (str.equals("map")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1) + ",");
                arrayList.set(0, arrayList.get(0) + ">");
            } else if (str.equals("Array")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, arrayList.get(0) + ">");
            }
        }
        Collections.reverse(arrayList);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    /* renamed from: bt */
    public static String m3072bt(String str) {
        if (str.equals("java.lang.Integer") || str.equals(MethodReflectParams.INT)) {
            return "int32";
        }
        if (str.equals("java.lang.Boolean") || str.equals(MethodReflectParams.BOOLEAN)) {
            return "bool";
        }
        if (str.equals("java.lang.Byte") || str.equals(MethodReflectParams.BYTE)) {
            return MethodReflectParams.CHAR;
        }
        if (str.equals("java.lang.Double") || str.equals(MethodReflectParams.DOUBLE)) {
            return MethodReflectParams.DOUBLE;
        }
        if (str.equals("java.lang.Float") || str.equals(MethodReflectParams.FLOAT)) {
            return MethodReflectParams.FLOAT;
        }
        if (str.equals("java.lang.Long") || str.equals(MethodReflectParams.LONG)) {
            return "int64";
        }
        if (str.equals("java.lang.Short") || str.equals(MethodReflectParams.SHORT)) {
            return MethodReflectParams.SHORT;
        }
        if (str.equals("java.lang.Character")) {
            throw new IllegalArgumentException("can not support java.lang.Character");
        }
        if (str.equals("java.lang.String")) {
            return "string";
        }
        if (str.equals("java.util.List")) {
            return "list";
        }
        if (str.equals("java.util.Map")) {
            return "map";
        }
        return str;
    }
}
