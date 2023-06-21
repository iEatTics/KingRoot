package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.st */
/* loaded from: classes.dex */
public class C3609st extends AbstractC3639tl {
    /* renamed from: jq */
    public static String m2229jq() {
        return C3640tm.m2160C(KApplication.m13429ip(), "multi_sp");
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: jo */
    public String mo2038jo() {
        return "multi_sp";
    }

    /* renamed from: cM */
    private String m2231cM(String str) {
        try {
            return Uri.parse("content://" + str.substring("content://multi_sp/".length())).getAuthority();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public boolean onCreate() {
        return true;
    }

    /* renamed from: d */
    private String m2230d(Object obj) {
        if (obj instanceof String) {
            return "type_string";
        }
        if (obj instanceof Integer) {
            return "type_int";
        }
        if (obj instanceof Boolean) {
            return "type_bool";
        }
        if (obj instanceof Float) {
            return "type_float";
        }
        if (!(obj instanceof Long)) {
            return "type_unknow";
        }
        return "type_long";
    }

    /* renamed from: a */
    private Object m2232a(SharedPreferences sharedPreferences, String str, String str2, String str3) {
        try {
            if ("type_string".equals(str2)) {
                return sharedPreferences.getString(str, str3);
            }
            if ("type_int".equals(str2)) {
                return Integer.valueOf(sharedPreferences.getInt(str, str3 != null ? Integer.valueOf(str3).intValue() : 0));
            } else if ("type_bool".equals(str2)) {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, str3 != null ? Boolean.valueOf(str3).booleanValue() : false));
            } else if ("type_float".equals(str2)) {
                float f = 0.0f;
                if (str3 != null) {
                    f = Float.valueOf(str3).floatValue();
                }
                return Float.valueOf(sharedPreferences.getFloat(str, f));
            } else if (!"type_long".equals(str2)) {
                return null;
            } else {
                long j = 0;
                if (str3 != null) {
                    j = Long.valueOf(str3).longValue();
                }
                return Long.valueOf(sharedPreferences.getLong(str, j));
            }
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Context context = getContext();
        if (context == null) {
            return null;
        }
        String m2231cM = m2231cM(uri.toString());
        if (TextUtils.isEmpty(m2231cM)) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(m2231cM, 0);
        if (strArr == null) {
            Map<String, ?> all = sharedPreferences.getAll();
            if (all != null) {
                MatrixCursor matrixCursor = new MatrixCursor(new String[]{"key", "value", "type"}, all.size());
                for (String str3 : all.keySet()) {
                    Object obj = all.get(str3);
                    String m2230d = m2230d(obj);
                    if ("type_bool".equals(m2230d)) {
                        Object[] objArr = new Object[3];
                        objArr[0] = str3;
                        objArr[1] = Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
                        objArr[2] = m2230d;
                        matrixCursor.addRow(objArr);
                    } else {
                        matrixCursor.addRow(new Object[]{str3, obj, m2230d});
                    }
                }
                return matrixCursor;
            }
        } else if (strArr.length > 2) {
            Object m2232a = m2232a(sharedPreferences, strArr[0], strArr[1], strArr[2]);
            MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"value"}, 1);
            if ("type_bool".equals(m2230d(m2232a))) {
                Object[] objArr2 = new Object[1];
                objArr2[0] = Integer.valueOf(((Boolean) m2232a).booleanValue() ? 1 : 0);
                matrixCursor2.addRow(objArr2);
            } else {
                matrixCursor2.addRow(new Object[]{m2232a});
            }
            return matrixCursor2;
        }
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Bundle call(String str, String str2, Bundle bundle) {
        Context context = getContext();
        String m2231cM = m2231cM(str);
        if (TextUtils.isEmpty(m2231cM)) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(m2231cM, 0);
        Bundle bundle2 = new Bundle();
        String string = bundle.getString("key");
        String string2 = bundle.getString("type");
        String string3 = bundle.getString("value");
        if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
            Map<String, ?> all = sharedPreferences.getAll();
            if (all != null && (all instanceof HashMap)) {
                bundle2.putSerializable("value", (HashMap) all);
            }
        } else {
            Object m2232a = m2232a(sharedPreferences, string, string2, string3);
            if (m2232a != null) {
                if (m2232a instanceof String) {
                    bundle2.putString("value", (String) m2232a);
                } else if (m2232a instanceof Integer) {
                    bundle2.putInt("value", ((Integer) m2232a).intValue());
                } else if (m2232a instanceof Boolean) {
                    bundle2.putBoolean("value", ((Boolean) m2232a).booleanValue());
                } else if (m2232a instanceof Float) {
                    bundle2.putFloat("value", ((Float) m2232a).floatValue());
                } else if (m2232a instanceof Long) {
                    bundle2.putLong("value", ((Long) m2232a).longValue());
                }
            }
        }
        return bundle2;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: a */
    public int mo2040a(Uri uri, ContentValues[] contentValuesArr) {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        boolean commit;
        Context context = getContext();
        if (context == null) {
            return 0;
        }
        String m2231cM = m2231cM(uri.toString());
        if (TextUtils.isEmpty(m2231cM)) {
            return 0;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(m2231cM, 0);
        if (contentValues != null) {
            Map<String, String> m2235c = C3608ss.m2235c(str, strArr);
            Set<Map.Entry<String, Object>> valueSet = contentValues.valueSet();
            if (valueSet == null || valueSet.size() < 1) {
                return 0;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            for (Map.Entry<String, Object> entry : valueSet) {
                if (entry != null) {
                    m2233a(edit, entry.getKey(), entry.getValue());
                }
            }
            if (m2235c.containsKey("option_is_by_apply") && "true".equals(m2235c.get("option_is_by_apply"))) {
                edit.apply();
                commit = true;
            } else {
                commit = edit.commit();
            }
            return commit ? 1 : 0;
        }
        return 0;
    }

    /* renamed from: a */
    private void m2233a(SharedPreferences.Editor editor, String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            editor.clear();
        } else if (obj == null) {
            editor.remove(str);
        } else if (obj instanceof String) {
            editor.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            editor.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editor.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Float) {
            editor.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) obj).booleanValue());
        }
    }
}
