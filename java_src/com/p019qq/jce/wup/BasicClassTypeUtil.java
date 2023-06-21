package com.p019qq.jce.wup;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.qq.jce.wup.BasicClassTypeUtil */
/* loaded from: classes.dex */
public class BasicClassTypeUtil {
    /* renamed from: a */
    private static void m1164a(ArrayList<String> arrayList, String str) {
        int length = str.length();
        while (str.charAt(length - 1) == '>' && length - 1 != 0) {
        }
        arrayList.add(0, uni2JavaType(str.substring(0, length)));
    }

    public static ArrayList<String> getTypeList(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        int i = 0;
        int indexOf = str.indexOf("<");
        while (i < indexOf) {
            m1164a(arrayList, str.substring(i, indexOf));
            int i2 = indexOf + 1;
            indexOf = str.indexOf("<", i2);
            int indexOf2 = str.indexOf(",", i2);
            if (indexOf == -1) {
                indexOf = indexOf2;
            }
            if (indexOf2 == -1 || indexOf2 >= indexOf) {
                i = i2;
            } else {
                indexOf = indexOf2;
                i = i2;
            }
        }
        m1164a(arrayList, str.substring(i, str.length()));
        return arrayList;
    }

    public static void main(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(MethodReflectParams.CHAR);
        arrayList.add("list<char>");
        arrayList.add("list<list<char>>");
        arrayList.add("map<short,string>");
        arrayList.add("map<double,map<float,list<bool>>>");
        arrayList.add("map<int64,list<Test.UserInfo>>");
        arrayList.add("map<short,Test.FriendInfo>");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ArrayList<String> typeList = getTypeList((String) it.next());
            Iterator<String> it2 = typeList.iterator();
            while (it2.hasNext()) {
                System.out.println(it2.next());
            }
            Collections.reverse(typeList);
            System.out.println("-------------finished " + transTypeList(typeList));
        }
    }

    public static String transTypeList(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, java2UniType(arrayList.get(i)));
        }
        Collections.reverse(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str = arrayList.get(i2);
            if (str.equals("list")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, String.valueOf(arrayList.get(0)) + ">");
            } else if (str.equals("map")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1) + ",");
                arrayList.set(0, String.valueOf(arrayList.get(0)) + ">");
            } else if (str.equals("Array")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, String.valueOf(arrayList.get(0)) + ">");
            }
        }
        Collections.reverse(arrayList);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    public static Object createClassByUni(String str) {
        Iterator<String> it = getTypeList(str).iterator();
        Object obj = null;
        Object obj2 = null;
        Object obj3 = null;
        while (it.hasNext()) {
            obj = createClassByName(it.next());
            if (obj instanceof String) {
                if ("Array".equals((String) obj)) {
                    if (obj3 == null) {
                        obj = Array.newInstance(Byte.class, 0);
                    }
                } else if (!"?".equals((String) obj)) {
                    if (obj3 == null) {
                        obj3 = obj;
                    } else {
                        obj2 = obj3;
                        obj3 = obj;
                    }
                }
            } else if (obj instanceof List) {
                if (obj3 != null && (obj3 instanceof Byte)) {
                    obj = Array.newInstance(Byte.class, 1);
                    Array.set(obj, 0, obj3);
                } else {
                    if (obj3 != null) {
                        ((List) obj).add(obj3);
                    }
                    obj3 = null;
                }
            } else if (obj instanceof Map) {
                if ((obj2 != null) & (obj3 != null)) {
                    ((Map) obj).put(obj3, obj2);
                }
                obj2 = null;
                obj3 = null;
            } else if (obj3 == null) {
                obj3 = obj;
            } else {
                obj2 = obj3;
                obj3 = obj;
            }
        }
        return obj;
    }

    public static Object createClassByName(String str) {
        if (str.equals("java.lang.Integer")) {
            return 0;
        }
        if (str.equals("java.lang.Boolean")) {
            return false;
        }
        if (str.equals("java.lang.Byte")) {
            return (byte) 0;
        }
        if (str.equals("java.lang.Double")) {
            return Double.valueOf(0.0d);
        }
        if (str.equals("java.lang.Float")) {
            return Float.valueOf(0.0f);
        }
        if (str.equals("java.lang.Long")) {
            return 0L;
        }
        if (str.equals("java.lang.Short")) {
            return (short) 0;
        }
        if (str.equals("java.lang.Character")) {
            throw new IllegalArgumentException("can not support java.lang.Character");
        }
        if (str.equals("java.lang.String")) {
            return "";
        }
        if (str.equals("java.util.List")) {
            return new ArrayList();
        }
        if (str.equals("java.util.Map")) {
            return new HashMap();
        }
        if (str.equals("Array")) {
            return "Array";
        }
        if (!str.equals("?")) {
            try {
                return Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
                throw new ObjectCreateException(e);
            }
        }
        return str;
    }

    public static String java2UniType(String str) {
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

    public static String uni2JavaType(String str) {
        if (str.equals("int32")) {
            return "java.lang.Integer";
        }
        if (str.equals("bool")) {
            return "java.lang.Boolean";
        }
        if (str.equals(MethodReflectParams.CHAR)) {
            return "java.lang.Byte";
        }
        if (str.equals(MethodReflectParams.DOUBLE)) {
            return "java.lang.Double";
        }
        if (str.equals(MethodReflectParams.FLOAT)) {
            return "java.lang.Float";
        }
        if (str.equals("int64")) {
            return "java.lang.Long";
        }
        if (str.equals(MethodReflectParams.SHORT)) {
            return "java.lang.Short";
        }
        if (str.equals("string")) {
            return "java.lang.String";
        }
        if (str.equals("list")) {
            return "java.util.List";
        }
        if (str.equals("map")) {
            return "java.util.Map";
        }
        return str;
    }

    public static boolean isBasicType(String str) {
        return str.equals(MethodReflectParams.INT) || str.equals(MethodReflectParams.BOOLEAN) || str.equals(MethodReflectParams.BYTE) || str.equals(MethodReflectParams.DOUBLE) || str.equals(MethodReflectParams.FLOAT) || str.equals(MethodReflectParams.LONG) || str.equals(MethodReflectParams.SHORT) || str.equals(MethodReflectParams.CHAR) || str.equals("Integer") || str.equals("Boolean") || str.equals("Byte") || str.equals("Double") || str.equals("Float") || str.equals("Long") || str.equals("Short") || str.equals("Char");
    }

    public static String getClassTransName(String str) {
        if (str.equals(MethodReflectParams.INT)) {
            return "Integer";
        }
        if (str.equals(MethodReflectParams.BOOLEAN)) {
            return "Boolean";
        }
        if (str.equals(MethodReflectParams.BYTE)) {
            return "Byte";
        }
        if (str.equals(MethodReflectParams.DOUBLE)) {
            return "Double";
        }
        if (str.equals(MethodReflectParams.FLOAT)) {
            return "Float";
        }
        if (str.equals(MethodReflectParams.LONG)) {
            return "Long";
        }
        if (str.equals(MethodReflectParams.SHORT)) {
            return "Short";
        }
        if (str.equals(MethodReflectParams.CHAR)) {
            return "Character";
        }
        return str;
    }

    public static String getVariableInit(String str, String str2) {
        if (str2.equals(MethodReflectParams.INT)) {
            return String.valueOf(str2) + " " + str + "=0 ;\n";
        }
        if (str2.equals(MethodReflectParams.BOOLEAN)) {
            return String.valueOf(str2) + " " + str + "=false ;\n";
        }
        if (str2.equals(MethodReflectParams.BYTE)) {
            return String.valueOf(str2) + " " + str + " ;\n";
        }
        if (str2.equals(MethodReflectParams.DOUBLE)) {
            return String.valueOf(str2) + " " + str + "=0 ;\n";
        }
        if (str2.equals(MethodReflectParams.FLOAT)) {
            return String.valueOf(str2) + " " + str + "=0 ;\n";
        }
        if (str2.equals(MethodReflectParams.LONG)) {
            return String.valueOf(str2) + " " + str + "=0 ;\n";
        }
        if (str2.equals(MethodReflectParams.SHORT)) {
            return String.valueOf(str2) + " " + str + "=0 ;\n";
        }
        if (str2.equals(MethodReflectParams.CHAR)) {
            return String.valueOf(str2) + " " + str + " ;\n";
        }
        return String.valueOf(str2) + " " + str + " = null ;\n";
    }
}
