package com.applisto.appcloner.classes;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.applisto.appcloner.classes.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class PreferenceEditor {
    private static final String TAG = PreferenceEditor.class.getSimpleName();
    private static final String TYPE_BOOLEAN = "Boolean";
    private static final String TYPE_FLOAT = "Float";
    private static final String TYPE_INTEGER = "Integer";
    private static final String TYPE_LONG = "Long";
    private static final String TYPE_STRING = "String";
    private static final String TYPE_STRING_SET = "String set";

    public static String[] getPreferenceFiles(Context context) {
        Log.m13704i(TAG, "getPreferenceFiles; ");
        File file = new File(context.getApplicationInfo().dataDir, "shared_prefs");
        String str = TAG;
        Log.m13704i(str, "getPreferenceFiles; directory: " + file);
        if (file.exists() && file.isDirectory()) {
            String[] list = file.list();
            String str2 = TAG;
            Log.m13704i(str2, "getPreferenceFiles; files: " + Arrays.toString(list));
            if (list != null) {
                Arrays.sort(list, String.CASE_INSENSITIVE_ORDER);
                return list;
            }
        }
        return new String[0];
    }

    public static Map<String, String> getPreferences(Context context, String str) {
        String valueToString;
        String str2 = TAG;
        Log.m13704i(str2, "getPreferenceKeys; preferenceFile: " + str);
        SharedPreferences sharedPreferences = getSharedPreferences(context, str);
        HashMap hashMap = new HashMap();
        Map<String, ?> all = sharedPreferences.getAll();
        for (String str3 : all.keySet()) {
            if (str3 != null && !str3.startsWith("com.applisto.appcloner") && (valueToString = valueToString(all.get(str3))) != null) {
                hashMap.put(str3, valueToString);
            }
        }
        return hashMap;
    }

    public static void setPreference(Context context, String str, String str2, String str3) {
        String str4 = TAG;
        Log.m13704i(str4, "getPreferenceValue; preferenceFile: " + str + ", key: " + str2 + ", preference: " + str3);
        SharedPreferences.Editor edit = getSharedPreferences(context, str).edit();
        if (str3 == null) {
            edit.remove(str2);
        } else {
            String[] split = str3.split(":", 2);
            String str5 = split[0];
            String str6 = split[1];
            String str7 = TAG;
            Log.m13704i(str7, "setPreference; type: " + str5 + ", value: " + str6);
            if (TYPE_STRING.equals(str5)) {
                edit.putString(str2, str6);
            } else if (TYPE_INTEGER.equals(str5)) {
                edit.putInt(str2, Integer.parseInt(str6));
            } else if (TYPE_LONG.equals(str5)) {
                edit.putLong(str2, Long.parseLong(str6));
            } else if (TYPE_FLOAT.equals(str5)) {
                edit.putFloat(str2, Float.parseFloat(str6));
            } else if (TYPE_BOOLEAN.equals(str5)) {
                edit.putBoolean(str2, Boolean.parseBoolean(str6));
            } else if (TYPE_STRING_SET.equals(str5)) {
                edit.putStringSet(str2, new HashSet(Arrays.asList(str6.split(","))));
            }
        }
        edit.apply();
    }

    private static SharedPreferences getSharedPreferences(Context context, String str) {
        return context.getSharedPreferences(str.replace(".xml", ""), 0);
    }

    private static String valueToString(Object obj) {
        if (obj instanceof String) {
            return "String:" + obj;
        } else if (obj instanceof Integer) {
            return "Integer:" + obj;
        } else if (obj instanceof Long) {
            return "Long:" + obj;
        } else if (obj instanceof Float) {
            return "Float:" + obj;
        } else if (obj instanceof Boolean) {
            return "Boolean:" + obj;
        } else if (obj instanceof Set) {
            return "String set:" + TextUtils.join(",", (Set) obj);
        } else {
            return null;
        }
    }
}
